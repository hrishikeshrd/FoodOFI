import 'package:flutter/material.dart';
import '../models/catagory_model.dart';
import 'food_card.dart';
import '../data/catagory_data.dart';


class FoodCategory extends StatelessWidget{

  final List<Category> _categories= Categories;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context,int index){
          return FoodCard(
            catagoryName: _categories[index].catagoryName,
            imagePath: _categories[index].imagePath,
            numberOfItems: _categories[index].numberOfItems,
          );

        },
      ),
    );
  }
}