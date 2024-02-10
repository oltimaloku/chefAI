//
//  Product.swift
//  ChefAI
//
//  Created by Olti Maloku on 2024-02-09.
//

import Foundation

// MARK: - Item
struct Item: Codable {
    let code: String
    let product: Product
    let status: Int
    let statusVerbose: String

    enum CodingKeys: String, CodingKey {
        case code, product, status
        case statusVerbose = "status_verbose"
    }
}

// MARK: - Product
struct Product: Codable {
    let id: String
    let keywords: [String]
    let addedCountriesTags, additivesOldTags, additivesOriginalTags, additivesTags: [JSONAny]
    let allergens, allergensFromIngredients, allergensFromUser: String
    let allergensHierarchy, allergensTags, aminoAcidsTags: [JSONAny]
    let categoriesProperties: CategoriesProperties
    let categoriesPropertiesTags: [String]
    let categoryProperties: CategoriesProperties
    let checkersTags: [JSONAny]
    let ciqualFoodNameTags: [String]
    let code: String
    let codesTags: [String]
    let complete: Int
    let completeness: Double
    let correctorsTags: [JSONAny]
    let countries: String
    let countriesHierarchy, countriesTags: [String]
    let createdT: Int
    let creator: String
    let dataQualityBugsTags, dataQualityErrorsTags: [JSONAny]
    let dataQualityInfoTags, dataQualityTags, dataQualityWarningsTags: [String]
    let dataSources: String
    let dataSourcesTags: [String]
    let ecoscoreData: EcoscoreData
    let ecoscoreGrade: String
    let ecoscoreTags, editorsTags, entryDatesTags: [String]
    let foodGroupsTags: [JSONAny]
    let productID: String
    let informersTags: [String]
    let ingredientsFromPalmOilTags, ingredientsThatMayBeFromPalmOilTags: [JSONAny]
    let interfaceVersionCreated, interfaceVersionModified, lang: String
    let languages: Languages
    let languagesCodes: LanguagesCodes
    let languagesHierarchy, languagesTags, lastEditDatesTags: [String]
    let lastEditor, lastModifiedBy: String
    let lastModifiedT, lastUpdatedT: Int
    let lc: String
    let mainCountriesTags, mineralsTags: [JSONAny]
    let miscTags: [String]
    let novaGroupDebug, novaGroupError: String
    let novaGroupsTags: [String]
    let nucleotidesTags: [JSONAny]
    let nutrientLevels: CategoriesProperties
    let nutrientLevelsTags: [JSONAny]
    let nutriments: Nutriments
    let nutriscore: [String: Nutriscore]
    let nutriscore2021_Tags, nutriscore2023_Tags: [String]
    let nutriscoreGrade: String
    let nutriscoreTags: [String]
    let nutriscoreVersion, nutritionDataPer, nutritionDataPreparedPer, nutritionGradeFr: String
    let nutritionGrades: String
    let nutritionGradesTags: [String]
    let nutritionScoreBeverage: Int
    let nutritionScoreDebug: String
    let nutritionScoreWarningNoFiber, nutritionScoreWarningNoFruitsVegetablesNuts: Int
    let otherNutritionalSubstancesTags, packagingMaterialsTags, packagingRecyclingTags, packagingShapesTags: [JSONAny]
    let packagings: [JSONAny]
    let packagingsMaterials: CategoriesProperties
    let photographersTags: [JSONAny]
    let pnnsGroups1: String
    let pnnsGroups1_Tags: [String]
    let pnnsGroups2: String
    let pnnsGroups2_Tags: [String]
    let popularityKey: Int
    let productName, productNameFr: String
    let removedCountriesTags: [JSONAny]
    let rev, sortkey: Int
    let states: String
    let statesHierarchy, statesTags: [String]
    let traces, tracesFromIngredients, tracesFromUser: String
    let tracesHierarchy, tracesTags, unknownNutrientsTags: [JSONAny]
    let updateKey: String
    let vitaminsTags: [JSONAny]

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case keywords = "_keywords"
        case addedCountriesTags = "added_countries_tags"
        case additivesOldTags = "additives_old_tags"
        case additivesOriginalTags = "additives_original_tags"
        case additivesTags = "additives_tags"
        case allergens
        case allergensFromIngredients = "allergens_from_ingredients"
        case allergensFromUser = "allergens_from_user"
        case allergensHierarchy = "allergens_hierarchy"
        case allergensTags = "allergens_tags"
        case aminoAcidsTags = "amino_acids_tags"
        case categoriesProperties = "categories_properties"
        case categoriesPropertiesTags = "categories_properties_tags"
        case categoryProperties = "category_properties"
        case checkersTags = "checkers_tags"
        case ciqualFoodNameTags = "ciqual_food_name_tags"
        case code
        case codesTags = "codes_tags"
        case complete, completeness
        case correctorsTags = "correctors_tags"
        case countries
        case countriesHierarchy = "countries_hierarchy"
        case countriesTags = "countries_tags"
        case createdT = "created_t"
        case creator
        case dataQualityBugsTags = "data_quality_bugs_tags"
        case dataQualityErrorsTags = "data_quality_errors_tags"
        case dataQualityInfoTags = "data_quality_info_tags"
        case dataQualityTags = "data_quality_tags"
        case dataQualityWarningsTags = "data_quality_warnings_tags"
        case dataSources = "data_sources"
        case dataSourcesTags = "data_sources_tags"
        case ecoscoreData = "ecoscore_data"
        case ecoscoreGrade = "ecoscore_grade"
        case ecoscoreTags = "ecoscore_tags"
        case editorsTags = "editors_tags"
        case entryDatesTags = "entry_dates_tags"
        case foodGroupsTags = "food_groups_tags"
        case productID = "id"
        case informersTags = "informers_tags"
        case ingredientsFromPalmOilTags = "ingredients_from_palm_oil_tags"
        case ingredientsThatMayBeFromPalmOilTags = "ingredients_that_may_be_from_palm_oil_tags"
        case interfaceVersionCreated = "interface_version_created"
        case interfaceVersionModified = "interface_version_modified"
        case lang, languages
        case languagesCodes = "languages_codes"
        case languagesHierarchy = "languages_hierarchy"
        case languagesTags = "languages_tags"
        case lastEditDatesTags = "last_edit_dates_tags"
        case lastEditor = "last_editor"
        case lastModifiedBy = "last_modified_by"
        case lastModifiedT = "last_modified_t"
        case lastUpdatedT = "last_updated_t"
        case lc
        case mainCountriesTags = "main_countries_tags"
        case mineralsTags = "minerals_tags"
        case miscTags = "misc_tags"
        case novaGroupDebug = "nova_group_debug"
        case novaGroupError = "nova_group_error"
        case novaGroupsTags = "nova_groups_tags"
        case nucleotidesTags = "nucleotides_tags"
        case nutrientLevels = "nutrient_levels"
        case nutrientLevelsTags = "nutrient_levels_tags"
        case nutriments, nutriscore
        case nutriscore2021_Tags = "nutriscore_2021_tags"
        case nutriscore2023_Tags = "nutriscore_2023_tags"
        case nutriscoreGrade = "nutriscore_grade"
        case nutriscoreTags = "nutriscore_tags"
        case nutriscoreVersion = "nutriscore_version"
        case nutritionDataPer = "nutrition_data_per"
        case nutritionDataPreparedPer = "nutrition_data_prepared_per"
        case nutritionGradeFr = "nutrition_grade_fr"
        case nutritionGrades = "nutrition_grades"
        case nutritionGradesTags = "nutrition_grades_tags"
        case nutritionScoreBeverage = "nutrition_score_beverage"
        case nutritionScoreDebug = "nutrition_score_debug"
        case nutritionScoreWarningNoFiber = "nutrition_score_warning_no_fiber"
        case nutritionScoreWarningNoFruitsVegetablesNuts = "nutrition_score_warning_no_fruits_vegetables_nuts"
        case otherNutritionalSubstancesTags = "other_nutritional_substances_tags"
        case packagingMaterialsTags = "packaging_materials_tags"
        case packagingRecyclingTags = "packaging_recycling_tags"
        case packagingShapesTags = "packaging_shapes_tags"
        case packagings
        case packagingsMaterials = "packagings_materials"
        case photographersTags = "photographers_tags"
        case pnnsGroups1 = "pnns_groups_1"
        case pnnsGroups1_Tags = "pnns_groups_1_tags"
        case pnnsGroups2 = "pnns_groups_2"
        case pnnsGroups2_Tags = "pnns_groups_2_tags"
        case popularityKey = "popularity_key"
        case productName = "product_name"
        case productNameFr = "product_name_fr"
        case removedCountriesTags = "removed_countries_tags"
        case rev, sortkey, states
        case statesHierarchy = "states_hierarchy"
        case statesTags = "states_tags"
        case traces
        case tracesFromIngredients = "traces_from_ingredients"
        case tracesFromUser = "traces_from_user"
        case tracesHierarchy = "traces_hierarchy"
        case tracesTags = "traces_tags"
        case unknownNutrientsTags = "unknown_nutrients_tags"
        case updateKey = "update_key"
        case vitaminsTags = "vitamins_tags"
    }
    func debugDescription() -> String {
            var description = "Product Details:\n"
            description += "ID: \(self.id)\n"
            description += "Name: \(self.productName)\n"
            description += "Categories: \(self.categoriesPropertiesTags.joined(separator: ", "))\n"
            // Add more fields as needed
            return description
        }
}

// MARK: - CategoriesProperties
struct CategoriesProperties: Codable {
}

// MARK: - EcoscoreData
struct EcoscoreData: Codable {
    let adjustments: Adjustments
    let agribalyse: Agribalyse
    let missing: Missing
    let missingAgribalyseMatchWarning, missingKeyData: Int
    let scores: CategoriesProperties
    let status: String

    enum CodingKeys: String, CodingKey {
        case adjustments, agribalyse, missing
        case missingAgribalyseMatchWarning = "missing_agribalyse_match_warning"
        case missingKeyData = "missing_key_data"
        case scores, status
    }
}

// MARK: - Adjustments
struct Adjustments: Codable {
    let originsOfIngredients: OriginsOfIngredients
    let packaging: Packaging
    let productionSystem: ProductionSystem
    let threatenedSpecies: Agribalyse

    enum CodingKeys: String, CodingKey {
        case originsOfIngredients = "origins_of_ingredients"
        case packaging
        case productionSystem = "production_system"
        case threatenedSpecies = "threatened_species"
    }
}

// MARK: - OriginsOfIngredients
struct OriginsOfIngredients: Codable {
    let aggregatedOrigins: [AggregatedOrigin]
    let epiScore, epiValue: Int
    let originsFromOriginsField: [String]
    let transportationScore: Int
    let transportationScores: [String: Int]
    let transportationValue: Int
    let transportationValues: [String: Int]
    let value: Int
    let values: [String: Int]
    let warning: String

    enum CodingKeys: String, CodingKey {
        case aggregatedOrigins = "aggregated_origins"
        case epiScore = "epi_score"
        case epiValue = "epi_value"
        case originsFromOriginsField = "origins_from_origins_field"
        case transportationScore = "transportation_score"
        case transportationScores = "transportation_scores"
        case transportationValue = "transportation_value"
        case transportationValues = "transportation_values"
        case value, values, warning
    }
}

// MARK: - AggregatedOrigin
struct AggregatedOrigin: Codable {
    let epiScore, origin: String
    let percent: Int
    let transportationScore: JSONNull?

    enum CodingKeys: String, CodingKey {
        case epiScore = "epi_score"
        case origin, percent
        case transportationScore = "transportation_score"
    }
}

// MARK: - Packaging
struct Packaging: Codable {
    let nonRecyclableAndNonBiodegradableMaterials, value: Int
    let warning: String

    enum CodingKeys: String, CodingKey {
        case nonRecyclableAndNonBiodegradableMaterials = "non_recyclable_and_non_biodegradable_materials"
        case value, warning
    }
}

// MARK: - ProductionSystem
struct ProductionSystem: Codable {
    let labels: [JSONAny]
    let value: Int
    let warning: String
}

// MARK: - Agribalyse
struct Agribalyse: Codable {
    let warning: String
}

// MARK: - Missing
struct Missing: Codable {
    let categories, ingredients, labels, origins: Int
    let packagings: Int
}

// MARK: - Languages
struct Languages: Codable {
    let enFrench: Int

    enum CodingKeys: String, CodingKey {
        case enFrench = "en:french"
    }
}

// MARK: - LanguagesCodes
struct LanguagesCodes: Codable {
    let fr: Int
}

// MARK: - Nutriments
struct Nutriments: Codable {
    let energy, energyKcal, energyKcal100G: Int
    let energyKcalUnit: String
    let energyKcalValue, energy100G: Int
    let energyUnit: String
    let energyValue, salt, salt100G: Int
    let saltUnit: String
    let saltValue, sodium, sodium100G: Int
    let sodiumUnit: String
    let sodiumValue: Int

    enum CodingKeys: String, CodingKey {
        case energy
        case energyKcal = "energy-kcal"
        case energyKcal100G = "energy-kcal_100g"
        case energyKcalUnit = "energy-kcal_unit"
        case energyKcalValue = "energy-kcal_value"
        case energy100G = "energy_100g"
        case energyUnit = "energy_unit"
        case energyValue = "energy_value"
        case salt
        case salt100G = "salt_100g"
        case saltUnit = "salt_unit"
        case saltValue = "salt_value"
        case sodium
        case sodium100G = "sodium_100g"
        case sodiumUnit = "sodium_unit"
        case sodiumValue = "sodium_value"
    }
}

// MARK: - Nutriscore
struct Nutriscore: Codable {
    let categoryAvailable: Int
    let data: [String: Int?]
    let grade: String
    let nutrientsAvailable, nutriscoreApplicable, nutriscoreComputed: Int

    enum CodingKeys: String, CodingKey {
        case categoryAvailable = "category_available"
        case data, grade
        case nutrientsAvailable = "nutrients_available"
        case nutriscoreApplicable = "nutriscore_applicable"
        case nutriscoreComputed = "nutriscore_computed"
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }
    

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}

