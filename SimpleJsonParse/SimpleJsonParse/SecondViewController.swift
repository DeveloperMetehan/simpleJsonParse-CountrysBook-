//
//  SecondViewController.swift
//  SimpleJsonParse
//
//  Created by Gappze on 28.07.2022.
//

import UIKit
import SafariServices
import Flags

class SecondViewController: UIViewController {
     var selectedCountryCode = ""
     var selectedCurrencyCode = ""
     var selectedWikitadaId = ""
    @IBOutlet weak var countryCodeLabel: UILabel!
    @IBOutlet weak var currencyCodeLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
          self.navigationController?.navigationBar.prefersLargeTitles = true
          self.title = "More İnfo"
            countryCodeLabel.text = "Country Code: \(selectedCountryCode)"
            currencyCodeLabel.text = "Currency Code: \(selectedCurrencyCode)"
         let flag = Flag(countryCode: selectedCountryCode)
        let countryImage = UIImageView()
        countryImage.image = flag?.image(size: CGSize.init(width: 150, height: 100))
        imageView.image = countryImage.image
        
        
        
    }
    @IBAction func buttonClicked(_ sender: Any) {
        if let url = URL(string: "https://www.wikidata.org/wiki/\(selectedWikitadaId)") {
            let safariVC = SFSafariViewController(url: url)
                present(safariVC, animated: true, completion: nil)
        }
    }
}
