import Foundation
import UIKit

class CustomSongTableCiewCell: UITableViewCell {
    
    @IBOutlet weak var songItemImageView: UIImageView!
    @IBOutlet weak var songItemArtistLabel: UILabel!
    @IBOutlet weak var songItemTitleLabel: UILabel!
    @IBOutlet weak var songItemAlbumAndYearLabel: UILabel!
    
    func setTableCellData(songListViewModel: SongListViewModel, indexPath: Int) {
        
        self.songItemImageView?.image = songListViewModel.songsList[indexPath].albumImage
        self.songItemArtistLabel.text = songListViewModel.songsList[indexPath].artist
        self.songItemTitleLabel.text = songListViewModel.songsList[indexPath].title
        let albumText = songListViewModel.songsList[indexPath].album
        self.songItemAlbumAndYearLabel.text = albumText! + " (" + songListViewModel.songsList[indexPath].releaseYear + ")"
    }
    
}
