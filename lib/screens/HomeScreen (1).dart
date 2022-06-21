import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:page_transition/page_transition.dart';
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

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {

  @override
  void _goToEvidenceScreen(BuildContext context) async {

  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value:SystemUiOverlayStyle(
        systemNavigationBarColor: Theme.of(context).accentColor, // status bar icons' colortion bar icons' color
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
              statusBarIconBrightness: Theme.of(context).brightness,
              statusBarBrightness: Brightness.light,
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            ListView(
              children: [
                SizedBox(height: 15),
                SizedBox(
                  width: 354.0,
                  height: 36.0,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Tu Pedido',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 63.0,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: new FlatButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {

                            },
                            child: new SvgPicture.asset("assets/drawable/icons/notification_icon.svg", height: 30, color: Theme.of(context).primaryColor,),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 92.0,
                        top: 0,
                        child: Container(
                          width: 7.0,
                          height: 7.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFFFF0000),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: new FlatButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {

                          },
                          child: new SvgPicture.asset("assets/drawable/icons/settings_icons.svg", height: 30, color: Theme.of(context).primaryColor,),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sistema De Ventas Premium',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sistema de ventas para administracion\nde negocios de abarrotes.',
                      style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 270,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children:  <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Numero De Pedido :',
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                            ),
                            Text(
                              'ABCDE21345',
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0, color: const Color(0xFF006FFF)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Estado :',
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                            ),
                            Text(
                              'En Planeacion',
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Fecha De Creacion :',
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                            ),
                            Text(
                              '01/09/2021',
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Fecha De Entrega :',
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                            ),
                            Text(
                              '14/09/2021',
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Codigo De Descuento :',
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                            ),
                            Text(
                              'PRUEBA500',
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Precio Del Proyecto :',
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                            ),
                            Text(
                              '\$ 14,999',
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Monto Pagado :',
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                            ),
                            Text(
                              '\$ 500',
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Restante A Pagar :',
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                            ),
                            Text(
                              '\$ 14,999',
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ) ,
                ),
              ],
            ),
            Positioned(
              bottom: 315,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Container(
                      height: 92,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Theme.of(context).accentColor,
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context).primaryColor.withOpacity(0.10),
                            offset: Offset(0, 1.0),
                            blurRadius: 30.0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(bottom: 1.0, top: 3.0),
                            child: Row(
                              children: [
                                SizedBox(width: 8),
                                Image.asset("assets/drawable/check_icon.png", width: 61),
                                SvgPicture.asset("assets/drawable/icons/seguimiento_full.svg", width: 32),
                                SizedBox(width: 4),
                                Image.asset("assets/drawable/document_icon.png", height: 54),
                                SizedBox(width: 7),
                                SvgPicture.asset("assets/drawable/icons/seguimiento_full.svg", width: 32),
                                SizedBox(width: 9),
                                Image.asset(isDarkMode ? 'assets/drawable/code_icon_dark.png' : 'assets/drawable/code_icon.png', height: 32,),
                                SizedBox(width: 9),
                                SvgPicture.asset("assets/drawable/icons/seguimiento_less.svg", width: 30),
                                SizedBox(width: 9),
                                Image.asset("assets/drawable/finished_icon.png", height: 57),
                                SizedBox(width: 17),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 1.0),
                            child: Row(
                              children: [
                                Text(
                                  'Creacion',
                                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14.5, color: const Color(0xFF006FFF)),
                                ),
                                SizedBox(width: 11),
                                Text(
                                  'En Planeacion',
                                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14.5, color: const Color(0xFF006FFF)),
                                ),
                                SizedBox(width: 11),
                                Text(
                                  'En Desarrollo',
                                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14.5, color: const Color(0xFF006FFF)),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'Finalizado',
                                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14.5),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.33,
              minChildSize: 0.33,
              maxChildSize: 0.956,
              builder: (context, scrollControllable) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Theme.of(context).accentColor,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).primaryColor.withOpacity(0.10),
                        offset: Offset(0, 1.0),
                        blurRadius: 30.0,
                      ),
                    ],
                  ),
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    controller: scrollControllable,
                    children: [
                      Center(
                        child: SvgPicture.asset("assets/drawable/icons/top_arrow.svg", width: 33, color: Theme.of(context).primaryColor),
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: Text(
                          'Ultimas Actualizaciones',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          children: [
                            Container(
                              height: 145,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Theme.of(context).accentColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Theme.of(context).primaryColor.withOpacity(0.10),
                                    offset: Offset(0, 0.1),
                                    blurRadius: 30.0,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 15.0, left: 15, right: 15, bottom: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Los planos de su proyecto han concluido',
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                        ),
                                        SizedBox(height: 6),
                                        Text(
                                          'El dise�o de su proyecto ha sido finalizado, puede verlo en las evidencias. (PDF)',
                                          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '09/08/2021',
                                          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Theme.of(context).canvasColor),
                                        ),
                                        SizedBox(width: 20),
                                        FlatButton(
                                          splashColor: Colors.transparent,
                                          minWidth: 10,
                                          highlightColor: Colors.transparent,
                                          onPressed: () {
                                            _goToEvidenceScreen(context);
                                          },
                                          child: Text(
                                            'Ver evidencia',
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: const Color(0xFF006FFF)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          children: [
                            Container(
                              height: 145,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Theme.of(context).accentColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Theme.of(context).primaryColor.withOpacity(0.10),
                                    offset: Offset(0, 1.0),
                                    blurRadius: 30.0,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 15.0, left: 15, right: 15, bottom: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Los planos de su proyecto han concluido',
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                        ),
                                        SizedBox(height: 6),
                                        Text(
                                          'El dise�o de su proyecto ha sido finalizado, puede verlo en las evidencias. (PDF)',
                                          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '09/08/2021',
                                          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Theme.of(context).canvasColor),
                                        ),
                                        SizedBox(width: 20),
                                        FlatButton(
                                          splashColor: Colors.transparent,
                                          minWidth: 10,
                                          highlightColor: Colors.transparent,
                                          onPressed: () {
                                            _goToEvidenceScreen(context);
                                          },
                                          child: Text(
                                            'Ver evidencia',
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: const Color(0xFF006FFF)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          children: [
                            Container(
                              height: 145,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Theme.of(context).accentColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Theme.of(context).primaryColor.withOpacity(0.10),
                                    offset: Offset(0, 1.0),
                                    blurRadius: 30.0,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 15.0, left: 15, right: 15, bottom: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Los planos de su proyecto han concluido',
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                        ),
                                        SizedBox(height: 6),
                                        Text(
                                          'El dise�o de su proyecto ha sido finalizado, puede verlo en las evidencias. (PDF)',
                                          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '09/08/2021',
                                          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Theme.of(context).canvasColor),
                                        ),
                                        SizedBox(width: 20),
                                        FlatButton(
                                          splashColor: Colors.transparent,
                                          minWidth: 10,
                                          highlightColor: Colors.transparent,
                                          onPressed: () {
                                            _goToEvidenceScreen(context);
                                          },
                                          child: Text(
                                            'Ver evidencia',
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: const Color(0xFF006FFF)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
