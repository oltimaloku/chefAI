import Foundation

struct BarcodeLookupService {
    
    func fetchProductDetails(barcode: String, completion: @escaping (Product?, String?) -> Void) {
        let urlString = "https://world.openfoodfacts.net/api/v2/product/\(barcode)?fields=product_name,nutriscore_data"
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            completion(nil, "Invalid URL")
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error)")
                completion(nil, "Error fetching product details: \(error.localizedDescription)")
                return
            }

            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let data = data else {
                print("Invalid response from server or no data")
                completion(nil, "Invalid response from server or no data")
                return
            }

            do {
                let dataString = String(decoding: data, as: UTF8.self)
                                    print(dataString)
                let decoder = JSONDecoder()
                let item = try decoder.decode(Item.self, from: data)
                if item.status == 1 {
                    completion(item.product, nil)
                    print(item.product.debugDescription())
                } else {
                    completion(nil, item.statusVerbose)
                }
            } catch {
                print("Decoding error: \(error)")
                completion(nil, "Decoding error: \(error.localizedDescription)")
            }
        }
        task.resume()
    }
}
