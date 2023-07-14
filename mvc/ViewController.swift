//
//  ViewController.swift
//  mvc
//
//  Created by R82 on 06/07/23.
//

import UIKit

struct Data{
    var name : String
    var img : UIImage
    var details : String
}

class ViewController: UIViewController {
    @IBOutlet weak var tv: UITableView!
    
    var allData = [Data(name: "Tony Stark", img: UIImage(named: "1")!, details: "Anthony Edward Stark is a fictional character primarily portrayed by Robert Downey Jr. in the Marvel Cinematic Universe (MCU) media franchise—based on the Marvel Comics character of the same name—commonly known by his alias, Iron Man. Stark is initially depicted as an industrialist, genius inventor, and playboy who is CEO of Stark Industries. Initially the chief weapons manufacturer for the U.S. military, he has a change of heart and redirects his technical knowledge into the creation of mechanized suits of armor which he uses to defend earth."),
                   Data(name: "Thor", img: UIImage(named: "2")!, details: "Thor Odinson, sometimes referred to by his title as the God of Thunder, is a fictional character portrayed by Chris Hemsworth in the Marvel Cinematic Universe (MCU) media franchise, based on the Marvel Comics character of the same name and the Norse mythological god of the same name. In the MCU, he is depicted as one of the most powerful Asgardians, an ancient alien civilization with long ties to Earth, who humans consider to be gods. Thor wields a powerful hammer called Mjolnir, and is initially depicted as the arrogant heir to the throne of Asgard whose brash behaviors causes turmoil among the Nine Realms under Asgard's protection. This brings him into conflict with his villainous adopted brother, Loki."),
                   Data(name: "Wanda Maximoff", img: UIImage(named: "3")!, details: "Wanda Maximoff is a fictional character primarily portrayed by Elizabeth Olsen in the Marvel Cinematic Universe (MCU) media franchise based on the Marvel Comics character of the same name. Wanda is initially depicted as a Sokovian refugee who, along with her twin brother Pietro, volunteers to be experimented on by Hydra. The Mind Stone amplifies her natural telekinetic and energy manipulation abilities known as Chaos magic.[3] Wanda initially comes into conflict with the Avengers but later joins them, becoming one of their most powerful members."),
                   Data(name: "Loki Laufeyson", img: UIImage(named: "4")!, details: "Loki Laufeyson,[1] known by adoption as Loki Odinson and by his title as the God of Mischief,[2][3] is a fictional character portrayed by Tom Hiddleston in the Marvel Cinematic Universe (MCU) media franchise, based on the Marvel Comics character of the same name and the Norse mythological god of the same name. Loki was introduced in Thor (2011), and has since become an important recurring figure of the MCU; following the original Loki's death in Avengers: Infinity War (2018), a variant of him from an alternate timeline is introduced in Avengers: Endgame (2019), diverging from the events of The Avengers (2012), headlining the television series Loki (2021) alongside Sylvie, a female variant of him who he works with in the series.")]
    
    var check = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }


}
extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tv.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        let abc = allData[indexPath.row]
        cell.nameLable.text = abc.name
        cell.detailsLable.text = abc.details
        cell.img.image = abc.img
        cell.detailsLable.numberOfLines = (check.contains(indexPath.row) ? 0 : 1)
        cell.view2.layer.cornerRadius = 10
        cell.view2.layer.borderWidth = 2
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if check.contains(indexPath.row){
            var a = check.firstIndex(of: indexPath.row)
            check.remove(at: a!)
        }else{
            check.append(indexPath.row)
        }
        print(check)
        tv.reloadData()
    }
}

