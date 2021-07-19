import 'package:flutter/material.dart';

import 'telaestoque.dart';

class telafinaceiro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC0CA33),
        title: Text("Estoque"),
      ),
      body: listafinanceiro(),
    );
  }
}

class listafinanceiro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(children: <Widget>[
      ListTile(
          leading: Icon(
            Icons.money_off,
            color: Colors.black87,
          ),
          title: Text("Contas a Pagar"),
          subtitle: Text(
            "Energia, Água, etc",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => telaestoque()));
          }),
      ListTile(
          leading: Icon(
            Icons.attach_money,
            color: Colors.black87,
          ),
          title: Text("Contas a Receber"),
          subtitle: Text(
            "Vendas",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => telaestoque()));
          }),
      ListTile(
          leading: Icon(
            Icons.business_center,
            color: Colors.black87,
          ),
          title: Text("Controle de Caixa"),
          subtitle: Text(
            "Entradas e Saídas",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
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
          title: Text("Relátorios de Venda"),
          subtitle: Text(
            "Listagem de Vendas",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => telaestoque()));
          })
    ]);

  }
}
