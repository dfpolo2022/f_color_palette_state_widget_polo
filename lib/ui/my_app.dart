import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/color_utils.dart';
import 'pages/color_selection_page.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  String stateColor = '5F7161';
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // vamos a convertir este widget a uno con estado
  @override
  Widget build(BuildContext context) {
    // vamos a usar GetMaterialApp para pdoer usar un diálogo sin context
    return GetMaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: ColorUtils.CreateMaterialColor('5F7161'),
      ),
      debugShowCheckedModeBanner: false,
      home: ColorSelectionPage(callback: showColor), // vamos a pasarle updatePrimarySwatchColor como función
    );
  }
}

void showColor (String value){
  setState((){
    stateColor = value;
  });
}
