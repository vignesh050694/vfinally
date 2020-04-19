import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SettingsMenu extends StatefulWidget {
  @override
  _SettingsMenuState createState() => _SettingsMenuState();
}

class _SettingsMenuState extends State<SettingsMenu> {
  List<String> items = List<String>();

  @override
  void initState() {
    super.initState();
    items.add("Preferences");
    items.add("Team");
    items.add("Contact Us");
    items.add("About & Legal");
    items.add("Help");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VFinally'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          height: 1,
          indent: 1,
          color: Colors.grey,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if(index == 1){
                Navigator.pushNamed(context, '/team');
              }
            },
            child: ListTile(
              title: Text('${items[index]}'),
            ),
          );
        },
      ),
    );
  }
}
