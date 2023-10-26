import 'package:flutter/material.dart';

class DoarDoadorPage extends StatefulWidget {
  const DoarDoadorPage({Key? key}) : super(key: key);

  @override
  State<DoarDoadorPage> createState() => _DoarDoadorPageState();
}

class _DoarDoadorPageState extends State<DoarDoadorPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Doar pagina"),
          
        ),
      ],
    );
  }
}
