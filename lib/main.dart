import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=> runApp(MyApp());
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("APP TITLE"),
          backgroundColor: Colors.cyanAccent,
        ),
        body: ListView.builder(
            itemCount: 6,
            itemBuilder: (context,index){
          return Container(
            height: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text("CATEGORIES",style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20),),
                SizedBox(height: 5,),
                Container(
                  height: 100,
                  child:ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return Padding(padding: EdgeInsets.only(left: 5),
                        child: Card(
                          shape: CircleBorder(),
                          elevation: 5,

                          child: Stack(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                color: Colors.cyan[50],
                                  shape: BoxShape.circle,
                                   /* gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.green.shade800,
                                          Colors.yellow.shade600,
                                        ]),*/
                                   border: Border.all(width: 2, color: Colors.deepPurpleAccent)                              ),

                              ),
                              Positioned(
                                top: 20,
                                  bottom: 5,
                                  left: 20,
                                  right: 20,
                                  child: Container(
                                    child: Image.asset("assets/solo.png"),

                              )),


                            ],
                          ),

                        ),
                        );
                      }) ,
                ),


              ],
            ),
          );



        }),
      ),
    );
  }
}
