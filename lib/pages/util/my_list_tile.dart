import 'package:flutter/material.dart';

class ListeElemani extends StatelessWidget{
  final iconImagePath;
  final gtitle;
  final subTitle;

  const ListeElemani({
    Key? key,
    required this.iconImagePath,
    required this.gtitle,
    required this.subTitle,
}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //icon
          Container(
            height: 80,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(iconImagePath),
          ),
          SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(gtitle, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
              SizedBox(height: 5,),
              Text(subTitle, style: TextStyle(fontSize:10, color:Colors.black),)
            ],
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),

    );
  }

}