import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget{
  
  final textStyle = TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black54);
  @override
  Widget build(BuildContext context) {
     return Container(
       margin: EdgeInsets.only(bottom: 20.0),
       child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("FoodOFi", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black , fontSize: 45.0,)),
                    Text("What would you like to eat?",style: TextStyle(color:Colors. black, fontSize: 18),)
                  ],

                ),
                Icon(Icons.notifications_none, size: 30.0,),
              ],
            ),
     );
    
  }
}