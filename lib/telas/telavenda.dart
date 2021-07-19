import 'package:flutter/material.dart';
import 'telaestoque.dart';

class telavenda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC0CA33),
        title: Text("Gestão de Vendas"),
      ),
      body: listavenda(),
    );
  }
}

class listavenda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(children: <Widget>[
      ListTile(
          leading: Icon(
            Icons.add,
            color: Colors.black87,
          ),
          title: Text("Venda"),
          subtitle: Text(
            "Realize uma nova venda",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => telaestoque()));
          }),
      ListTile(
          leading: Icon(
            Icons.shopping_cart_outlined,
            color: Colors.black87,
          ),
          title: Text("Orçamento"),
          subtitle: Text(
            "Previa dos valores de um pedido",
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
          title: Text("Listagem de Vendas"),
          subtitle: Text(
            "Lista de Vendas",
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
