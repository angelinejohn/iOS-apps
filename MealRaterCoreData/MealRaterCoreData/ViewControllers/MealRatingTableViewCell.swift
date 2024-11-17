//
//  MealRatingTableViewCell.swift
//  MealRaterCoreData
//
//  Created by ajohn on 11/21/23.
//

import UIKit

class MealRatingTableViewCell: UITableViewCell {

    @IBOutlet var mealName: UILabel!
    @IBOutlet var mealRating: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
