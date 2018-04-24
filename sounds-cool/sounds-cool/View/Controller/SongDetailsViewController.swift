import Foundation
import UIKit

class SongDetailsViewController : UIViewController {
   
    var songId: String = ""
    lazy var songDetailsViewModel: SongDetailsViewModel = {
       SongDetailsViewModel(songId: songId)
    }()
    
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var artistTextView: UITextView!
    @IBOutlet weak var titleTextView: UITextView!
    @IBOutlet weak var albumTextView: UITextView!
    @IBOutlet weak var yearTextView: UITextView!
    @IBOutlet weak var producerTextView: UITextView!
    @IBOutlet weak var recordCompanyTextView: UITextView!
    @IBOutlet weak var lyricsTextView: UITextView!
    
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var producerLabel: UILabel!
    @IBOutlet weak var recordLabel: UILabel!
    @IBOutlet weak var lyricsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Song Details"
        setLayoutLabelColors()
        showSongDetails(songDetailsViewModel: songDetailsViewModel)
    }
    
    func showSongDetails(songDetailsViewModel: SongDetailsViewModel) {
        
        albumImageView.image = songDetailsViewModel.albumImage
        artistTextView.text = songDetailsViewModel.artist
        titleTextView.text = songDetailsViewModel.title
        albumTextView.text = songDetailsViewModel.album
        yearTextView.text = songDetailsViewModel.releaseYear
        producerTextView.text = songDetailsViewModel.producer
        recordCompanyTextView.text = songDetailsViewModel.recordLabel
        lyricsTextView.text = songDetailsViewModel.lyrics
    }
    
    func setLayoutLabelColors() {
        
        artistLabel.textColor = UILabel.setLabelColor()
        titleLabel.textColor = UILabel.setLabelColor()
        albumLabel.textColor = UILabel.setLabelColor()
        yearLabel.textColor = UILabel.setLabelColor()
        producerLabel.textColor = UILabel.setLabelColor()
        recordLabel.textColor = UILabel.setLabelColor()
        lyricsLabel.textColor = UILabel.setLabelColor()
    }
}
