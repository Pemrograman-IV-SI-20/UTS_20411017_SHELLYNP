

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/routes.dart';
import 'package:toko_gitar_flutter/screen/login/LoginScreens.dart';
import 'package:toko_gitar_flutter/theme.dart';

void main() async {
  runApp(
    MaterialApp(
      title: "Toko Gitar Shelly",
      theme: theme(),
      initialRoute: LoginScreen.routName,
      routes: routes,
    ));
}