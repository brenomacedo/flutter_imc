import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Calculadora de IMC",
    home: Home()
  ));
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
          )
        ]
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Icon(Icons.person_outline, size: 120.0, color: Colors.blue[600]),
          Container(
            child: TextField(keyboardType: TextInputType.number, decoration: InputDecoration(
              labelText: "Peso em KG",
              labelStyle: TextStyle(color: Colors.blue[600])
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blue[600], fontSize: 25)
            ),
            padding: EdgeInsets.symmetric(horizontal: 10)
          ),
          Container(
            child: TextField(keyboardType: TextInputType.number, decoration: InputDecoration(
              labelText: "Peso em KG",
              labelStyle: TextStyle(color: Colors.blue[600])
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blue[600], fontSize: 25)
            ),
            padding: EdgeInsets.symmetric(horizontal: 10)
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
      ),
    );
  }
}