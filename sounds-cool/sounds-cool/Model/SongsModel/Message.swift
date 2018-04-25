import Foundation

struct Message : Codable {
    
	let header : Header?
	let body : Body?

	enum CodingKeys: String, CodingKey {
        
		case header
		case body
	}

	init(from decoder: Decoder) throws {
        
		let values = try decoder.container(keyedBy: CodingKeys.self)
		header = try Header(from: decoder)
		body = try Body(from: decoder)
	}

}
