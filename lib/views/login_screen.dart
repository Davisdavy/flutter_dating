import 'package:dating/repository/login_repository.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap:(){
            ///Go back to welcome screen here
            ///Pop route
            Navigator.of(context).pop();//will pop the current page an back to the previous page

          },
            child: const Icon(
          FontAwesomeIcons.xmark,
          color: Colors.black,
          size: 28.0,
        )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text("Login", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 32, color: Colors.black),),
              const SizedBox(height: 80.0,),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0)
                ),
              ),
              const SizedBox(height: 32.0,),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0)
                ),
              ),
              const SizedBox(height: 80.0,),

              GestureDetector(
                onTap: (){
                  //Login request
                  LoginRepository().postUserData(emailController.text, passwordController.text);
                },
                child: Container(
                  height: 50.0,
                  width: size.width,
                  color: Colors.black,
                  child: const Center(child:  Text("LOGIN", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16),)),
                ),
              ),
              const SizedBox(height: 45.0,),
              const Center(child: Text("Forgot your password?", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),)),
              const SizedBox(height: 80.0,),
              Container(
                height: 50.0,
                width: size.width,
               decoration: BoxDecoration(
                 border: Border.all(color: Colors.blue,)
               ),
                child: const Center(child:  Text("LOGIN WITH FACEBOOK", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700, fontSize: 16),)),
              ),
              const SizedBox(height: 45.0,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Don't have an account?", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),),
                  SizedBox(width: 5.0,),
                  Text("Sign up", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
