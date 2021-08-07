//
//  NavBarListDetailsViewController.swift
//  AnotherDummy
//
//  Created by Shayne Torres on 8/7/21.
//

import UIKit

class NavBarListDetailsViewController: UIViewController {
    
    public var name: String = ""
    public var age = 0
    public var isTrue = false

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = name
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
