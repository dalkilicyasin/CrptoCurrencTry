//
//  BaseTableViewCell.swift
//  CrptoCurrencyTry
//
//  Created by Yasin Dalkilic on 8.11.2021.
//
import UIKit

class BaseTableViewCell: UITableViewCell {
    
    class var identifier: String { return String(describing: self) }
    class var nib: UINib { return UINib(nibName: identifier, bundle: nil) }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
