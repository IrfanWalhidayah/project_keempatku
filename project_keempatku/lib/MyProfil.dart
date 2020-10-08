import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';



class MyProfil extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return

      new Scaffold(

        appBar: AppBar(

          backgroundColor: Colors.red,

          title: Text("Profil"),

          centerTitle: true,

        ),

        body: ListView(

          children: <Widget>[

            Container(

              color: Colors.white,

              child: Stack(

                children: <Widget>[

                  Padding(

                    padding: EdgeInsets.only(top: 3),

                    child: Align(

                      alignment: Alignment.topCenter,

                      child: Container(

                        height: 200,

                        width: 200,

                        decoration: BoxDecoration(

                            image: DecorationImage(image: AssetImage('images/1.jpg'),
                                fit: BoxFit.cover

                            )

                        ),

                      ),

                    ),

                  ),

                ],

              ),

            ),



            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[

                  SizedBox(height: 30),

                  Text('MY BIODATA',

                    style: TextStyle(

                      fontWeight: FontWeight.bold,

                      fontSize: 20,

                      color: Colors.red,

                    ),

                  ),
                  SizedBox(height: 40),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[

                      Text('Irfan Walhidayah',

                        style: TextStyle(

                            fontSize: 20,

                            color: Colors.black,
                            fontWeight: FontWeight.w600

                        ),

                      ),

                    ],

                  ),
                  SizedBox(height: 10),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[

                      Text('irfanwalhidayah@gmail.com',

                        style: TextStyle(

                            fontSize: 18,

                            color: Colors.black,

                        ),

                      ),

                    ],

                  ),
                  SizedBox(height: 10),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[

                      Text('Teknik Informatika | SIFORS',

                        style: TextStyle(

                            fontSize: 20,

                            color: Colors.black

                        ),

                      ),

                    ],

                  ),
                  SizedBox(height: 10),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[

                      Text('Medan - Singaraja',

                        style: TextStyle(

                            fontSize: 15,

                            color: Colors.black

                        ),

                      ),

                    ],

                  ),
                ],

              ),

            ),



          ],

        ),

      );

  }

}