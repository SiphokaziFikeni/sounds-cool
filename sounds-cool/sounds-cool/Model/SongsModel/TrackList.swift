import Foundation

struct TrackList : Codable {
    
	let track : Track?

	enum CodingKeys: String, CodingKey {

		case track
	}

	init(from decoder: Decoder) throws {
        
		let values = try decoder.container(keyedBy: CodingKeys.self)
		track = try Track(from: decoder)
	}

}
