

//import 'dart:html';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/components/default_button_custome_color.dart';
import 'package:toko_gitar_flutter/components/custom_surfix_icon.dart';
import 'package:toko_gitar_flutter/screen/login/LoginScreens.dart';
import 'package:toko_gitar_flutter/size_config.dart';
import 'package:toko_gitar_flutter/utils/constants.dart';

class SignUpform extends StatefulWidget {
  @override 
  _SignUpform createState() => _SignUpform();
}


class _SignUpform extends State<SignUpform> {

final _formkey = GlobalKey<FormState>();
String? NamaLengkap;
String? Email;
String? Username;
String? Password;
bool? remember = false;

TextEditingController txtNamaLengkap = TextEditingController(),
                      txtEmail = TextEditingController(),
                      txtUserName = TextEditingController(),
                      txtPassword = TextEditingController();
                      

   FocusNode focusNode = new FocusNode();

@override
Widget build(BuildContext context) {
  return Form(
    child: Column(
      children: [
        buildNamaLengkap(),
        SizedBox(height: getProportionateScreenHeight(30)),
         buildEmail(),
        SizedBox(height: getProportionateScreenHeight(30)),
         buildUserName(),
        SizedBox(height: getProportionateScreenHeight(30)),
        buildPassword(),
        SizedBox(height: getProportionateScreenHeight(30)),
        Row(
          children: [
            Checkbox(
              value: remember, 
              onChanged: (value) {
                setState(() {
                remember = value;
              });
            }),
            Text("Tetap Masuk"),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Text("Lupa Password", 
              style: TextStyle(decoration: TextDecoration.underline),
            ),
            )
          ],  
        ),
        DefaultButtonCustomeColor(
          color: kColorYellow, 
          text: "Register",
          press: () {},
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, LoginScreen.routName);
              },
              child: Text("Sudah Punya Akun? Masuk  Disini", 
              style: TextStyle(decoration: TextDecoration.underline),
            ),
            )
      ],
      ),
      );
}

TextFormField buildNamaLengkap() {
  return TextFormField(
    controller: txtUserName,
    keyboardType: TextInputType.text,
    style: mTitleStyle,
    decoration: InputDecoration(
      labelText: 'Nama Lengkap',
      hintText: 'Masukkan Nama Lengkap Anda',
      labelStyle: TextStyle(
        color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/User.svg",
          )),
  );
}

TextFormField buildEmail() {
  return TextFormField(
    controller: txtUserName,
    keyboardType: TextInputType.text,
    style: mTitleStyle,
    decoration: InputDecoration(
      labelText: 'Email',
      hintText: 'Masukkan Email Anda',
      labelStyle: TextStyle(
        color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Mail.svg",
          )),
  );
}

TextFormField buildUserName() {
  return TextFormField(
    controller: txtUserName,
    keyboardType: TextInputType.text,
    style: mTitleStyle,
    decoration: InputDecoration(
      labelText: 'UserName',
      hintText: 'Masukkan UserName Anda',
      labelStyle: TextStyle(
        color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/User.svg",
          )),
  );
}


TextFormField buildPassword() {
  return TextFormField(
    controller: txtPassword,
    obscureText: true,
    style: mTitleStyle,
    decoration: InputDecoration(
      labelText: 'Password',
      hintText: 'Masukkan Password Anda',
      labelStyle: TextStyle(
        color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Lock.svg",
          )),
  );
}
}