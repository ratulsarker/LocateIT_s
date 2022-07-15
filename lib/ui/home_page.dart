import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(0, 156, 255, 1),
        // add body
        body: Body());
  }
}

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  
  String location = "";
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children:<Widget>[
            Container(
              width: 350,
              padding: EdgeInsets.fromLTRB(20, 40, 30, 0),
              alignment: Alignment.topLeft,
              child: CupertinoTextField(
                padding: EdgeInsets.all(16),
                placeholder: 'Search',
                placeholderStyle: TextStyle(color: Colors.white),
                style: TextStyle(color:Colors.white),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  border: Border.all(
                    color: Colors.white,
                    width: 3
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                cursorColor: Colors.white,
                onSubmitted: (value) => print('Submitted $value')),
              ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:Text(
                "Recommended Locations",
              )
            )
          ]
      ),
    );
  }
}
