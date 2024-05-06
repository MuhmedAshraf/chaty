import 'package:chaty/generated/l10n.dart';
import 'package:chaty/pages/loginPage.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_textFilled.dart';
import '../widgets/custom_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static String id = 'RegisterPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475E),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(
                flex: 2,
              ),
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
              const Spacer(
                flex: 2,
              ),
              Text(
                S.of(context).register,
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
              CustomButton(
                text: S.of(context).register,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).haveAccount,
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    child: Text(
                      S.of(context).login,
                      style: TextStyle(color: Color(0xffC7EDE6)),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              const Spacer(
                flex: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
