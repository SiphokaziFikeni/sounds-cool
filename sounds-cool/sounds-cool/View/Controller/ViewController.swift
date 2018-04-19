import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    @IBOutlet weak var songsTableView: UITableView!
    let songDetailsViewModel: [SongDetailsViewModel] = (UIApplication.shared.delegate as! AppDelegate).songs
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Songs Dope"
        setTableViewDataSourceAndDelegate()
    }
    
    private func setTableViewDataSourceAndDelegate() {
        songsTableView.dataSource = self
        songsTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songDetailsViewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SongTableCell", for: indexPath) as! CustomSongTableCiewCell
        
        let songViewModel = songDetailsViewModel[indexPath.row]
        cell.songItemArtistLabel.text = songViewModel.artist
        cell.songItemTitleLabel.text = songViewModel.title
        let albumText = songViewModel.album
        cell.songItemAlbumLabel.text = albumText! + " (" + songViewModel.releaseYear + ")"
        cell.imageView?.image = songViewModel.albumImage
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard let songDetailsViewController = segue.destination as? SongDetailsViewController else {
            fatalError("Unexpected destination: \(segue.destination)")
        }
        
        guard let selectedSongCell = sender as? CustomSongTableCiewCell else {
            fatalError("Unexpected destination: \(segue.destination)")
        }
        
        guard let indexPath = songsTableView.indexPath(for: selectedSongCell) else {
            fatalError("The selected cell is not being diplayed by the table")
        }
        
        let selectedSong = songDetailsViewModel[indexPath.row]
        
        songDetailsViewController.song = selectedSong
    }

}

