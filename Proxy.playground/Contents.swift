import UIKit
//Заместитель — это объект, который выступает прослойкой между клиентом и реальным сервисным объектом. Заместитель получает вызовы от клиента, выполняет свою функцию (контроль доступа, кеширование, изменение запроса и прочее), а затем передаёт вызов сервисному объекту.

//Заместитель имеет тот же интерфейс, что и реальный объект, поэтому для клиента нет разницы — работать через заместителя или напрямую.

class FileDownloader {
    init() {
        print("Downloader created")
    }
    func slowDownload() {
        print("Sloooooowly downloading...") }
    func fastDownload() {
        print("Shuuuuuh, already downloaded...") }
}
class FileDownloaderProxy {
    private let downloader = FileDownloader()
    var isPremiumUser = false
    func fastDownload() {
        checkNetworkConnectivity()
        if !isPremiumUser {
            slowDownload()
        } else {
            downloader.fastDownload() }
    }
    func slowDownload() {
        downloader.slowDownload() }
    func checkNetworkConnectivity() {
        print("Checking network connectivity...") }
}
