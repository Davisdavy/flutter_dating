import 'package:dating/views/login_screen.dart';
import 'package:dating/views/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   statusBarColor: Colors.transparent,
    // ));
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/dating.webp"), fit: BoxFit.cover)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 22.0, bottom: 70.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const SizedBox(
                      width: 220.0,
                      child: Text(
                        "Dating, better than ever before",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 42,
                           fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),

                    const Text(
                      "We know, finding love can be hard.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),

                    const Text(
                      "We think it shouldn't be.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 22.0),
                      child: GestureDetector(
                        onTap: (){
                          ///Navigate to a new page
                          Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
                        },
                        child: Container(
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: const Center(child: Text("Login", style: TextStyle(fontSize: 18.0, color: Colors.red,fontWeight: FontWeight.w700),)),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 15.0,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 22.0),
                      child: GestureDetector(
                        onTap: (){
                          ///Navigate to a new page
                          Navigator.push(context, MaterialPageRoute(builder: (_) => const SignUpScreen()));
                        },
                        child: Container(
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: const Center(child: Text("Sign Up", style: TextStyle(fontSize: 18.0, color: Colors.white,fontWeight: FontWeight.w700),)),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 15.0,
                    ),

                    const Center(
                      child:  Text(
                        "or log in with",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(FontAwesomeIcons.facebook, color: Colors.white, size: 22.0,),
                          SizedBox(width: 20.0,),
                          Icon(FontAwesomeIcons.twitter, color: Colors.white, size: 22.0,),
                          SizedBox(width: 20.0,),
                          Icon(FontAwesomeIcons.instagram, color: Colors.white, size: 22.0,),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
