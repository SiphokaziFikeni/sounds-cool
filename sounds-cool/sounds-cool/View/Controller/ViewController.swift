import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  

    @IBOutlet weak var songsTableView: UITableView!
    
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
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SongTableCell", for: indexPath)
        
        return cell
    }
    

}

