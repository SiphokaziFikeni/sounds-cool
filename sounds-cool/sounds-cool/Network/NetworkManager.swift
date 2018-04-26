import Foundation

class NetworkManager {
    
    let jsonDecoder = JSONDecoder()
    let defaultSession = URLSession(configuration: .default)
    let BASE_API_URL = "https://api.musixmatch.com/ws/1.1"
    let API_KEY = "563113bde07437a62ec496d7578c69a4"
    let PAGE_NUMBER = 1
    let PAGE_SIZE = 50
    let COUNTRY_CODE = "us"
    let HAS_LYRICS = 1
    var dataTask: URLSessionDataTask?
    var errorMessage = ""
    
    func getTopSongs() {
        
        if var urlComponents = URLComponents(string: BASE_API_URL + "/chart.tracks.get") {
            urlComponents.query = "format=jsonp&callback=callback&page=\(PAGE_NUMBER)&page_size=\(PAGE_SIZE)&country=\(COUNTRY_CODE)&f_has_lyrics=\(HAS_LYRICS)&apikey=\(API_KEY)"
            
            guard let url = urlComponents.url else { return }
            
            dataTask = defaultSession.dataTask(with: url) {
                data, response, error in
                defer { self.dataTask = nil }
                
                if let error = error {
                    self.errorMessage += "DataTask error: " + error.localizedDescription + "\n"
                    print(self.errorMessage)
                
                } else if let data = data,
                        let response = response as? HTTPURLResponse,
                            response.statusCode == 200 {
                    
        //                    let songsResponse = try? self.jsonDecoder.decode(BaseJsonResponse.self, from: data)
                            
                            if let resu = String.init(data: data, encoding: String.Encoding.utf8) {
                                
                                print(resu)
        //                        print(songsResponse?.message?.body?.trackList)
                            } else {
                                print("no songs fuck")
                            }
                }
            }
            
            dataTask?.resume()
        }
    }
    
}
