import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import '../main.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent,
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreen createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value:SystemUiOverlayStyle(
        systemNavigationBarColor: Theme.of(context).backgroundColor, // status bar icons' colortion bar icons' color
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.light,
            ),
          ),
        ),
        body: Align(
          child: SizedBox(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Registro',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0),
                      ),
                      FlatButton(
                        splashColor: Colors.transparent,
                        minWidth: 10,
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: SvgPicture.asset("assets/drawable/icons/close_icon.svg", height: 25, color: Theme.of(context).primaryColor,),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Si todavia no tienes una cuenta puedes\nregistrarte aqui.',
                      style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Column(
                  children: [
                    SizedBox(height: 25),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Theme.of(context).accentColor,
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).primaryColor.withOpacity(0.10),
                              offset: Offset(0, 1.0),
                              blurRadius: 30.0,
                            ),
                          ],
                        ),
                        child: TextField(
                          cursorColor: Colors.blue,
                          style: TextStyle(
                            fontSize: 18.5,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: new Padding(
                              padding: const EdgeInsets.only( top: 11.5, right: 5, bottom: 10.5),
                              child: new SizedBox(
                                height: 4,
                                child: SvgPicture.asset("assets/drawable/icons/user_icon.svg", width: 15, color: Theme.of(context).primaryColor,),
                              ),
                            ),
                            border: InputBorder.none,
                            hintText: "Nombres",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 19.5,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Theme.of(context).accentColor,
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).primaryColor.withOpacity(0.10),
                              offset: Offset(0, 1.0),
                              blurRadius: 30.0,
                            ),
                          ],
                        ),
                        child: TextField(
                          cursorColor: Colors.blue,
                          style: TextStyle(
                            fontSize: 18.5,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: new Padding(
                              padding: const EdgeInsets.only( top: 11.5, right: 5, bottom: 10.5),
                              child: new SizedBox(
                                height: 4,
                                child: SvgPicture.asset("assets/drawable/icons/user_icon.svg", width: 15, color: Theme.of(context).primaryColor,),
                              ),
                            ),
                            border: InputBorder.none,
                            hintText: "Apellidos",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 19.5,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Theme.of(context).accentColor,
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).primaryColor.withOpacity(0.10),
                              offset: Offset(0, 1.0),
                              blurRadius: 30.0,
                            ),
                          ],
                        ),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Colors.blue,
                          style: TextStyle(
                            fontSize: 18.5,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: new Padding(
                              padding: const EdgeInsets.only( top: 14, right: 5, bottom: 13),
                              child: new SizedBox(
                                height: 4,
                                child: SvgPicture.asset("assets/drawable/icons/email_icon.svg", width: 15, color: Theme.of(context).primaryColor,),
                              ),
                            ),
                            border: InputBorder.none,
                            hintText: "Correo Electronico",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 19.5,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Theme.of(context).accentColor,
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).primaryColor.withOpacity(0.10),
                              offset: Offset(0, 1.0),
                              blurRadius: 30.0,
                            ),
                          ],
                        ),
                        child: TextField(
                          cursorColor: Colors.blue,
                          style: TextStyle(
                            fontSize: 18.5,
                          ),
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            prefixIcon: new Padding(
                              padding: const EdgeInsets.only( top: 11.5, right: 5, bottom: 10.5),
                              child: new SizedBox(
                                height: 4,
                                child: SvgPicture.asset("assets/drawable/icons/password_icon.svg", width: 15, color: Theme.of(context).primaryColor,),
                              ),
                            ),
                            border: InputBorder.none,
                            hintText: "Contraseña",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 19.5,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Theme.of(context).accentColor,
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).primaryColor.withOpacity(0.10),
                              offset: Offset(0, 1.0),
                              blurRadius: 30.0,
                            ),
                          ],
                        ),
                        child: TextField(
                          cursorColor: Colors.blue,
                          style: TextStyle(
                            fontSize: 18.5,
                          ),
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            prefixIcon: new Padding(
                              padding: const EdgeInsets.only( top: 11.5, right: 5, bottom: 10.5),
                              child: new SizedBox(
                                height: 4,
                                child: SvgPicture.asset("assets/drawable/icons/password_icon.svg", width: 15, color: Theme.of(context).primaryColor,),
                              ),
                            ),
                            border: InputBorder.none,
                            hintText: "Confirmar Contraseña",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 19.5,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 250),
                    Align(
                      alignment: Alignment(0.0, 0.0),
                      child: Container(
                        alignment: Alignment(0.0, 0.0),
                        width: 400.0,
                        height: 110.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/drawable/blurs/button_blur.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: RaisedButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {

                          },
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [Color(0xff2DACFF), Color(0xff008EEB)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(30.0)
                            ),
                            child: Container(
                              constraints: BoxConstraints(maxWidth: 325.0, maxHeight: 58.0),
                              alignment: Alignment.center,
                              child: Text(
                                "Registrate",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
