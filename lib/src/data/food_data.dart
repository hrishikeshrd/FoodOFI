
class Food{
  
  final String name;
  final String id;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  Food({this.id,this.name,this.imagePath,this.category,this.price,this.discount,this.ratings});


}

final foods = [
 Food(
   id: "1",
   name:"Veg Wraps",
   imagePath: "assets/rap.jpg",
   category: "1",
   price: 100.0,
   discount: 30.0,
   ratings: 0.0,
   
  ),
  Food(
   id: "2",
   name:"Chicken Barbeque",
   imagePath: "assets/BBQ.jpg",
   category: "1",
   price: 240.0,
   discount: 60.0,
   ratings: 98.0,
   
   ),
  Food(
   id: "1",
   name:"Non Veg Spring Rolls",
   imagePath: "assets/spring.jpg",
   category: "1",
   price: 190.0,
   discount: 30.0,
   ratings: 80.0,
   
   ),
];