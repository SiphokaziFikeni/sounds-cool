import Foundation

struct Body : Codable {
    
	let trackList : [TrackList]?

	enum CodingKeys: String, CodingKey {

		case trackList = "track_list"
	}

	init(from decoder: Decoder) throws {
        
		let values = try decoder.container(keyedBy: CodingKeys.self)
		trackList = try values.decodeIfPresent([TrackList].self, forKey: .trackList)
	}

}
