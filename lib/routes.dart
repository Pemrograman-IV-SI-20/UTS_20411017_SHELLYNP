


import 'package:flutter/cupertino.dart';
import 'package:toko_gitar_flutter/screen/login/LoginScreens.dart';
import 'package:toko_gitar_flutter/screen/register/Registrasi.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routName: (context) => LoginScreen(),
  RegisterScreen.routName: (context) => RegisterScreen()
};