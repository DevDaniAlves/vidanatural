import 'package:flutter/material.dart';

class telaestoque extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC0CA33),
        title: Text("Estoque"),
      ),
      body: listaestoque(),
    );
  }
}

class listaestoque extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(children: <Widget>[
      ListTile(
          leading: Icon(
            Icons.list_alt,
            color: Colors.black87,
          ),
          title: Text("Estoque Fixo"),
          subtitle: Text(
            "Produtos em Estoque",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => telaestoque()));
          }),
      ListTile(
          leading: Icon(
            Icons.directions_car,
            color: Colors.black87,
          ),
          title: Text("Estoque em Trânsito"),
          subtitle: Text(
            "Produtos com Vendedores",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => telaestoque()));
          }),
      ListTile(
          leading: Icon(
            Icons.work,
            color: Colors.black87,
          ),
          title: Text("Estoque Produção"),
          subtitle: Text(
            "Materiais Para Produção",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => telaestoque()));
          }),
      ListTile(
          leading: Icon(
            Icons.add_shopping_cart,
            color: Colors.black87,
          ),
          title: Text("Pedidos de Compra"),
          subtitle: Text(
            "Materiais em Fim de Estoque",
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
