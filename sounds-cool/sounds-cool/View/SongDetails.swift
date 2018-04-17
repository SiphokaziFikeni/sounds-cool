import UIKit

class SongDetails {
    
    var id: String
    var title: String
    var artist: String
    var releaseYear: String
    var album: String?
    var recordLabel: String
    var producer: String
    var lyrics: String?
    var albumImage: UIImage?
    
    init?(id: String, title: String, artist: String, releaseYear: String, album: String?, recordLabel: String, producer: String, lyrics: String?, albumImage: UIImage?) {
       
        if id.isEmpty || title.isEmpty || artist.isEmpty || releaseYear.isEmpty || recordLabel.isEmpty || producer.isEmpty {
            return nil
        }
        
        self.id = id
        self.title = title
        self.artist = artist
        self.releaseYear = releaseYear
        self.album = album
        self.recordLabel = recordLabel
        self.producer = producer
        self.lyrics = lyrics
        self.albumImage = albumImage
    }
       
}
