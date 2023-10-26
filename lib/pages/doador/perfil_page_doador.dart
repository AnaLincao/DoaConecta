import 'package:flutter/material.dart';

class PerfilDoadorPage extends StatefulWidget {
  const PerfilDoadorPage({Key? key}) : super(key: key);

  @override
  State<PerfilDoadorPage> createState() => _PerfilDoadorPageState();
}

class _PerfilDoadorPageState extends State<PerfilDoadorPage> {
  @override
  Widget build(BuildContext context) {
     return ListView(
      children: [
        ListTile(
          title: Text("Pagina perfil"),
          
        ),
      ],
    );
  }
}

