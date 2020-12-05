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
![carinfo](https://user-images.githubusercontent.com/70695311/101260668-9aeeb000-3774-11eb-9b45-01d9a492a835.png)
![contable](https://user-images.githubusercontent.com/70695311/101260663-932f0b80-3774-11eb-8f73-88a8602a0d4c.png)
![addConsumables2](https://user-images.githubusercontent.com/70695311/101260667-988c5600-3774-11eb-85aa-b166cdf44eb9.png)
![modifyConsumables](https://user-images.githubusercontent.com/70695311/101260673-a80b9f00-3774-11eb-8c85-4d4410cd049a.png)
![delteConsumables](https://user-images.githubusercontent.com/70695311/101260677-ac37bc80-3774-11eb-908c-69621ef1733f.png)

### Controller 
- Manage consumables
