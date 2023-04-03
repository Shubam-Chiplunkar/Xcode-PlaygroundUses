//
//  ViewController.swift
//  Xcode&PlaygroundUses
//
//  Created by mayank ranka on 25/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    
    let arrayOfWords : [String] = ["hello","world","table","football","pipe","code"]
    var wordsInTitle = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var str : String = ""
        for i in arrayOfWords{
            str = i.uppercased()
            wordsInTitle.append(str)
        }
    }

}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wordsInTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = wordsInTitle[indexPath.row]
        
        return cell
    }
    
    
}
