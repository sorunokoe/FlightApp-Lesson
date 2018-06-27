//
//  FlightListViewController.swift
//  FlightApp
//
//  Created by Mac on 16.06.2018.
//  Copyright © 2018 salgara. All rights reserved.
//

import UIKit

class FlightListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var airports: [Airport]?
    @IBOutlet weak var searchField: UITextField!
    @IBOutlet weak var airportTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        getAirports()
        
        airportTableView.delegate = self
        airportTableView.dataSource = self
        
    }
    @IBAction func editAction(_ sender: Any) {
    }
    
}

// MARK: - Data load
extension FlightListViewController{
    func getAirports(){
//        airports = [Airport]()
//        let a1 = Airport(title: "ALA: ALMATY Airport", description: "KZ - ALMATY")
//        let a2 = Airport(title: "ABC: ABC Airport", description: "ABC - ABCBC")
//        let a3 = Airport(title: "NEW: NEW York Airport", description: "USA - NEW YORK")
//        let a4 = Airport(title: "LON: LONDON Airport", description: "EN - LONGON")
//        let a5 = Airport(title: "PAR: PARIS Airport", description: "FR - PARIS")
//        guard airports != nil else {return}
//        [a1,a2,a3,a4,a5].forEach{
//            airports!.append($0)
//        }
        
        AirportManager.getAirports { (data, error) in
            
            if let error = error{
                print(error)
            }
            
            if let data = data{
                if data.isEmpty{
                    self.airports = data
                    self.airportTableView.reloadData()
                }
            }
            
        }
        
    }
}

// MARK: - Table View Implementation
extension FlightListViewController{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let airports = airports{
            return airports.count
        }
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = self.airportTableView.dequeueReusableCell(withIdentifier: "airportCellId", for: indexPath) as? AirportCell{
            if let airports = self.airports{
                let airport = airports[indexPath.row]
                cell.setData(airport: airport)
            }
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let airports = airports{
            print(airports[indexPath.row].title)
        }
        
    }
    
}

















