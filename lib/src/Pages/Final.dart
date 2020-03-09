import 'package:flutter/material.dart';
import 'package:project1/src/Pages/Ok.dart';

class FinalPage extends StatefulWidget{

  @override
  _FinalPageState createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage>{

   int group=1;
  @override
  Widget build(BuildContext context){
    
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Place your order",style: TextStyle(fontSize: 18, ),),
      ) ,
      
      body: Column(
        mainAxisAlignment : MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height:10 ,),
        Text("Select your Payment Option", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        SizedBox(height: 50,),
          
        Row(children: <Widget>[
        Radio(
          value: 1,
          groupValue: group,
          activeColor: Colors.blue,
          onChanged: (val){
            print(val);
            setState(() {
              group = val;
            });
          },
        ), 
        Text('Cash/Card On Delivery (COD)', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        ],
        ),
         
         Row(children: <Widget>[
         
         Radio(
          value: 2,
          groupValue: group,
          activeColor: Colors.blue,
          onChanged: (val){
            print(val);
            setState(() {
              group = val;
            });
            },
        ) ,
          Text('Debit Card (Card details already saved)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        ],),

        Row(children: <Widget>[
        Radio(
          value: 3,
          groupValue: group,
          activeColor: Colors.blue,
          onChanged: (val){
            print(val);
            setState(() {
              group = val;
            });
            },
        ) ,
          Text('Paytm / PayPal', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        ],
        ),

        SizedBox(height: 30 ,),
        GestureDetector(
               onTap:(){
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => OkPage()));
               }, 
                 child: Container(
                 
                 height: 50,
                 decoration: BoxDecoration(
                   
                   color: Colors.blueAccent,
                   borderRadius: BorderRadius.circular(30)
                 ),
                 child: Center(child: Text("Place Your Order", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),),
                 
               ),
             ),
        
      ],
      ),
      );
  }
}