//
//  MovieCell.swift
//  Unit 1
//
//  Created by dwork on 9/6/22.
//

import UIKit

class MovieCell: UITableViewCell {
 
    
    
    @IBOutlet weak var titlelabel: UILabel!
    
    
    @IBOutlet weak var synopsislabel: UILabel!
    
    
    @IBOutlet weak var posterview: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
