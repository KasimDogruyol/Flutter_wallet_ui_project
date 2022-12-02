import 'package:flutter/material.dart';
import '/pages/homepage.dart';
import '/pages/util/my_card.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);//açıklaması altta
  //biz flutter final yada const oluşturduktan sonra bunları benim çağırmam şart key ve super key bölümünü
  // key in olayı şu tanımlamış olduğum const u  bir anahatar lazım constun anahtarı key oluyor bun constun içine girebileyim diye
  //super ise key in anahtarı oluyor super iel key i çağarıyoruz aynı şekilde bu düzen final içinde geçerli


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomePage(),
    );
  }
}

