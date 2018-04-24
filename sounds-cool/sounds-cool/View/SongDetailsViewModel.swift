import Foundation
import UIKit

class SongDetailsViewModel {
    
    var song: Song
    let songsListRepo = SongsRepositoryImpl()
    
    init(songId: String) {
        
        self.song = songsListRepo.getSongDetails(songId: songId)!
    }
    
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
    
    
}
