
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/screen/home.dart';

void main(){
runApp(MainPage());


}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),


    );

  }
}

