import Foundation

struct MusicGenreList : Codable {
    
	let musicGenre : MusicGenre?

	enum CodingKeys: String, CodingKey {

		case musicGenre = "music_genre"
	}

	init(from decoder: Decoder) throws {
        
		let values = try decoder.container(keyedBy: CodingKeys.self)
		musicGenre = try MusicGenre(from: decoder)
	}

}
