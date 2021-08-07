//
//  NavBarListViewController.swift
//  AnotherDummy
//
//  Created by Shayne Torres on 8/7/21.
//

import UIKit

class NavBarListViewController: UIViewController {
    
    let showNavBarList1 = "showNavBarList1"
    let showNavBarList2 = "showNavBarList2"
    
    var people = ["Shayne", "Nate", "Amy", "Copper"]
    var selectedPerson = ""
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        // Register the cell
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailsVC = segue.destination as? NavBarListDetailsViewController {
            // do the logic
            detailsVC.name = self.selectedPerson
        } else {
            // something went wrong
            fatalError("something went wrong")
        }
    }
}

extension NavBarListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") else { return UITableViewCell() }
    
        let person = people[indexPath.row]
        cell.textLabel?.text = person
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedPerson = people[indexPath.row]
        self.performSegue(withIdentifier: showNavBarList1, sender: self)
    }
    
}


class Speaker {
    func speak() {
        print("SPEAK")
    }
}

class CoolSpeaker: Speaker {
    override func speak() {
        print("COOL SPEACH")
    }
}

class LaidBackSpeaker: Speaker {
    override func speak() {
        print("<quielty> speeeeeak.....")
    }
}

