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

  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  String _infoText = "Informe seus dados";

  void _resetFields() {
    weightController.text = "";
    heightController.text = "";
    setState(() {
      _infoText = "Informe seus dados";
    });
  }

  void _calculate() {

    if(weightController.text.length == 0 || heightController.text.length == 0) {
      return;
    }

    double weight = double.parse(weightController.text);
    double height = double.parse(heightController.text);
    double imc = weight / (height*height/10000);
    double realimc = (imc*100).floor()/100;

    setState(() {
      if(imc < 18.6) {
        _infoText = "$realimc - Abaixo do peso";
      } else if(imc >= 18.6 && imc <= 25) {
        _infoText = "$realimc - Normal";
      } else {
        _infoText = "$realimc - Acima do peso";
      }
    });
  }

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
            onPressed: _resetFields,
          )
        ]
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
            child: Column(
            children: [
              Icon(Icons.person_outline, size: 120.0, color: Colors.blue[600]),
              Container(
                child: TextField(keyboardType: TextInputType.number, decoration: InputDecoration(
                  labelText: "Peso em kg",
                  labelStyle: TextStyle(color: Colors.blue[600]),
                ),
                controller: weightController,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue[600], fontSize: 25)
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.0)
              ),
              Container(
                child: TextField(keyboardType: TextInputType.number, decoration: InputDecoration(
                  labelText: "Altura em cm",
                  labelStyle: TextStyle(color: Colors.blue[600])
                ),
                controller: heightController,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue[600], fontSize: 25)
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                
              ),
              Container(
                child: RaisedButton(
                  child: Text("Calcular", style: TextStyle(color: Colors.white, fontSize: 25.0)),
                  onPressed: _calculate,
                  color: Colors.blue[600]
                ),
                height: 80.0,
                padding: EdgeInsets.all(10.0)
              ),
              Text(_infoText, textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue[600], fontSize: 20.0))
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ),
      )
    );
  }
}