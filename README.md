# Domain_Analysis_SW_Design
# Car Management System 
>
> The system provides a service to set the replacement records and replacement cycle for each consumable and to purchase that consumables when the next replacement cycle arrives. 
    Currently, we have implemented manage car information and manage car concumables among usecases.
   There are MVC models for system construction.
>
## Model
##### Car
        Car is a class that represents the car you manage.
        You can initialize it using init()
          Properties   
           var carName : String? (car's name)
           var carID : String? (car's ID)
           var brand : String? (car's brand)
           var model : String? (car's model)
           var fuelType : String? (car's fuel type)
           
##### ConsCategory
         ConsCategory is a class that represents a category of consumables.
         You can initialize it using init()
          Properties   
           var name : String? (category's name)
           var Period : Int? (category 's expiration date)
           
##### Consumables
         Consumables is a class that represents consumables.
         You can initialize it using init()
          Properties
           var name : String? (cosumable's name)
           var dist : Int? (distance using consumables)
           var maxPeriod : Int? (consumable's expiration date)
           var detail : String? (consumable's information with Percentage)
           var categoryN : String? (consumable's category)
## View
![carview](https://user-images.githubusercontent.com/70695311/101279016-8d800700-3802-11eb-9cf7-c3a34661547e.PNG)
>   
1. You can choose the four menus below using the tap bar.
2. 'Car' and the 'Manage' tap bar, each means 'manage car' and 'manage consumables'
3. Also, using the navigator, you can pop the view by pressing the back key on the screen.
4. The information input for adding or editng cars or consumables, was pushed through the view using the present modal.
5. The list is organized so that it can be viewed at a glance through the tableview. 
6. Lastly, All views can be seen on any device without breaking the screen using AutoLayout.
>
## Controller 

#### AddViewController

- Receive and store the required data from the previous view.
- Connection with view and contoller      
- If you select “+” button, you can add consumables through a view. This class controls the view. 
- Adopt some protocols like UIPickerViewDelegate and UIPickerViewDataSource.
             
        Implement and provide picker views according to a category list.
      
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
         }
    
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int { 
            return consumablesCategory.count
         }
    
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return consumablesCategory[row].name
         }
             
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
             whatCategory = consumablesCategory[row].name
             whatCategoryPeriod = consumablesCategory[row].period
         }
 
#### ConsumablesCell
    
- A controller for using a table cell in a table view.
- Adopt a protocol, UITableViewCell
      
      Select Table Cells for Modification
       
        override func setSelected(_ selected: Bool, animated : Bool){
        super.setSelected(selected, animated: animated)
        }
        
#### manageViewController

- UITalbeViewController for a list.
- There are many funtions like override func table tableView() to reconstruct into the desired table view.
- Use unwind~(segue : UIStoryboardSegue) when you return this view after updating table.
        
       @IBAction func unwindModify(segue : UIStoryboardSegue){ ... }
     
       @IBAction func unwindToMainViewController(segue : UIStoryboardSegue{ ... }
        
       @IBAction func unwindToAddController(segue : UIStoryboardSegue){ ... }
 
- Send data for the other view 
      
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "modifyInfo" {
                if let destVC = segue.destination as? modifyViewController{
                    destVC.label = consumablesList[selectNum!].categoryN
                    destVC.namefield = consumablesList[selectNum!].name
                    destVC.distance = consumablesList[selectNum!].dist
                }
            }
         }
         
 - There is only one View Life Cycle because the view switches push or pop.
    > if Update, use self.tableview.reloadData()
    
#### modifyViewContoller

- Receive and store the required data from the previous view.
- Connection with view and contoller      
- If you select a cell or “edit” button, you can edit the information through a view. This class controls the view. 
- Use one button to store and complete the required data.
     
        @IBAction func modifySuccess(_ sender: Any) {
                namefield = nameField.text
                if distanceField.text != nil{
                      distance = Int(distanceField.text!)
                }
        }
