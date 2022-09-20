//
//  ViewModel.swift
//  SimpleJsonParse
//
//  Created by Berkant on 26.07.2022.
//

import Foundation
import Alamofire
import SwiftyJSON

final class ViewModel {
    
    func getData() {
        let url = "https://wft-geo-db.p.rapidapi.com/v1/geo/countries/?rapidapi-key=59fa52c39fmsh5fa5965307421d2p1e84cdjsna8420fe1d37a"
        let request = URLRequest(url: URL(string: url)!)
        DispatchQueue.global(qos: .utility).async {
            Alamofire.request(request).responseJSON { (response) in
                let responseData = response.data
                let jsozn = JSON(responseData!)
                AppConfig.appModel = AppModel(withJSON: jsozn)
            }
        }
    }
    
}
