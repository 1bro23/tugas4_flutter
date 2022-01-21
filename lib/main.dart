import 'package:flutter/material.dart';

void main(){
  runApp( 
    MaterialApp(
      home:HomePage()
    )
  );
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: 
      AppBar(
        backgroundColor: Colors.pinkAccent[200],
        leading: Icon(Icons.home),
        title: Center(
          child: Text("Tugas 4 Flutter"),
        ),
        actions: <Widget>[
          Icon(Icons.search)
        ],
      ),
      body: 
      Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Image.network("https://images.pexels.com/photos/2919720/pexels-photo-2919720.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
              )
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Card1(),
              ),
              Expanded(
                child: Card2()
              )
            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "View Image Mountain",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Card1 extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Card(
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(10)),
          Image.network("https://images.pexels.com/photos/371633/pexels-photo-371633.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
          Padding(padding: EdgeInsets.all(5)),
          Text(
            "Gambar 1",
            style: TextStyle(
              fontSize: 20
            ),
          )
        ],
      )
    );
  }
}

class Card2 extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Card(
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(7)),
          Image.network("https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
          Padding(padding: EdgeInsets.all(5)),
          Text(
            "Gambar 2",
            style: TextStyle(
              fontSize: 20,
              color: Colors.red
            ),
          )
        ],
      )
    );
  }
}