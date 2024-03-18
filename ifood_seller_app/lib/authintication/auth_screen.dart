import 'package:flutter/material.dart';
import 'package:ifood_seller_app/authintication/login.dart';
import 'package:ifood_seller_app/authintication/register.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,

            automaticallyImplyLeading: false,
            title: const Text(
              "iFood",
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
                fontFamily: "Lobster",
              ),
            ),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.lock, color: Colors.white,),
                  text: "Login",
                ),
                Tab(
                  icon: Icon(Icons.person, color: Colors.white,),
                  text: "Register",
                ),
              ],
              indicatorColor: Colors.white38,
              indicatorWeight: 6,
            ),
          ),
          body: Container(

            child: const TabBarView(
              children: [
               LoginScreen(),
                RegisterScreen(),
              ],
            ),
          ),
        ),
      );
  }
}
