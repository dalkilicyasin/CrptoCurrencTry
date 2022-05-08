//
//  CyriptoTableViewCell.swift
//  CrptoCurrencyTry
//
//  Created by Yasin Dalkilic on 8.11.2021.
//

import UIKit

class CyriptoTableViewCell: BaseTableViewCell {
    @IBOutlet weak var viewContentView: UIView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.viewContentView.backgroundColor = UIColor.black
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
