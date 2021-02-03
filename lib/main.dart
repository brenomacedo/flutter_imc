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
      body: SingleChildScrollView(
          child: Column(
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
              padding: EdgeInsets.symmetric(horizontal: 10.0)
            ),
            Container(
              child: TextField(keyboardType: TextInputType.number, decoration: InputDecoration(
                labelText: "Peso em KG",
                labelStyle: TextStyle(color: Colors.blue[600])
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue[600], fontSize: 25)
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.0)
            ),
            Container(
              child: RaisedButton(
                child: Text("Calcular", style: TextStyle(color: Colors.white, fontSize: 25.0)),
                onPressed: () {},
                color: Colors.blue[600]
              ),
              height: 80.0,
              padding: EdgeInsets.all(10.0)
            ),
            Text("Info", textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blue[600], fontSize: 20.0))
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
        ),
      ),
    );
  }
}