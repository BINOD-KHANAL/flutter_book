
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/models/book.dart';
import 'package:ui/screen/detail-page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final top =MediaQuery.of(context).padding.top;
    final appBar =AppBar();
    final actualHeight=height-50-top;

    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size(double.infinity,50 ),//double.infinity ley scerren ko jati xa teti size linxa.
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:AppBar(
            title:Text('Hi Binod,',style: TextStyle(color: Colors.black)),
           backgroundColor: Colors.transparent,
            //paxadi kei dinu xa bhaney appbar ma actions use garney
            // centerTitle: true,
            //colorzilla bata pick gareko color use garna agadi ko #hatera 0xff use gareny
            //backgroundColor: Color(0xffA6BAD3)
            actions: [
              Icon(Icons.search,color:Colors.black,size:30),
              Icon(Icons.notification_add,color:Colors.black)
            ],
            elevation: 0,
          ),

        ),
      ),

      body: SafeArea(
        child: Container(

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(

             children: [
              Container(
                height: actualHeight*(100/3/100),
                  width: double.infinity,

                  child: Image.network('https://images.unsplash.com/photo-1543002588-bfa74002ed7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',fit: BoxFit.cover ,)

              ),
               SizedBox(height: 10,),
               Container(
                 height: actualHeight*(100/3/100),

                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                     itemCount:books.length,
                     itemBuilder: (context,index){
                     final book = books[index];
                       return InkWell(
                         splashColor:Colors.pink ,
                         onTap: (){

                           Get.to(DetailScreen(book),
                               transition:Transition.leftToRight);



                           print('hello $index');
                         },
                         child: Container(
                           height: actualHeight*(100/3/100),
                           width: 340,
                           child: Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 4),
                                 child: Image.asset(book.imageUrl),
                               ),
                               SizedBox(width: 5,),
                               Expanded(
                                 child: Column(
                                   children: [
                                     Text(book.title ,style: TextStyle(fontWeight:FontWeight.bold),),
                                     SizedBox(height: 5,),
                                     Text(book.overview,maxLines: 7,
                                     style: TextStyle(),overflow:TextOverflow.ellipsis,textAlign:TextAlign.justify,),
                                     Row(
                                       children: [
                                         Text(book.rating),
                                         SizedBox(width: 20),
                                         Text(book.genre,style: TextStyle(fontWeight: FontWeight.bold),)
                                       ],
                                     )



                                   ],
                                 ),
                               )
                             ],

                           ),
                         ),
                       );



                    }
                     ),


               ),
               Row(
                 children: [
                   Text('you May also like this',style: TextStyle(fontWeight:FontWeight.bold),)
                 ],
               ),
               
               Container(
                 
                 height: 140,
                 width: double.infinity,
                 
                 child: ListView.builder(

                     itemCount:books.length,
                     scrollDirection:Axis.horizontal,
                     itemBuilder: (context,index){
                       return Container(

                         width: 100,
                         child: Padding(

                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             children: [
                               Image.asset(books[index].imageUrl),
                               Text(books[index].genre)
                               ,
                             ],
                           ),
                         ),
                       );

                     }),

               )






             ],

            ),
          ),




        ),

      ),
    );
  }
}

// child: Column(
//   children: [
//     Container(
//       height:actualHeight*(100/3/100),
//       color:Colors.green,
//
//     ),
//     Container(
//       height:actualHeight*(100/3/100),
//       color:Colors.yellow,
//
//     ),
//     Container(
//       height:actualHeight*(100/3/100),
//       color:Colors.blue,
//
//     ),
//
//   ],
// ),
