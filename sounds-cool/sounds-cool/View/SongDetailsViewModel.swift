import Foundation
import UIKit

class SongDetailsViewModel {
    
    private var song: SongDetails
    
    var id: String {
        return song.id
    }
    
    var title: String {
        return song.title
    }
    
    var artist: String {
        return song.artist
    }
    
    var releaseYear: String {
        return song.releaseYear
    }
    
    var album: String? {
        return song.album
    }
    
    var recordLabel: String {
        return song.recordLabel
    }
    
    var producer: String {
        return song.producer
    }
    
    var lyrics: String? {
        return song.lyrics
    }
    
    var albumImage: UIImage? {
        return song.albumImage
    }
    
    init(song: SongDetails) {
        self.song = song
    }
}
