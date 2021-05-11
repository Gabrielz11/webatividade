import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}
class _AuthPageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 0, top: 0, bottom: 0),
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('../assets/img/homeimg.jpg'),
                    fit: BoxFit.cover
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 0, right: 10,bottom: 0),
              decoration: BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black26,
                    offset: new Offset(0.0, 2.0),
                    blurRadius: 25.0,
                  )
                ],
                color: Colors.white,
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 16, top: 10),
                    child: Text(
                      'Bem-vindo(a)!',
                      style:
                      TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 16, right: 16, top: 32, bottom: 8),
                    child: TextField(
                      style: TextStyle(fontSize: 18),
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                        hintText: 'CPF ou Número do Cartão SUS',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                    child: TextField(
                      keyboardType: TextInputType.datetime,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'Data de Nascimento (Ex: 15/05/1972)',
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.green, shape: BoxShape.rectangle),
                        child: Container(
                          height: 40.0,
                          width: 1000,
                          child:ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.lightBlue, // background
                              onPrimary: Colors.white, // foreground
                            ),
                            onPressed: () { },
                            child: Text('Entrar'),
                          ),
                        ),
                      )),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.all(2),
                        child: Container(
                          child: TextButton(
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.black, // foreground
                            ),
                            onPressed: () { },
                            child: Text('Cadastrar-se aqui'),
                          ),
                        ),
                      )),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.only(left: 0, top: 2,right: 0,bottom: 20),
                        child: Container(
                          child: TextButton(
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.black, // foreground
                            ),
                            onPressed: () { },
                            child: Text('Dúvidas Frequentes'),
                          ),
                        ),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 40, right: 10,bottom: 0),
              decoration: BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black26,
                    blurRadius: 25.0,
                  )
                ],
                color: Colors.white,
              ),
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(25.0),
                          child: Icon(
                            FontAwesomeIcons.laptopMedical,
                            size: 60.0,
                            color: const Color(0xFFF11932),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(25.0),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          child: Text(
                            'Urgência',
                            textAlign: TextAlign.left,
                            style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.teal),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}