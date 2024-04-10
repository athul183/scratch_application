
import 'package:flutter/material.dart';
import 'package:scratch_application/screens/auth/mybutton.dart';
import 'package:scratch_application/screens/auth/squaretile.dart';
import 'package:scratch_application/screens/auth/textfield.dart';
import 'package:scratch_application/screens/home/views/home_screen.dart';



class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernamecontroller = TextEditingController();

  final passwordcontroller = TextEditingController();

  // void signUserIn() async{

  //   showDialog(context: context, builder: (context){
  //     return const Center(
  //       child: CircularProgressIndicator(),
  //     );
  //   }); 

  //   try{
  //     Navigator.pop(context);
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: usernamecontroller.text, 
  //     password: passwordcontroller.text);
  //   }
    
  //    on FirebaseAuthException catch (e){
      
  //     if(e.code =='user-not-found'){
  //       wrongEmailMessage();
  //     }
  //     else if(e.code == "wrong-password"){
  //      wrongPasswordMessage();
  //     }  
  //   }
  // } 

  void wrongEmailMessage(){

    showDialog(context: context, builder: (context){

      return const AlertDialog(
        title: Text("Incorrect email"),
      );
      
    });

  } 
  void wrongPasswordMessage(){

    showDialog(context: context, builder: (context){

      return const AlertDialog(
      
        title: Text("Incorrect password"),
      );
      
    });

  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[300],

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50,),
                Text('Welcome to \nExpense Manager', style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Quicksand'
                ),),
                // const Icon(Icons.lock,size: 100,),
                const SizedBox(height: 50,),
          
                // Text("HeY",style: TextStyle(
                //   color: Colors.grey.shade700,
                //   fontSize: 16,
                // ),),
                const SizedBox(height: 25,),
          
                MyTextField(
                  controller: usernamecontroller,
                  hintText: 'Username',
                  obsureText: false,
                ),
                const SizedBox(height: 10,),
                MyTextField(
                  controller: passwordcontroller,
                  hintText: 'Password',
                  obsureText: true,
                ),
          
                const SizedBox(height: 10,),
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot Password?", style: TextStyle(color: Colors.grey[600]),),
                    ],
                  ),
                ),
          
                const SizedBox(height: 25,),
          
                MyButton(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen() ));
                  },
                  ),
          
                const SizedBox(height: 50,),
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(child: Divider(thickness: 0.5,color: Colors.grey[400],)),
                
                      Text(' Or Continue with ',style: TextStyle(color: Colors.grey[600]),),
                
                      Expanded(child: Divider(thickness: 0.5,color: Colors.grey[400],))
                    ],
                  ),
                ),
          
                const SizedBox(height: 50,),
          
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  MyLogo(imagepath: 'assets/logo/glogo.png'),
          
                  SizedBox(width: 10,),
          
                  MyLogo(imagepath: 'assets/logo/ioslogo.png')
                ],),
          
                const SizedBox(height: 30,),
          
                const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Don't have an account? ",),
                  SizedBox(width: 6,),
                  Text("Register Now",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                ],)
              ],
            ),
          ),
        ),
      ),

    );
  }
}