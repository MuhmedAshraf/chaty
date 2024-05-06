import 'package:chaty/constantse.dart';
import 'package:chaty/generated/l10n.dart';
import 'package:chaty/pages/registerPage.dart';
import 'package:chaty/widgets/custom_textFilled.dart';
import 'package:chaty/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static String id = 'LoginPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  kPrimaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10, top: 40),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset('assets/images/scholar.png'),
                ),
                const Center(
                  child: Text(
                    'Scholar Chat',
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontFamily: 'Pacifico'),
                  ),
                ),
                SizedBox(height: 30,),
                 Text(
                  S.of(context).login,
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFiled(
                  hintText: S.of(context).email,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFiled(
                  hintText: S.of(context).password,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(text: S.of(context).login,),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      S.of(context).haveNotAccount,
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      child:  Text(
                        S.of(context).register,
                        style: TextStyle(color: Color(0xffC7EDE6)),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context,RegisterPage.id);
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
