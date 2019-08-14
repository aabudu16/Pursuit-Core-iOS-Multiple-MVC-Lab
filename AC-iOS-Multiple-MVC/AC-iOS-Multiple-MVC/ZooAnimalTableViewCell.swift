

import UIKit

class ZooAnimalTableViewCell: UITableViewCell {

    @IBOutlet var animalImage: UIImageView!
    
    @IBOutlet var animalOrigin: UILabel!
    @IBOutlet var animalName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
