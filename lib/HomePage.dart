import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vida_natural_project/telas/telafinanceiro.dart';
import 'package:vida_natural_project/telas/telavenda.dart';

import 'main.dart';
import 'telas/telaestoque.dart';

class TelaPosLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TelaPosLoginState();
  }
}

class _TelaPosLoginState extends State<TelaPosLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFC0CA33),
          title: Text("Gestão Vida Natural ")),
      drawer: CustomDrawer(),
      body: listaTela(),
    );
  }
}

class listaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(children: <Widget>[
      ListTile(
          leading: Icon(
            Icons.all_inbox,
            color: Colors.black87,
          ),
          title: Text("Estoque"),
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
            Icons.add_shopping_cart,
            color: Colors.black87,
          ),
          title: Text("Vendas"),
          subtitle: Text(
            "Vendas e Orçamentos",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => telavenda()));
          }),
      ListTile(
          leading: Icon(
            Icons.attach_money,
            color: Colors.black87,
          ),
          title: Text("Financeiro"),
          subtitle: Text(
            "Controle das Finanças",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => telafinaceiro()));
          }),
      ListTile(
          leading: Icon(
            Icons.add_box,
            color: Colors.black87,
          ),
          title: Text("Cadastros"),
          subtitle: Text(
            "Clientes, Fornecedores, Produtos, etc ",
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
          title: Text("Tabelas"),
          subtitle: Text(
            "Atacado e Varejo ",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => telaestoque()));
          }),
    ]);
  }
}

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Drawer(
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                  currentAccountPicture: new CircleAvatar(
                    radius: 40.0,
                    backgroundColor: const Color(0xFF778899),
                  ),
                  accountName: Text(
                    "Bem Vindo Usuario",
                  ),
                  decoration: BoxDecoration(color: Color(0xFFC0CA33)),
                  accountEmail: Text("E-mail")),
              ListTile(
                  title: Text(
                    "Sair",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text("Fazer Logout"),
                  leading: Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
