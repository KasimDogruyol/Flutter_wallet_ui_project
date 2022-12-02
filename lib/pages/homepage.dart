import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/pages/util/my_button.dart';
import 'package:wallet_app/pages/util/my_card.dart';
import 'package:wallet_app/pages/util/my_list_tile.dart';

class HomePage extends StatefulWidget{ // içersine dışardaki widgetları alıyor statefulwidget statelesswidgetda bunu yapamayız
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage>{
  final controller = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
          //appBar:
          Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Row(
                children:[
                  Text('My',style:TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)),
              Text('Cards',style:TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.blue)),
                ]
              ),
              Container(
                padding:EdgeInsets.all(4.0),
                decoration:BoxDecoration(
                  color:Colors.grey[600],
                  shape:BoxShape.circle,
                ),
                child:Icon(Icons.add),
                ),
                
              
              

            ],
          ),
          ),
          SizedBox(height: 30.0,),
          Container(
            height: 200.0,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: controller,
              children: [
                MyCard(
                  balance: 1000.0,
                  cardNumber: 123456789,
                  expiryMonth: 12,
                  expiryYear: 2022,
                  color: Colors.blue,
                ),
                MyCard(
                  balance: 2000.0,
                  cardNumber: 123456789,
                  expiryMonth: 12,
                  expiryYear: 2022,
                  color: Colors.red,
                ),
                MyCard(
                  balance: 3000.0,
                  cardNumber: 123456789,
                  expiryMonth: 08,
                  expiryYear: 2024,
                  color: Colors.green,
                ),
                
                
              ],
            ),
          ),
          SizedBox(height: 30.0,),
          SmoothPageIndicator(controller: controller,
           count: 3,
           effect: ExpandingDotsEffect(activeDotColor: Colors.purple),),
           // 3 kartım avr o yüzden 3 yazdım
            SizedBox(height: 25.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child :Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             //send buttuon
              MyButton(iconImagePath: 'lib/images/money.jpg', buttonText: 'Send',),
              
              MyButton(iconImagePath: 'lib/images/bill.png', buttonText: 'Bills',),
              
              MyButton(iconImagePath: 'lib/images/pay.png', buttonText: 'Pay',),
              ],
            ),
          ),
          SizedBox(height: 25.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 ListeElemani(
                     iconImagePath: "lib/images/statics.png",
                     gtitle: "İstatistikler",
                     subTitle: "Gelir ve  giderler."
                 ),
                 SizedBox(height: 8,),
                 ListeElemani(
                     iconImagePath: "lib/images/transactions.png",
                     gtitle: "İşlemler",
                     subTitle: "İşlemler geçmişi"
                 ),
                
              ],
            ),
          ),
          

          
        ],),
        
        ),
     

      


      //cards
      


      //3buttons -> send + pay + bills


      //Column -> stats + transactions
    );
  }
}