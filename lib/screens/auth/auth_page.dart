
// import 'package:flutter/material.dart';

// class authPage extends StatelessWidget {
//   const authPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges()
      
//       , builder: (context, snapshot){
//         if(snapshot.hasData){
//           return homePage();
//         }
//         else{
//           return LoginPage();
//         }
//       }),

//     );
//   }
// }