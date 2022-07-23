import 'package:firebase_auth/firebase_auth.dart';
import 'authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:locate_it/authentication_service.dart';
import 'package:locate_it/ui/home_page/body_home.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:locate_it/ui/login_page/login_page.dart';
import 'package:provider/provider.dart'; ////////////////////////
import 'my_home_page.dart';
import 'package:firebase_core/firebase_core.dart';

// ignore: unused_import
import 'ui/home_page/home_page.dart';
import 'my_home_page.dart';
import 'ui/login_page/body_signup.dart';

Future<void> main() async {
  // await dotenv.load(fileName: '.env');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const LocateIt());
}

class LocateIt extends StatefulWidget {
  const LocateIt({Key? key}) : super(key: key);

  @override
  State<LocateIt> createState() => _LocateItState();
}

class _LocateItState extends State<LocateIt> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //trying out firebase
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
          // builder: (context, child) {
          //   return const MaterialApp(
          //     title: 'Flutter Demo',
          //     home: AuthenticationWrapper(),
          //   ),
          // },
        ),
        StreamProvider(
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
          initialData: null,
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: AuthenticationWrapper(),
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    if (firebaseUser != null) {
      return const MyHomePage();
    }
    return const LoginPage();
  }
}
