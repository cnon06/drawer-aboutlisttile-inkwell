
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        drawer:  Drawer(

          child: Column(
              children:  [
                const UserAccountsDrawerHeader(
                  accountName: Text('Sinan'), 
                  accountEmail: Text('sinan@gmail.com'),
                  currentAccountPicture: CircleAvatar(child: Text("S"),),
                  otherAccountsPictures: [
                    Placeholder(),
                    CircleAvatar(child: Text("S")),
                    CircleAvatar(child: Text("S")),
                  ],
                  ),
                
                Expanded(
                  child: ListView(
                    
                    children: [
                  
                    const ListTile(leading: Icon(Icons.home), title: Text("Main Page"), trailing: Icon(Icons.chevron_right),),
                    const Divider(),
                    const ListTile(leading: Icon(Icons.call), title: Text("Call"), trailing: Icon(Icons.chevron_right),),
                    const Divider(),
                    const ListTile(leading: Icon(Icons.account_box), title: Text("Profile"), trailing: Icon(Icons.chevron_right),),
                    const Divider(),
                    InkWell(
                      onTap: () {
                        
                      },
                      splashColor: Colors.blue[400],
                      child:  const ListTile(
                        leading: Icon(Icons.home), 
                        title: Text("Inkwell"), 
                        trailing: Icon(Icons.chevron_right),
                      ),
                      ),
                    const AboutListTile(
                      applicationName: 'AboutListTile',
                      applicationIcon: Icon(Icons.save),
                      applicationVersion: '2.0',
                      applicationLegalese: 'gfghghh',
                      icon: Icon(Icons.kebab_dining),
                      aboutBoxChildren: [
                        Text('Child1'),
                        Text('Child2'),
                        Text('Child3'),
                      ],
                      child: Text('About Us'),

                    )
                  ],),
                ),
              ],
              
          ),

        ),
        appBar: AppBar(
          title: const Text('Drawer'),
        ),
        body: const Center(
          child: Text('Pull from left side.'),
        ),
      ),
    );
  }
}