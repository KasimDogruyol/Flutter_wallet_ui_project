import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {

  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard({Key,key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300.0,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Balance',
          style:TextStyle(color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold)),
          SizedBox(height: 10.0,),
          Text('\$' + balance.toString(),
          style:TextStyle(color: Colors.white,fontSize: 30.0,
          fontWeight: FontWeight.bold)),
          SizedBox(height: 10.0,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
            Text(cardNumber.toString(),
            style:TextStyle(color: Colors.white)),
            SizedBox(width: 10.0,),
            Text(expiryMonth.toString()+ '/' + expiryYear.toString(),
            style:TextStyle(color: Colors.white)),
          ])
        ],)
        
      ) 
    );
}
}