import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Icon(Icons.arrow_back),
            Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.grey[300],
              width: 300,
              child: Text("search product"),
            ),
            Icon(Icons.shop),
            Icon(Icons.notifications),
          ],),
        ),
        body: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  ),
                child: Image.asset('assets/img1.webp'),
              ),
              Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("8.6",style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 30),
                      ),
                    Icon(Icons.favorite)
                  ],
                ),
                
              ),

              const Text(" BARD It is a long established fact that a reader will be distracted by the readable content"),
              Container(child: 
                const Row(children: [
                  Icon(Icons.star),
                  Text("5.0(354)   |   543 sale      booknow    "
                      ),

                ],)
              ,),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(children: [Text("variant")],),
                    Row(
                      children: [
                        Text("size:Xl"),

                        
                      ],
                    ),
                    Row(children: [
                      Container(

                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width:2.0,
                            ),
                            ),
                            width:2.0,
                            child: Text("XS"),
                      ),
                      Container(

                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width:2.0,
                            ),
                            ),
                            width:2.0,
                            child: Text("s"),
                      ),
                      Container(

                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width:2.0,
                            ),
                            ),
                            width:2.0,
                            child: Text("M"),
                      ),
                      Container(

                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width:2.0,
                            ),
                            ),
                            width:2.0,
                            child: Text("XL"),
                      ),
                      
                      Container(

                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width:2.0,
                            ),
                            ),
                            width:2.0,
                            child: Text("XS"),
                      )


                    ],)
                  ],
                ),
              ),
              Card(
              child: Row(
                children: [
                  Icon(
                    Icons.message,
                    color: Colors.blue,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 40.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'Add to Shopping Cart',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ),
                  )
                ],
              ),
            )
            
          ],
          
        ),
        
        ),

    );
  }
}