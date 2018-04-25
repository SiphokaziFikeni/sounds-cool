import Foundation

struct MusicGenre : Codable {
    
	let musicGenreVanity : String?
	let musicGenreNameExtended : String?
	let musicGenreName : String?
	let musicGenreParentId : Int?
	let musicGenreId : Int?

	enum CodingKeys: String, CodingKey {

		case musicGenreVanity = "music_genre_vanity"
		case musicGenreNameExtended = "music_genre_name_extended"
		case musicGenreName = "music_genre_name"
		case musicGenreParentId = "music_genre_parent_id"
		case musicGenreId = "music_genre_id"
	}

	init(from decoder: Decoder) throws {
        
		let values = try decoder.container(keyedBy: CodingKeys.self)
		musicGenreVanity = try values.decodeIfPresent(String.self, forKey: .musicGenreVanity)
		musicGenreNameExtended = try values.decodeIfPresent(String.self, forKey: .musicGenreNameExtended)
		musicGenreName = try values.decodeIfPresent(String.self, forKey: .musicGenreName)
		musicGenreParentId = try values.decodeIfPresent(Int.self, forKey: .musicGenreParentId)
		musicGenreId = try values.decodeIfPresent(Int.self, forKey: .musicGenreId)
	}

}
