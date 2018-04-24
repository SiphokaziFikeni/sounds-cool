import UIKit

class ViewController: UIViewController, UITableViewDelegate {
  
    @IBOutlet weak var songsTableView: UITableView!
    let TABLE_CELL_IDENTIFIER = "SongTableCell"
    var songsListViewModel : SongListViewModel = SongListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Songs Dope"
        setTableViewDataSourceAndDelegate()
    }
    
    private func setTableViewDataSourceAndDelegate() {
        songsTableView.dataSource = self
        songsTableView.delegate = self
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
            fatalError("The selected cell is not being displayed by the table")
        }
        
        songDetailsViewController.songId = songsListViewModel.songsList[indexPath.row].id
    }

}

//Mark: tableView delegate methods
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songsListViewModel.getNumberOfSongs()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: TABLE_CELL_IDENTIFIER, for: indexPath) as! CustomSongTableCiewCell
        cell.setTableCellData(songListViewModel: songsListViewModel, indexPath: indexPath.row)
        
        return cell
    }
}




