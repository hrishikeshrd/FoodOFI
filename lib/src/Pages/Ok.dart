import 'package:flutter/material.dart';

class OkPage extends StatefulWidget{

  @override
  _OkPageState createState() => _OkPageState();

}

class _OkPageState extends State<OkPage>{

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Order confirmed!', style: TextStyle(color: Colors.white),),backgroundColor: Colors.black,),
      body: Card(
      child: Center(
        child: 
      Image(
        image: AssetImage('assets/tick.jpg'),
        height: 65,
        width: 65,
        ) ,
        
        ),
      ),
      
    
      );
  }


}

