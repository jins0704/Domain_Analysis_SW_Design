# Domain_Analysis_SW_Design
## Car Management System 
>
> The system provides a service to set the replacement records and replacement cycle for each consumable and to purchase that consumables when the next replacement cycle arrives. 
    Currently, we have implemented manage car information and manage car concumables among usecases.
   There are MVC models for system construction.
>
### Model
##### * Car
        Car is a class that represents the car you manage.
        You can initialize it using init()
          Properties   
           var carName : String? (car's name)
           var carID : String? (car's ID)
           var brand : String? (car's brand)
           var model : String? (car's model)
           var fuelType : String? (car's fuel type)
           
##### * ConsCategory
         ConsCategory is a class that represents a category of consumables.
         You can initialize it using init()
          Properties   
           var name : String? (category's name)
           var Period : Int? (category 's expiration date)
           
##### * Consumables
         Consumables is a class that represents consumables.
         You can initialize it using init()
          Properties
           var name : String? (cosumable's name)
           var dist : Int? (distance using consumables)
           var maxPeriod : Int? (consumable's expiration date)
           var detail : String? (consumable's information with Percentage)
           var categoryN : String? (consumable's category)
### View
    ![사진](/uploads/carinfo.png)
    ![사진](/uploads/contable.PNG)
    ![사진](/uploads/carinfo.png)
    ![사진](/uploads/addConsumables.png)
    ![사진](/uploads/modifyConsumables.png)
    ![사진](/uploads/delteConsumables.png)
    
### Controller 
- Manage consumables
