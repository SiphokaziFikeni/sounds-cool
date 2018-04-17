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
    

}

