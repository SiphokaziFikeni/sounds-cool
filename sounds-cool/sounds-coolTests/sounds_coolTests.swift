import XCTest
@testable import sounds_cool

class sounds_coolTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    //MARK: Song struct tests
    func testSongInitializationSucceeds() {
        
        let noSongAlbumImage = Song.init(id: "01", title: "Jikijela", artist: "Letta Mbulu", releaseYear: "1978", album: "Greatest Hits", recordLabel: "Sophia Town Records", producer: "Caiphus", lyrics: "Jikijela ngamantye", albumImage: nil)
        XCTAssertNotNil(noSongAlbumImage)
        
        let noSongAlbumTitleAndImage = Song.init(id: "01", title: "Jikijela", artist: "Letta Mbulu", releaseYear: "1978", album: nil, recordLabel: "Sophia Town Records", producer: "Caiphus", lyrics: "Jikijela ngamantye", albumImage: nil)
        XCTAssertNotNil(noSongAlbumTitleAndImage)
        
        let noSongAlbumTitle = Song.init(id: "01", title: "Jikijela", artist: "Letta Mbulu", releaseYear: "1978", album: nil, recordLabel: "Sophia Town Records", producer: "Caiphus", lyrics: "Jikijela ngamantye", albumImage: UIImage(named: "jikijela"))
        XCTAssertNotNil(noSongAlbumTitle)
        
        let noSongLyrics = Song.init(id: "01", title: "Jikijela", artist: "Letta Mbulu", releaseYear: "1978", album: "Greatest Hits", recordLabel: "Sophia Town Records", producer: "Caiphus", lyrics: nil, albumImage: UIImage(named: "jikijela"))
        XCTAssertNotNil(noSongLyrics)
    }
    
    func testSongInitializationFails() {
        
        let songWithNoId = Song.init(id: "", title: "Jikijela", artist: "Letta Mbulu", releaseYear: "1978", album: "Greatest Hits", recordLabel: "Sophia Town Records", producer: "Caiphus", lyrics: "Jikijela ngamantye", albumImage: UIImage(named: "jikijela"))
        XCTAssertNil(songWithNoId)
        
        let songWithNoTitle = Song.init(id: "01", title: "", artist: "Letta Mbulu", releaseYear: "1978", album: "Greatest Hits", recordLabel: "Sophia Town Records", producer: "Caiphus", lyrics: "Jikijela ngamantye", albumImage: UIImage(named: "jikijela"))
        XCTAssertNil(songWithNoTitle)
        
        let songWithNoArtist = Song.init(id: "01", title: "Jikijela", artist: "", releaseYear: "1978", album: "Greatest Hits", recordLabel: "Sophia Town Records", producer: "Caiphus", lyrics: "Jikijela ngamantye", albumImage: UIImage(named: "jikijela"))
        XCTAssertNil(songWithNoArtist)
        
        let songWithNoReleaseYear = Song.init(id: "01", title: "Jikijela", artist: "Letta Mbulu", releaseYear: "", album: "Greatest Hits", recordLabel: "Sophia Town Records", producer: "Caiphus", lyrics: "Jikijela ngamantye", albumImage: UIImage(named: "jikijela"))
        XCTAssertNil(songWithNoReleaseYear)
        
        let songWithNoRequiredProperties = Song.init(id: "", title: "", artist: "", releaseYear: "", album: "Greatest Hits", recordLabel: "", producer: "", lyrics: "Jikijela ngamantye", albumImage: UIImage(named: "jikijela"))
        XCTAssertNil(songWithNoRequiredProperties)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}
