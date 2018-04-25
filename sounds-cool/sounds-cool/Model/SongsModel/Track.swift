import Foundation

struct Track : Codable {
    
	let instrumental : Int?
	let albumCoverArt350x350 : String?
	let firstReleaseDate : String?
	let trackIsRc : String?
	let explicit : Int?
	let trackEditUrl : String?
	let numFavourite : Int?
	let albumCoverArt500x500 : String?
	let albumName : String?
	let trackRating : Int?
	let trackShareUrl : String?
	let trackSoundcloudId : Int?
	let artistName : String?
	let albumCoverArt800x800 : String?
	let albumCoverArt100x100 : String?
	let trackNameTranslationList : [String]?
	let trackName : String?
	let restricted : Int?
	let hasSubtitles : Int?
	let updatedTime : String?
	let subtitleId : Int?
	let lyricsId : Int?
	let trackSpotifyId : String?
	let hasLyrics : Int?
	let artistId : Int?
	let albumId : Int?
	let artistMbid : String?
	let secondaryGenres : SecondaryGenres?
	let commontrackVanityId : String?
	let trackId : Int?
	let trackXboxMusicId : String?
	let primaryGenres : PrimaryGenres?
	let trackLength : Int?
	let trackMbid : String?
	let commontrackId : Int?

	enum CodingKeys: String, CodingKey {

		case instrumental = "instrumental"
		case albumCoverArt350x350 = "album_coverart_350x350"
		case firstReleaseDate = "first_release_date"
		case trackIsRc = "track_isrc"
		case explicit = "explicit"
		case trackEditUrl = "track_edit_url"
		case numFavourite = "num_favourite"
		case albumCoverArt500x500 = "album_coverart_500x500"
		case albumName = "album_name"
		case trackRating = "track_rating"
		case trackShareUrl = "track_share_url"
		case trackSoundcloudId = "track_soundcloud_id"
		case artistName = "artist_name"
		case albumCoverArt800x800 = "album_coverart_800x800"
		case albumCoverArt100x100 = "album_coverart_100x100"
		case trackNameTranslationList = "track_name_translation_list"
		case trackName = "track_name"
		case restricted = "restricted"
		case hasSubtitles = "has_subtitles"
		case updatedTime = "updated_time"
		case subtitleId = "subtitle_id"
		case lyricsId = "lyrics_id"
		case trackSpotifyId = "track_spotify_id"
		case hasLyrics = "has_lyrics"
		case artistId = "artist_id"
		case albumId = "album_id"
		case artistMbid = "artist_mbid"
		case secondaryGenres = "secondary_genres"
		case commontrackVanityId = "commontrack_vanity_id"
		case trackId = "track_id"
		case trackXboxMusicId = "track_xboxmusic_id"
		case primaryGenres = "primary_genres"
		case trackLength = "track_length"
		case trackMbid = "track_mbid"
		case commontrackId = "commontrack_id"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		instrumental = try values.decodeIfPresent(Int.self, forKey: .instrumental)
		albumCoverArt350x350 = try values.decodeIfPresent(String.self, forKey: .albumCoverArt350x350)
		firstReleaseDate = try values.decodeIfPresent(String.self, forKey: .firstReleaseDate)
		trackIsRc = try values.decodeIfPresent(String.self, forKey: .trackIsRc)
		explicit = try values.decodeIfPresent(Int.self, forKey: .explicit)
		trackEditUrl = try values.decodeIfPresent(String.self, forKey: .trackEditUrl)
		numFavourite = try values.decodeIfPresent(Int.self, forKey: .numFavourite)
		albumCoverArt500x500 = try values.decodeIfPresent(String.self, forKey: .albumCoverArt500x500)
		albumName = try values.decodeIfPresent(String.self, forKey: .albumName)
		trackRating = try values.decodeIfPresent(Int.self, forKey: .trackRating)
		trackShareUrl = try values.decodeIfPresent(String.self, forKey: .trackShareUrl)
		trackSoundcloudId = try values.decodeIfPresent(Int.self, forKey: .trackSoundcloudId)
		artistName = try values.decodeIfPresent(String.self, forKey: .artistName)
		albumCoverArt800x800 = try values.decodeIfPresent(String.self, forKey: .albumCoverArt800x800)
		albumCoverArt100x100 = try values.decodeIfPresent(String.self, forKey: .albumCoverArt100x100)
		trackNameTranslationList = try values.decodeIfPresent([String].self, forKey: .trackNameTranslationList)
		trackName = try values.decodeIfPresent(String.self, forKey: .trackName)
		restricted = try values.decodeIfPresent(Int.self, forKey: .restricted)
		hasSubtitles = try values.decodeIfPresent(Int.self, forKey: .hasSubtitles)
		updatedTime = try values.decodeIfPresent(String.self, forKey: .updatedTime)
		subtitleId = try values.decodeIfPresent(Int.self, forKey: .subtitleId)
		lyricsId = try values.decodeIfPresent(Int.self, forKey: .lyricsId)
		trackSpotifyId = try values.decodeIfPresent(String.self, forKey: .trackSpotifyId)
		hasLyrics = try values.decodeIfPresent(Int.self, forKey: .hasLyrics)
		artistId = try values.decodeIfPresent(Int.self, forKey: .artistId)
		albumId = try values.decodeIfPresent(Int.self, forKey: .albumId)
		artistMbid = try values.decodeIfPresent(String.self, forKey: .artistMbid)
		secondaryGenres = try SecondaryGenres(from: decoder)
		commontrackVanityId = try values.decodeIfPresent(String.self, forKey: .commontrackVanityId)
		trackId = try values.decodeIfPresent(Int.self, forKey: .trackId)
		trackXboxMusicId = try values.decodeIfPresent(String.self, forKey: .trackXboxMusicId)
		primaryGenres = try PrimaryGenres(from: decoder)
		trackLength = try values.decodeIfPresent(Int.self, forKey: .trackLength)
		trackMbid = try values.decodeIfPresent(String.self, forKey: .trackMbid)
		commontrackId = try values.decodeIfPresent(Int.self, forKey: .commontrackId)
	}

}
