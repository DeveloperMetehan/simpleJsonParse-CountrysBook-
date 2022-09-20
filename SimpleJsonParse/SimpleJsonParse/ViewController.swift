//
//  ViewController.swift
//  SimpleJsonParse
//
//  Created by Berkant on 26.07.2022.
//

import UIKit
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
      var nameArray = [String]()
      var countryCodeArray = [String]()
      var currencyCodeArray = [String]()
      var wikidataIdArray = [String]()
      var chosenCountryCode = ""
      var chosenCurrencyCode = ""
      var chosenWikidataId = ""
       let vm = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Country Names"
        
        tableView.delegate = self
        tableView.dataSource = self

        self.vm.getData()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            self.countryCodeArray.append(AppConfig.appModel!.countryCode)
            self.countryCodeArray.append(AppConfig.appModel!.countryCode1)
            self.countryCodeArray.append(AppConfig.appModel!.countryCode2)
            self.countryCodeArray.append(AppConfig.appModel!.countryCode3)
            self.countryCodeArray.append(AppConfig.appModel!.countryCode4)
            self.nameArray.append(AppConfig.appModel!.name)
            self.nameArray.append(AppConfig.appModel!.name1)
            self.nameArray.append(AppConfig.appModel!.name2)
            self.nameArray.append(AppConfig.appModel!.name3)
            self.nameArray.append(AppConfig.appModel!.name4)
            self.currencyCodeArray.append(AppConfig.appModel!.currenyCode)
            self.currencyCodeArray.append(AppConfig.appModel!.currenyCode1)
            self.currencyCodeArray.append(AppConfig.appModel!.currenyCode2)
            self.currencyCodeArray.append(AppConfig.appModel!.currenyCode3)
            self.currencyCodeArray.append(AppConfig.appModel!.currenyCode4)
            self.wikidataIdArray.append(AppConfig.appModel!.wikiDataId)
            self.wikidataIdArray.append(AppConfig.appModel!.wikiDataId1)
            self.wikidataIdArray.append(AppConfig.appModel!.wikiDataId2)
            self.wikidataIdArray.append(AppConfig.appModel!.wikiDataId3)
            self.wikidataIdArray.append(AppConfig.appModel!.wikiDataId4)
            self.tableView.reloadData()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = self.nameArray[indexPath.row]
        return cell
 }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenCountryCode = countryCodeArray[indexPath.row]
        chosenCurrencyCode = currencyCodeArray[indexPath.row]
        chosenWikidataId = wikidataIdArray[indexPath.row]
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.selectedCountryCode = chosenCountryCode
            destinationVC.selectedCurrencyCode = chosenCurrencyCode
            destinationVC.selectedWikitadaId = chosenWikidataId
        }
    }
}

