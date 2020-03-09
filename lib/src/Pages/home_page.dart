import 'package:flutter/material.dart';
import 'package:project1/src/widgets/food_catagory.dart';
import '../widgets/home_top_info.dart';
import '../widgets/search_field.dart';
import '../data/food_data.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{

  
  final textStyle = TextStyle(fontSize: 32.0,fontWeight: FontWeight.bold,);
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 40.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: HomeTopInfo(),
            ),
            FoodCategory(),
            SizedBox(height: 20.0,),
            SearchField(),
            SizedBox(height:20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Try out Something new",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                GestureDetector(
                         onTap: (){},
                                child: Text("View All",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                )
              ],
            ),
            Container(
              width: double.infinity,
              height:350.0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(itemBuilder: (context,index){
                  
                  return Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0)),
                    child: Container(
                      width:300.0,
                      height:250.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        image:DecorationImage(image:ExactAssetImage(foods[index].imagePath), 
                        fit: BoxFit.cover,
                        
                        ),
                      
                      ),
                     
                     
                         child: Container(
                             height: 30.0,
                              width: 10.0,
                                  decoration: BoxDecoration(
                                 gradient: LinearGradient(
                                colors: [
                                 Colors.black, Colors.black12
                                   ],
                                   begin: Alignment.bottomCenter,
                                   end: Alignment.center
                                   
              )
              ),
               child: Center(
                        child: Text(foods[index].name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),)
                        
                        
                        ),
                    
            ),
                      
                      
                    ),
                  );
                          },
                itemCount:foods.length,
                ),
              ),
            )
          ],



        ),

      ),

    );
  }

}
