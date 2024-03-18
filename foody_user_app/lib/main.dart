import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foody_user_app/splashScreen/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'assistantMethods/cart_Item_counter.dart';
import 'assistantMethods/total_amount.dart';
import 'firebase_options.dart';
import 'global/global.dart';

Future<void> main() async
{

  WidgetsFlutterBinding.ensureInitialized();

  sharedPreferences = await SharedPreferences.getInstance();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (c)=> CartItemCounter()),
        ChangeNotifierProvider(create: (c)=> TotalAmount()),
        // ChangeNotifierProvider(create: (c)=> AddressChanger()),
      ],
      child: MaterialApp(
        title: 'Riders App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MySplashScreen(),
      ),
    );
  }
}





