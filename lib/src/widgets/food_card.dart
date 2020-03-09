import 'package:flutter/material.dart';
import 'package:project1/src/Pages/order_page.dart';

class FoodCard extends StatelessWidget{

final String catagoryName;
final String imagePath;
final int numberOfItems;

FoodCard ({this.catagoryName, this.imagePath, this.numberOfItems});


  @override
  Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: (){
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => OrderPage()));
               },
                  child: Card(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                children: <Widget>[
                  Image(
                    image: AssetImage(imagePath),
                    height: 65.0,
                    width: 65.0,
                  
                  ),
                  SizedBox(width: 20.0,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(catagoryName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                      Text("$numberOfItems kinds")
                    
                  ],)
                ],
              ),
            ),
          ),
        ),
      );
  }
}