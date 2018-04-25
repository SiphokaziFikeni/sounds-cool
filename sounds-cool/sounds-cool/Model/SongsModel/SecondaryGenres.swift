import Foundation

struct SecondaryGenres : Codable {
    
	let musicGenreList : [MusicGenreList]?

	enum CodingKeys: String, CodingKey {

		case musicGenreList = "music_genre_list"
	}

	init(from decoder: Decoder) throws {
        
		let values = try decoder.container(keyedBy: CodingKeys.self)
		musicGenreList = try values.decodeIfPresent([MusicGenreList].self, forKey: .musicGenreList)
	}

}
