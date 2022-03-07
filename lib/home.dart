import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_teste/principal.dart';
import 'package:mobx_teste/store/contador.store.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  //final store = ContadorStore();
  

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ContadorStore>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'meu teste',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Observer(
                //   builder: (_) => Text(
                //     '${store.contador}',
                //     style: TextStyle(fontSize: 20),
                //   ),
                // ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(labelText: 'Email'),
                  onChanged: store.setEmail,
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(labelText: 'Senha'),
                  onChanged: store.setSenha,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Observer(
                    builder: (_) => Text(
                        ' ${store.emailSenha}| ${store.fomularioValidado ? 'Válido' : 'Campos inválidos'}'),
                  ),
                ),
                Observer(
                  builder: (_) => ElevatedButton(
                    onPressed: store.fomularioValidado
                        ? () {
                            store.logar();
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (_) => Principal()));
                          }
                        : null,
                    // onPressed: store.incrementar,
                    child: store.carregando
                        ? CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation(Colors.white),
                          )
                        : Text(
                            'Logar',
                            style: TextStyle(color: Colors.black, fontSize: 30),
                          ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
