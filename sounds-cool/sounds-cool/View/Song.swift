import UIKit

struct Song {
    
    var id: String
    var title: String
    var artist: String
    var releaseYear: String
    var album: String?
    var albumImage: UIImage?
    
    init?(id: String, title: String, artist: String, releaseYear: String, album: String?, albumImage: UIImage?) {
        
        if id.isEmpty || title.isEmpty || artist.isEmpty || releaseYear.isEmpty {
            return nil
        }
        
        self.id = id
        self.title = title
        self.artist = artist
        self.releaseYear = releaseYear
        self.album = album
        self.albumImage = albumImage
    }
    
}
