import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
        UINavigationBar.appearance().barTintColor = UIColor.purple
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.white]
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().barStyle = .blackTranslucent
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    let songs: [SongDetailsViewModel] = {
        let elvis = Song(id: "01", title: "Presly", artist: "Elvis Presley", releaseYear: "1965", album: "Elvis Presley", recordLabel: "RCA Victor", producer: "Victor", lyrics: nil, albumImage: UIImage(named: "elvis"))
        let bowie = Song(id: "02", title: "Ziggy Stardust", artist: "David Bowie", releaseYear: "1973", album: "Aladdin Sane", recordLabel: "Emirates", producer: "Biran Duggy", lyrics: nil, albumImage: UIImage(named: "bowie"))
        let beatles = Song(id: "03", title: "Yellow", artist: "The Beatles", releaseYear: "1967", album: "SGt Peppers's lonely hearts Club band", recordLabel: "Beat land", producer: "Paul McCartney", lyrics: nil, albumImage: UIImage(named: "beatles"))
        let fleetwood = Song(id: "04", title: "Fleetwood working", artist: "Fleetwood Mac", releaseYear: "1977", album: "Rumours", recordLabel: "Rhiannon", producer: "Stevie Nicks", lyrics: nil, albumImage: UIImage(named: "fleetwood"))
        let floyd = Song(id: "05", title: "Triumarite", artist: "Pink Floyd", releaseYear: "1973", album: "The dark side of the moon", recordLabel: "Respectra", producer: "George Hardie", lyrics: nil, albumImage: UIImage(named: "floyd"))
        let prince = Song(id: "06", title: "Purple Rain", artist: "Prince", releaseYear: "1984", album: "Purple Rain", recordLabel: "Love Symbol", producer: "Ed Thrasher", lyrics: nil, albumImage: UIImage(named: "purple"))
        let roxy = Song(id: "07", title: "On Her majesty secret service", artist: "Roxy Music", releaseYear: "1972", album: "Roxy Music", recordLabel: "Chirs Jagger", producer: "Dean Roger", lyrics: nil, albumImage: UIImage(named: "roxy"))
        let velvet = Song(id: "08", title: "Peel slowly and See", artist: "The Velvet Underground & Nico", releaseYear: "1967", album: "The Velvet Underground & Nico", recordLabel: "Banana Republic", producer: "Andy Warhol", lyrics: nil, albumImage: UIImage(named: "velvet"))
        let zappa = Song(id: "09", title: "Man's Life", artist: "Frank Zappa", releaseYear: "1975", album: "Weasels reaped my flesh", recordLabel: "Electric Razor", producer: "Neon Park", lyrics: nil, albumImage: UIImage(named: "zappa"))
        let zeppelin = Song(id: "10", title: "Northern Ireland", artist: "Led Zeppelin", releaseYear: "1973", album: "Houses of the holy", recordLabel: "ten-day", producer: "Arthur C Clarke", lyrics: nil, albumImage: UIImage(named: "zeppelin"))
       
        return [SongDetailsViewModel(song: elvis!), SongDetailsViewModel(song: bowie!), SongDetailsViewModel(song: beatles!), SongDetailsViewModel(song: fleetwood!), SongDetailsViewModel(song: floyd!), SongDetailsViewModel(song: prince!), SongDetailsViewModel(song: roxy!), SongDetailsViewModel(song: velvet!), SongDetailsViewModel(song: zappa!), SongDetailsViewModel(song: zeppelin!)]
    }()

}

