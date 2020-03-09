import 'package:flutter/material.dart';

class SearchField extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
           elevation: 5.0,
           borderRadius: BorderRadius.circular(30.0),
            child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 12.0),
            hintText: "Search Any food",
            suffixIcon: Material(
                        elevation: 5.0,
                        child: Icon(
                        Icons.search,
                        color: Colors.black,
                ),
            ),
            border: InputBorder.none
          ),
        ),
      ),
    );
  }
}