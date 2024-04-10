// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  homePage({super.key});

  // final user = FirebaseAuth.instance.currentUser!;

  // void userSignout(){

  //   FirebaseAuth.instance.signOut();

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions:[

        IconButton(onPressed: (){}, icon:const Icon(Icons.logout))

      ],),
      body: Center(
        child: Text("LOGGED IN AS : ",style: TextStyle(fontSize: 20),),
      ),
    );
  }
}