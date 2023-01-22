import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:application_gestion/login.dart';
import 'package:application_gestion/Sinscrire.dart';
import 'package:application_gestion/Dashboard.dart';



void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("Bienvenue", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),),
                    SizedBox(height: 30,),
                    Text("Votre espace de Gestion de Stock Beauty Fashion",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 16,
                      ),),
                  ],
                ),
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('Images/shopping.png')
                      )
                    ),
                  ),
                Column(
                  children: <Widget> [
                    MaterialButton(
                      minWidth: double.infinity,
                        height: 60,
                        onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                        },
                        color: Colors.orange,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text("Se Connecter", style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 19
                        ),),
                    ),
                    SizedBox(height: 30,),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                          top:    BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                        )
                      ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
                        },
                        color: Colors.orange,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text("S'inscrire", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 19
                        ),),
                      ),
                    )
                  ],
                )
              ],
            ),

          )),
    );
  }
}