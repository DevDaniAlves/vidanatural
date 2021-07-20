import 'package:flutter/material.dart';
import 'telaestoque.dart';

class estoquefixo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC0CA33),
        title: Text("Cadastro"),
      ),
      body: listaestoquefixo(),
    );
  }
}


class listaestoquefixo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(children: <Widget>[

    ]);
  }
}
