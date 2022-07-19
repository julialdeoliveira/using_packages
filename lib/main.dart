import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app/presenter/home/home_page.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}