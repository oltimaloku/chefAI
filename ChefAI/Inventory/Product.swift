import Foundation

// MARK: - Product
struct Product: Codable {
    let code: String
    let product: ProductClass?
    let status: Int
    let statusVerbose: String?

    enum CodingKeys: String, CodingKey {
        case code, product, status
        case statusVerbose = "status_verbose"
    }
}

// MARK: - ProductClass
struct ProductClass: Codable {
    let categoriesTagsEn: [String]?
    let nutriments: Nutriments?
    let nutriscoreData: NutriscoreData?
    let productName: String?

    enum CodingKeys: String, CodingKey {
        case categoriesTagsEn = "categories_tags_en"
        case nutriments
        case nutriscoreData = "nutriscore_data"
        case productName = "product_name"
    }
}

// MARK: - Nutriments
struct Nutriments: Codable {
    let carbohydrates, carbohydrates100G: Double?
    let carbohydratesUnit: String?
    let carbohydratesValue: Double?
    let energy: Int?
    let energyKcal, energyKcal100G: Double?
    let energyKcalUnit: String?
    let energyKcalValue, energyKcalValueComputed: Double?
    let energy100G: Int?
    let energyUnit: String?
    let energyValue, fat, fat100G: Double?
    let fatUnit: String?
    let fatValue: Double?
    let fruitsVegetablesLegumesEstimateFromIngredients100G, fruitsVegetablesLegumesEstimateFromIngredientsServing: Int?
    let fruitsVegetablesNutsEstimateFromIngredients100G, fruitsVegetablesNutsEstimateFromIngredientsServing: Double?
    let novaGroup, novaGroup100G, novaGroupServing, nutritionScoreFr: Int?
    let nutritionScoreFr100G: Int?
    let proteins, proteins100G: Double?
    let proteinsUnit: String?
    let proteinsValue, salt, salt100G: Double?
    let saltUnit: String?
    let saltValue, saturatedFat, saturatedFat100G: Double?
    let saturatedFatUnit: String?
    let saturatedFatValue, sodium, sodium100G: Double?
    let sodiumUnit: String?
    let sodiumValue, sugars, sugars100G: Double?
    let sugarsUnit: String?
    let sugarsValue: Double?

    enum CodingKeys: String, CodingKey {
        case carbohydrates
        case carbohydrates100G = "carbohydrates_100g"
        case carbohydratesUnit = "carbohydrates_unit"
        case carbohydratesValue = "carbohydrates_value"
        case energy
        case energyKcal = "energy-kcal"
        case energyKcal100G = "energy-kcal_100g"
        case energyKcalUnit = "energy-kcal_unit"
        case energyKcalValue = "energy-kcal_value"
        case energyKcalValueComputed = "energy-kcal_value_computed"
        case energy100G = "energy_100g"
        case energyUnit = "energy_unit"
        case energyValue = "energy_value"
        case fat
        case fat100G = "fat_100g"
        case fatUnit = "fat_unit"
        case fatValue = "fat_value"
        case fruitsVegetablesLegumesEstimateFromIngredients100G = "fruits-vegetables-legumes-estimate-from-ingredients_100g"
        case fruitsVegetablesLegumesEstimateFromIngredientsServing = "fruits-vegetables-legumes-estimate-from-ingredients_serving"
        case fruitsVegetablesNutsEstimateFromIngredients100G = "fruits-vegetables-nuts-estimate-from-ingredients_100g"
        case fruitsVegetablesNutsEstimateFromIngredientsServing = "fruits-vegetables-nuts-estimate-from-ingredients_serving"
        case novaGroup = "nova-group"
        case novaGroup100G = "nova-group_100g"
        case novaGroupServing = "nova-group_serving"
        case nutritionScoreFr = "nutrition-score-fr"
        case nutritionScoreFr100G = "nutrition-score-fr_100g"
        case proteins
        case proteins100G = "proteins_100g"
        case proteinsUnit = "proteins_unit"
        case proteinsValue = "proteins_value"
        case salt
        case salt100G = "salt_100g"
        case saltUnit = "salt_unit"
        case saltValue = "salt_value"
        case saturatedFat = "saturated-fat"
        case saturatedFat100G = "saturated-fat_100g"
        case saturatedFatUnit = "saturated-fat_unit"
        case saturatedFatValue = "saturated-fat_value"
        case sodium
        case sodium100G = "sodium_100g"
        case sodiumUnit = "sodium_unit"
        case sodiumValue = "sodium_value"
        case sugars
        case sugars100G = "sugars_100g"
        case sugarsUnit = "sugars_unit"
        case sugarsValue = "sugars_value"
    }
}

// MARK: - NutriscoreData
struct NutriscoreData: Codable {
    let energy, energyPoints, energyValue, fiber: Int?
    let fiberPoints, fiberValue: Int?
    let fruitsVegetablesNutsColzaWalnutOliveOils: Double?
    let fruitsVegetablesNutsColzaWalnutOliveOilsPoints: Int?
    let fruitsVegetablesNutsColzaWalnutOliveOilsValue: Double?
    let grade: String?
    let isBeverage, isCheese, isFat, isWater: Int?
    let negativePoints, positivePoints: Int?
    let proteins: Double?
    let proteinsPoints: Int?
    let proteinsValue, saturatedFat: Double?
    let saturatedFatPoints: Int?
    let saturatedFatValue: Double?
    let score, sodium, sodiumPoints, sodiumValue: Int?
    let sugars: Double?
    let sugarsPoints: Int?
    let sugarsValue: Double?

    enum CodingKeys: String, CodingKey {
        case energy
        case energyPoints = "energy_points"
        case energyValue = "energy_value"
        case fiber
        case fiberPoints = "fiber_points"
        case fiberValue = "fiber_value"
        case fruitsVegetablesNutsColzaWalnutOliveOils = "fruits_vegetables_nuts_colza_walnut_olive_oils"
        case fruitsVegetablesNutsColzaWalnutOliveOilsPoints = "fruits_vegetables_nuts_colza_walnut_olive_oils_points"
        case fruitsVegetablesNutsColzaWalnutOliveOilsValue = "fruits_vegetables_nuts_colza_walnut_olive_oils_value"
        case grade
        case isBeverage = "is_beverage"
        case isCheese = "is_cheese"
        case isFat = "is_fat"
        case isWater = "is_water"
        case negativePoints = "negative_points"
        case positivePoints = "positive_points"
        case proteins
        case proteinsPoints = "proteins_points"
        case proteinsValue = "proteins_value"
        case saturatedFat = "saturated_fat"
        case saturatedFatPoints = "saturated_fat_points"
        case saturatedFatValue = "saturated_fat_value"
        case score, sodium
        case sodiumPoints = "sodium_points"
        case sodiumValue = "sodium_value"
        case sugars
        case sugarsPoints = "sugars_points"
        case sugarsValue = "sugars_value"
    }
}
