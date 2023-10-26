import 'package:flutter/material.dart';
//import 'package:trilhaapp/pages/pagina1.dart';
//import 'pagina2.dart';
//import 'pagina3.dart';

class MainPageOng extends StatefulWidget {
  const MainPageOng({Key? key}) : super(key: key);

  @override
  State<MainPageOng> createState() => _MainPageOngState();
}

class _MainPageOngState extends State<MainPageOng> {
  @override
  Widget build(BuildContext context) {
    int currentPageIndex = 0;

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("DoaConecta"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leadingWidth: 100.0,
      ),

      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Theme.of(context).highlightColor,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.handshake),
            icon: Icon(Icons.handshake_outlined),
            label: 'Donate',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.message),
            icon: Icon(Icons.message_outlined),
            label: 'Message',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SearchAnchor(
            builder: (BuildContext context, SearchController controller) {
          return SearchBar(
            controller: controller,
            padding: const MaterialStatePropertyAll<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 16.0)),
            onTap: () {
              controller.openView();
            },
            onChanged: (_) {
              controller.openView();
            },
            leading: const Icon(Icons.search),
          );
        }, suggestionsBuilder:
                (BuildContext context, SearchController controller) {
          return List<ListTile>.generate(5, (int index) {
            final String item = 'item $index';
            return ListTile(
              title: Text(item),
              onTap: () {
                setState(() {
                  controller.closeView(item);
                });
              },
            );
          });
        }),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
