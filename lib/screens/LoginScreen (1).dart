import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/services.dart';
import '../main.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'ForgotPasswordScreen.dart';
import 'HomeScreen.dart';
import 'SignUpScreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent,
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreen createState() => _LoginScreen();
}

@override
void _goToSignUpScreen(BuildContext context) async {
  Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 300), child: SignUpScreen()));
}

@override
void _goToForgotPasswordScreen(BuildContext context) async {
  Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTop, duration: Duration(milliseconds: 300), child: ForgotPasswordScreen()));
}

class _LoginScreen extends State<LoginScreen> {
  @override
  void _goToHomeScreen(BuildContext context) async {
    Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 300), child: HomeScreen()));
  }

  void _showError() {
    showDialog(
        context: context,
        barrierColor: Colors.transparent,
        builder: (BuildContext ctx) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: AlertDialog(
              backgroundColor: Theme.of(context).accentColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              elevation: 20,
              title: Center(
                child: Text(
                  'Datos Incorrectos',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
              ),
              content: Container(
                height: 160,
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'El incio de sesion no se completo correctamente, por favor\nvuelva a intentarlo.', textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18.0),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SvgPicture.asset("assets/drawable/icons/incorrect_icon.svg", height: 74),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void _showRight() {
    showDialog(
        context: context,
        barrierColor: Colors.transparent,
        builder: (BuildContext ctx) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: AlertDialog(
              backgroundColor: Theme.of(context).accentColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              elevation: 20,
              title: Center(
                child: Text(
                  'Email Enviado',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
              ),
              content: Container(
                height: 160,
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Hemos enviado un email a tu correo electronico, porfavor revisa\ntu bandeja de entrada.', textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18.0),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SvgPicture.asset("assets/drawable/icons/correct_icon.svg", height: 74),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

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
                Align(
                  child: Container(
                    width: 360.0,
                    height: 300.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/drawable/blurs/blue_blur.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child:
                    SvgPicture.asset("assets/drawable/login_asset.svg", width: 375, height: 300,),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Iniciar Sesion',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0),
                    ),
                  ),
                ),
                SizedBox(height: 3),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Inicia Sesion para comenzar con el\nseguimiento de tu pedido.',
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
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Colors.red,
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
                                color: Theme.of(context).primaryColor,
                                fontSize: 19.5
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
                          cursorColor: Colors.red,
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
                                color: Theme.of(context).primaryColor,
                                fontSize: 19.5
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: new FlatButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {
                              _goToSignUpScreen(context);
                            },
                            child: new Text('No Tienes Cuenta ?', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 19.0),),
                          )
                      ),
                    ),
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
                            _goToHomeScreen(context);
                          },
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [Color(
                                    0xFFff0000), Color(0xffbd6100)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(30.0)
                            ),
                            child: Container(
                              constraints: BoxConstraints(maxWidth: 325.0, maxHeight: 58.0),
                              alignment: Alignment.center,
                              child: Text(
                                "Iniciar Sesion",
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
                    SizedBox(height: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("O inicia sesion con", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 19),),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {
                            _showRight();
                          },
                          child: new SvgPicture.asset("assets/drawable/icons/google_icon.svg", height: 30),
                        ),
                        FlatButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {
                            _showError();
                          },
                          child: new SvgPicture.asset("assets/drawable/icons/facebook_icon.svg", height: 30),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      ],
                    ),
                    SizedBox(height: 10),
                    FlatButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        _goToForgotPasswordScreen(context);
                      },
                      child: new Text('Olvidaste Tu Contraseña ?', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18.0),),
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
