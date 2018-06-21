//
//  AirportCell.swift
//  FlightApp
//
//  Created by Mac on 21.06.2018.
//  Copyright © 2018 salgara. All rights reserved.
//

import UIKit

class AirportCell: UITableViewCell {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setData(airport: Airport){
        if let title =  airport.title{
            titleLabel.text = title
        }
        if let description =  airport.description{
            descLabel.text = description
        }
    }
    
    

}
