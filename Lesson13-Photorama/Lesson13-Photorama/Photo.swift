import Foundation

class Photo: Codable {
    let title: String
    let remoteUrl: URL?
    let photoId: String
    let dateTaken: Date
    
    init(title: String, remoteUrl: URL, photoId: String, dateTaken: Date) {
        self.title = title
        self.remoteUrl = remoteUrl
        self.photoId = photoId
        self.dateTaken = dateTaken
    }
    
    enum CodingKeys: String, CodingKey {
        case title
        case remoteUrl = "url_z"
        case photoId = "id"
        case dateTaken = "datetaken"
    }
}
