import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UrgencyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UrgencyStateInfo();
  }
}
class _UrgencyStateInfo extends State<UrgencyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          AppBar(
            title: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    FontAwesomeIcons.laptopMedical,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 0, right: 0,bottom: 0),
                    child: Text("Urgência"),
                  )
                ],
              ),
            ),

            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context,true);
              },
            ),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.teal,
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Acidente de trânsito com vítima',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.teal),
                  ),
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 44,
                      minHeight: 44,
                      maxWidth: 44,
                      maxHeight: 44,
                    ),
                    child: Image.asset('../assets/img/acidente.png', fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: <Widget>[
                          Text(
                            "PASSOS",
                            style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.teal),
                          ),

                        ],
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          const Expanded(
                            child: Text(
                              "1. Ligue 193 - SIATE",
                              style:
                              TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.teal),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          const Expanded(
                            child: Text(
                              "2. Sinalize bem o local, observe sua segurança",
                              style:
                              TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.teal),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          const Expanded(
                            child: Text(
                              "3. Não mova a vítima do local, a não ser que haja risco de explosão.",
                              style:
                              TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.teal),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                      color: Colors.transparent,
                      child: ElevatedButton(
                            onPressed: () {
                              // Respond to button press
                            },
                            child: Text("LIGUE 193 - SIATE"),
                        )
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 0, top: 10, right: 0,bottom: 10),
                  child:  ListTile(
                    title: Text(
                      'Urgências',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.teal),
                    ),
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 44,
                        maxHeight: 44,
                      ),
                      child: Image.asset('../assets/img/ambulancia.png', fit: BoxFit.cover),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      print('193');
                      //Navigator.pushNamed(context, TestConfirmation.id);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),









    );
  }
}