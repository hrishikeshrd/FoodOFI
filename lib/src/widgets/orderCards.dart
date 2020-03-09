import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(

          crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 75.0,
            width: 45.0,
            decoration: BoxDecoration(
              border: Border.all(width: 2.0, color:Colors.blueAccent),
              borderRadius: BorderRadius.circular(10.0)
              
               ),
            
            child: Column(children: <Widget>[
              InkWell(
                onTap: (){},
                child: Icon(Icons.keyboard_arrow_up)
                  ),
              Text("1", style: TextStyle(fontSize: 18.0),),
              InkWell(
                onTap: (){},
                child: Icon(Icons.keyboard_arrow_down)
                  ),    
                  ],
                  ),
                  ),
            
            SizedBox(width: 20.0,),
            Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage("assets/burger.jpg"), 
                  ),
                  borderRadius: BorderRadius.circular(35.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      offset: Offset(0,5),
                    ),
                  ]

              ),
              ),
              SizedBox(width: 20.0,),
              Column(
                
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: <Widget>[
                
                  Text("Veg Burger",style: TextStyle(fontSize: 18.0, color: Colors.blueAccent, fontWeight: FontWeight.bold),),
                  SizedBox(height: 1,),
                  Text("5.0", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                  
                  
                  Container(
                    height: 25.0,
                    width: 120.0,
                    child: ListView(children: <Widget>[
                      SizedBox(height:1,),
                      Row(
                        children: <Widget>[
                        Text("Paneer"),
                        InkWell(
                          onTap: (){},
                          child: 
                          Text("X", 
                          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                          )
                        )
                      ],
                      )
                    ],),
                    )
              ],
              ),
              Spacer(),
            GestureDetector(
              onTap: (){},
              child: Icon(Icons.cancel, color: Colors.grey,),
            ),

        ],
    ),
      ),
      );
  }
}

class OrderCard1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(

          crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 75.0,
            width: 45.0,
            decoration: BoxDecoration(
              border: Border.all(width: 2.0, color:Colors.blueAccent),
              borderRadius: BorderRadius.circular(10.0)
              
               ),
            
            child: Column(children: <Widget>[
              InkWell(
                onTap: (){},
                child: Icon(Icons.keyboard_arrow_up)
                  ),
              Text("2", style: TextStyle(fontSize: 18.0),),
              InkWell(
                onTap: (){},
                child: Icon(Icons.keyboard_arrow_down)
                  ),    
                  ],
                  ),
                  ),
            
            SizedBox(width: 20.0,),
            Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage("assets/rap.jpg"), 
                  ),
                  borderRadius: BorderRadius.circular(35.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      offset: Offset(0,5),
                    ),
                  ]

              ),
              ),
              SizedBox(width: 20.0,),
              Column(
                
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: <Widget>[
                
                  Text("Paneer Wraps",style: TextStyle(fontSize: 18.0, color: Colors.blueAccent, fontWeight: FontWeight.bold),),
                  SizedBox(height: 1,),
                  Text("5.0", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                  
                  
                  Container(
                    height: 25.0,
                    width: 120.0,
                    child: ListView(children: <Widget>[
                      SizedBox(height:1,),
                      Row(
                        children: <Widget>[
                        Text("Paneer"),
                        InkWell(
                          onTap: (){},
                          child: 
                          Text("X", 
                          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                          )
                        )
                      ],
                      )
                    ],),
                    )
              ],
              ),
              Spacer(),
            GestureDetector(
              onTap: (){},
              child: Icon(Icons.cancel, color: Colors.grey,),
            ),

        ],
    ),
      ),
      );
  }
}