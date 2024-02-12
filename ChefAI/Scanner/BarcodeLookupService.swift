import Foundation

struct BarcodeLookupService {
    
    func fetchProductDetails(barcode: String, completion: @escaping (ProductClass?, String?) -> Void) {
        let urlString = "https://world.openfoodfacts.org/api/v2/product/\(barcode)?fields=product_name,nutriscore_data,nutriments,categories_tags_en"
       // let urlString = "https://world.openfoodfacts.org/api/v2/product/\(barcode)"
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

            guard let httpResponse = response as? HTTPURLResponse else {
                print("No HTTP response")
                completion(nil, "No HTTP response")
                return
            }

            if httpResponse.statusCode != 200 {
                print("HTTP Status Code: \(httpResponse.statusCode)")
                if let data = data, let responseBody = String(data: data, encoding: .utf8) {
                    print("Response body: \(responseBody)")
                    completion(nil, "Invalid response from server: Status code \(httpResponse.statusCode) - \(responseBody)")
                } else {
                    completion(nil, "Invalid response from server: Status code \(httpResponse.statusCode)")
                }
                return
            }

            guard let data = data else {
                print("No data received")
                completion(nil, "No data received")
                return
            }

            do {
                let dataString = String(decoding: data, as: UTF8.self)
                //print(dataString)
                
                let product = try JSONDecoder().decode(Product.self, from: data)
                if product.status == 1 {
                    //completion(product.product, nil)
                    if let product = product.product {
                        print("Product Name: \(product.productName)")
                        completion(product, nil)
                    } else {
                        print("Product not found")
                    }
                } else {
                    //completion(nil, product.statusVerbose)
                    print("Fail")
                }
            } catch {
                print("Decoding error: \(error)")
                completion(nil, "Decoding error: \(error.localizedDescription)")
            }
        }
        task.resume()
    }
}
