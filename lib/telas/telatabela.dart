import 'package:flutter/material.dart';
import 'telaestoque.dart';

class telatabela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC0CA33),
        title: Text("Cadastro"),
      ),
      body: listatabelas(),
    );
  }
}

class listatabelas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(children: <Widget>[
      ListTile(
          leading: Icon(
            Icons.list,
            color: Colors.black87,
          ),
          title: Text("Atacado"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => telaestoque()));
          }),
      ListTile(
          leading: Icon(
            Icons.list,
            color: Colors.black87,
          ),
          title: Text("Varejo"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => telaestoque()));
          })]);
  }
}
