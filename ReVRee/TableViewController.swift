//
//  TableViewController.swift
//  ReVRee
//
//  Created by Lakshya  on 10/21/24.
//

import UIKit

class TableViewController: ViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tablw: UITableView!
    
    struct Sunset {
        let title: String
        let imageNamee: String
    }
    
    let data: [Sunset] = [
    Sunset(title: "Blurry Vision", imageNamee: "sunset1"),
    Sunset(title: "Intense Headache", imageNamee: "sunset2"),
    Sunset(title: "Nausea", imageNamee: "sunset3"),
    Sunset(title: "Immersive Shaking", imageNamee: "sunset4"),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
title = "Table View"
        tablw.dataSource = self
        tablw.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sunset = data[indexPath.row]
        let cell = tablw.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = sunset.title
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140 
    }
    
}
