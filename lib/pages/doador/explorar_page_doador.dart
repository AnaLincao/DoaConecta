import 'package:flutter/material.dart';

class ExplorarDoadorPage extends StatefulWidget {
  const ExplorarDoadorPage({Key? key}) : super(key: key);

  @override
  State<ExplorarDoadorPage> createState() => _ExplorarDoadorPageState();
}

class _ExplorarDoadorPageState extends State<ExplorarDoadorPage> {
  @override
  Widget build(BuildContext context) {
     return ListView(
      children: [
        ListTile(
          title: Text("Explorar pagina"),
          
        ),
      ],
    );
  }
}

