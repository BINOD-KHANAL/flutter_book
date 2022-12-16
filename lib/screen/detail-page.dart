import 'package:flutter/material.dart';

import '../models/book.dart';




class DetailScreen extends StatelessWidget {
final Book book;
DetailScreen(this.book);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

          child: ListView(
            children: [
              Container(
                height: 300,
                  width: double.infinity,

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(book.imageUrl,fit:BoxFit.fill,),
                  )),

              Row(
                children:
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(book.title,style: TextStyle(fontWeight:FontWeight.bold ),),
                  ),
                Spacer(),
                  Column(
                    children: [
                      Text(book.rating),
                      SizedBox(height: 10,),
                      Text(book.genre)
                    ],
                  ),


                ],

              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                        width: double.infinity,

                        child: Text(book.overview)),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        minimumSize: Size(120,50),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    primary:Colors.blueGrey

                ),
                        onPressed: (){

                        }, child: Text('Read Book')),
                    SizedBox(width: 50,),
                    ElevatedButton(
                        style:ElevatedButton.styleFrom(
                            minimumSize: Size(120,50),
                            shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),


                        ),
                        onPressed: (){

                        }, child: Text('more info'))

                  ],

                ),
              )

            ],

          )
      ),
    );
  }
}
