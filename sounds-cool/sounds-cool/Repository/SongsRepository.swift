import Foundation
import UIKit

protocol SongsRepository {
    
    func getAllSongs() -> [Song]
    
    func getSongDetails(songId: String) -> Song?
}

struct SongsRepositoryImpl: SongsRepository {
    
    var songsList: [Song] = []
    var songDetails: Song? = nil
    let dummyLyrics: String =  """
                                Round the city
                                Round the clock
                                Everybody needs you
                                No you can't make everybody equal
                                Although you got beaucoup family
                                You don't even got nobody being honest with you
                                Breath till I evaporated
                                My whole body see through
                                Transportation, handmade
                                And I know it better than most people
                                I don't trust them anyways
                                You can't break the law with them
                                Get some pussy have a calm night
                                Shooters killing left and right
                                Working through your worst night
                                If I get my money right
                                You know I won't need you
                                And I tell you, (bitch)
                                I hope the sack is full up
                                I'm fuckin', no I'm fucked up
                                Spend it when I get that
                                I ain't trying to keep you
                                Can't keep up a conversation
                                Can't nobody reach you
                                Why your eyes well up
                                Did you call me from a seance
                                You are from a past life
                                Hope you're…
                               """
    
    init() {
        
        songsList.append(Song(id: "01", title: "Presly", artist: "Elvis Presley", releaseYear: "1965", album: "Elvis Presley", recordLabel: "RCA Victor", producer: "Victor", lyrics: dummyLyrics, albumImage: UIImage(named: "elvis"))!)
        songsList.append(Song(id: "02", title: "Ziggy Stardust", artist: "David Bowie", releaseYear: "1973", album: "Aladdin Sane", recordLabel: "Emirates", producer: "Biran Duggy", lyrics: dummyLyrics, albumImage: UIImage(named: "bowie"))!)
        songsList.append(Song(id: "03", title: "Yellow", artist: "The Beatles", releaseYear: "1967", album: "SGt Peppers's lonely hearts Club band", recordLabel: "Beat land", producer: "Paul McCartney", lyrics: dummyLyrics, albumImage: UIImage(named: "beatles"))!)
        songsList.append(Song(id: "04", title: "Fleetwood working", artist: "Fleetwood Mac", releaseYear: "1977", album: "Rumours", recordLabel: "Rhiannon", producer: "Stevie Nicks", lyrics: dummyLyrics, albumImage: UIImage(named: "fleetwood"))!)
        songsList.append(Song(id: "05", title: "Triumarite", artist: "Pink Floyd", releaseYear: "1973", album: "The dark side of the moon", recordLabel: "Respectra", producer: "George Hardie", lyrics: dummyLyrics, albumImage: UIImage(named: "floyd"))!)
        songsList.append(Song(id: "06", title: "Purple Rain", artist: "Prince", releaseYear: "1984", album: "Purple Rain", recordLabel: "Love Symbol", producer: "Ed Thrasher", lyrics: dummyLyrics, albumImage: UIImage(named: "purple"))!)
        songsList.append(Song(id: "07", title: "On Her majesty secret service", artist: "Roxy Music", releaseYear: "1972", album: "Roxy Music", recordLabel: "Chirs Jagger", producer: "Dean Roger", lyrics: dummyLyrics, albumImage: UIImage(named: "roxy"))!)
        songsList.append(Song(id: "08", title: "Peel slowly and See", artist: "The Velvet Underground & Nico", releaseYear: "1967", album: "The Velvet Underground & Nico", recordLabel: "Banana Republic", producer: "Andy Warhol", lyrics: dummyLyrics, albumImage: UIImage(named: "velvet"))!)
        songsList.append(Song(id: "09", title: "Man's Life", artist: "Frank Zappa", releaseYear: "1975", album: "Weasels reaped my flesh", recordLabel: "Electric Razor", producer: "Neon Park", lyrics: dummyLyrics, albumImage: UIImage(named: "zappa"))!)
        songsList.append(Song(id: "10", title: "Northern Ireland", artist: "Led Zeppelin", releaseYear: "1973", album: "Houses of the holy", recordLabel: "ten-day", producer: "Arthur C Clarke", lyrics: dummyLyrics, albumImage: UIImage(named: "zeppelin"))!)
        
    }
    
    func getAllSongs() -> [Song] {
        return songsList
    }
    
    func getSongDetails(songId: String) -> Song? {
        for song in songsList {
            if song.id == songId {
                return song
            }
        }
        return nil
    }
    
}
