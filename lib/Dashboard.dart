import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text("Dashboard", style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.zero,),
                    Container(
                      width: 200.0,
                      height: 150.0,
                      child: const DrawerHeader(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("Images/pic.jpg")),
                        ),
                        child: Text('Drawer Header'),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.person,
                        color: Colors.blue,),
                      title: Text("Profil", style: TextStyle(
                        color: Colors.blue, fontSize: 20,),),
                      subtitle: Text("Voir mon profil"),
                      trailing: Icon(Icons.play_arrow_rounded),
                      onTap: (){},
                    ),
                    ListTile(
                      leading: Icon(Icons.storage_outlined,
                        color: Colors.blue,),
                      title: Text("Stock", style: TextStyle(
                        color: Colors.blue, fontSize: 20,),),
                      subtitle: Text("Voir l'état du Stock"),
                      trailing: Icon(Icons.play_arrow_rounded),
                      onTap: (){},),
                    ListTile(
                      leading: Icon(Icons.category_rounded,
                        color: Colors.blue,),
                      title: Text("Catégorie", style: TextStyle(
                        color: Colors.blue, fontSize: 20,),),
                      subtitle: Text("Gérer le catégories"),
                      trailing: Icon(Icons.play_arrow_rounded),
                      onTap: (){},),
                    ListTile(
                      leading: Icon(Icons.settings,
                        color: Colors.blue,),
                      title: Text("Paramètre", style: TextStyle(
                        color: Colors.blue, fontSize: 20,),),
                      subtitle: Text("Gérer les paramètre"),
                      trailing: Icon(Icons.play_arrow_rounded),
                      onTap: (){},),
                    SizedBox(height: 140,),
                    ListTile(
                      leading: Icon(Icons.logout,
                        color: Colors.blue,),
                      title: Text("Deconnexion", style: TextStyle(
                        color: Colors.blue, fontSize: 20,),),
                      trailing: Icon(Icons.play_arrow_rounded),
                      onTap: (){},),
                  ],
                ),
              ),
            )
          ],
        ),
      ),

       );
  }
}

