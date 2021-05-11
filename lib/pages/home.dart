import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/img/home.jpg'),
            fit: BoxFit.cover
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Universe Explorer',
            style: TextStyle(
                color: Colors.white54,
                decoration: TextDecoration.none
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.arrow_forward_rounded),
            label: Text('INICIAR'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlanetsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}