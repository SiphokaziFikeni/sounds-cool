import Foundation

struct BaseJsonResponse : Codable {
    
	let message : Message?

	enum CodingKeys: String, CodingKey {

		case message
	}

	init(from decoder: Decoder) throws {
        
		let values = try decoder.container(keyedBy: CodingKeys.self)
		message = try Message(from: decoder)
	}

}
