import Foundation

struct Header : Codable {
    
	let available : Int?
	let statusCode : Int?
	let executeTime : Int?

	enum CodingKeys: String, CodingKey {
        
		case available = "available"
		case statusCode = "status_code"
		case executeTime = "execute_time"
	}

	init(from decoder: Decoder) throws {
        
		let values = try decoder.container(keyedBy: CodingKeys.self)
		available = try values.decodeIfPresent(Int.self, forKey: .available)
		statusCode = try values.decodeIfPresent(Int.self, forKey: .statusCode)
		executeTime = try values.decodeIfPresent(Int.self, forKey: .executeTime)
	}

}
