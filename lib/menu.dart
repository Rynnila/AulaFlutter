import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ajuda.dart';
import 'package:flutter_application_1/documentos.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/sistema.dart';

class NewMenu extends StatelessWidget {
  const NewMenu({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      child: Drawer(
        child: Material(
          color: Colors.blue,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal:20, vertical: 30),
            children: [
              cabecalho(nome: 'Aly', 
               email: 'alinnynhagamer@gmail.com', 
               link: 'https://imagens.ne10.uol.com.br/veiculos/_midias/jpg/2022/01/03/597x330/1_cachorro-20389356.jpg',
               clique: ()=>itemSelecao(context, 4)),
               const SizedBox(
                 height:16
               ),
              menuItem(texto: "Sistema", icone: Icons.settings_system_daydream,
              clique: ()=>itemSelecao(context, 1)),
              const SizedBox(
                 height:16
               ),
              menuItem(texto: "Documentos", icone: Icons.document_scanner,
              clique: ()=>itemSelecao(context, 2)),
              const SizedBox(
                 height:16
               ),
              menuItem(texto: "Ajuda", icone: Icons.help,
              clique: ()=>itemSelecao(context, 3)),
            ],
          )
          ,)
      ),
    );
  }

  Widget menuItem({
    required String texto, 
    required IconData icone, 
    VoidCallback? clique}){
    return ListTile(
        leading: Icon(icone, color:Colors.white),
        title: Text(texto, style: TextStyle(color: Colors.white)),
        hoverColor: Colors.white70,
        onTap:clique,
     );
    }

    void itemSelecao(BuildContext context, int i){
      Navigator.of(context).pop();
      if(i==1){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Sistema()));
      }else if (i==2){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Documentos()));
      }else if (i==3){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Ajuda()));
      }else if (i==4){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyApp()));
      }
    }

    cabecalho({
      required String nome,
      required String email,
      required String link,
      required VoidCallback clique,
    }) =>
      InkWell(
        onTap: clique,
        child: Row(
          children: [
            CircleAvatar(radius:30, backgroundImage: NetworkImage(link),),
            Column(
              children: [
                Text(nome, style: TextStyle(color: Colors.white, fontSize: 10),),
                Text(email, style: TextStyle(color: Colors.white, fontSize: 10),),
              ],
            )
        ]),
      );
}