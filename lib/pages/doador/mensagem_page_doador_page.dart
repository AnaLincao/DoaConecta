import 'package:flutter/material.dart';

class MensagemDoadorPage extends StatefulWidget {
  const MensagemDoadorPage({Key? key}) : super(key: key);

  @override
  State<MensagemDoadorPage> createState() => _MensagemDoadorPageState();
}

class _MensagemDoadorPageState extends State<MensagemDoadorPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Usuário 2"),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Olá! Tudo bem?"),
              Text("08:59"),
            ],
          ),
          trailing: PopupMenuButton<String>(
            onSelected: (menu) {
              if (menu == "opcao2") {}
            },
            itemBuilder: (BuildContext bc) {
              return <PopupMenuEntry<String>>[
                PopupMenuItem<String>(value: "opcao1", child: Text("Opção 1")),
                PopupMenuItem<String>(value: "opcao2", child: Text("Opção 2")),
                PopupMenuItem<String>(value: "opcao3", child: Text("Opção 3")),
              ];
            },
          ),
        ),
      ],
    );
  }
}
