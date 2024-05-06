import 'package:chaty/pages/loginPage.dart';
import 'package:chaty/pages/registerPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

void main() {
  runApp(Chaty());
}

class Chaty extends StatelessWidget {
  const Chaty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('en'),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      initialRoute: 'LoginPage',
      routes: {
        LoginPage.id : (context)=>const LoginPage(),
        RegisterPage.id : (context)=>const RegisterPage()
      },
    );
  }
}
