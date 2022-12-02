import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const MyButton({Key? key,
    required this.iconImagePath,
    required this.buttonText,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
         Container(
                height: 80.0,
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 10,
                      blurRadius: 40,
                       
                    ),
                  ],
                  
                ),
                child: Center(
                  child: Image.asset(iconImagePath),
                )
              ),
              SizedBox(height: 20.0,),
              Text(buttonText,
              style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
      ]
    );
  }
}