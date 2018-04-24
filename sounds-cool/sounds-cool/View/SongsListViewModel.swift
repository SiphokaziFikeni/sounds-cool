import Foundation

class SongListViewModel {
    
    let songsListRepo = SongsRepositoryImpl()
    var songsList: [Song]
    
    init() {
        self.songsList = songsListRepo.getAllSongs()
    }
    
    func getSongsList() -> [Song] {
        return songsList
    }
    
    func getNumberOfSongs() -> Int {
        return songsList.count
    }
    
}
