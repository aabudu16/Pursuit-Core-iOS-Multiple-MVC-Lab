
import UIKit

class ZooAnimalTableViewController: UITableViewController {
    
    
    var animals = ArrayOfAnimals.init()
    var arrayOfSortedAnimals = [[ZooAnimal]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        arrayOfSortedAnimals = animals.SortingClassification()

    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return arrayOfSortedAnimals.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfSortedAnimals[section].count
        
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//this code goes into the [[ZooAnimal]], grabs each section starting from index 0, and grabs the classification string and returns it to be displayed in the title header
        return arrayOfSortedAnimals[section][0].classification
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(150)
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ZooAnimalCell", for: indexPath) as? ZooAnimalTableViewCell {
            
            let animalInfo = arrayOfSortedAnimals[indexPath.section][indexPath.row]
            
            cell.animalImage.image = UIImage(named: String(animalInfo.imageNumber))
            cell.animalName.text = animalInfo.name
            cell.animalOrigin.text = animalInfo.origin

            return cell
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let zooDetailViewController =
            storyBoard.instantiateViewController(withIdentifier: "ZooStoryBoardID") as! ZooDetailViewController
        
        let info = arrayOfSortedAnimals[indexPath.section][indexPath.row]
        
        zooDetailViewController.animals = info
        
        self.navigationController?.pushViewController(zooDetailViewController, animated: true)
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }    
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
