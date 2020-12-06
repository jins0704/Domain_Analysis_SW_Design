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
![carinfo](https://user-images.githubusercontent.com/70695311/101261008-400a8800-3777-11eb-8120-194d00bd4952.png)
![addcar](https://user-images.githubusercontent.com/70695311/101261012-43057880-3777-11eb-8e65-a7b454786eaf.png)
![modifycar](https://user-images.githubusercontent.com/70695311/101261014-44cf3c00-3777-11eb-9d33-051132f75458.png)
<img width="99" alt="deletecar" src="https://user-images.githubusercontent.com/70695311/101278730-e8b0fa00-3800-11eb-98d2-933f91300251.png">

### Controller 
- Manage consumables
