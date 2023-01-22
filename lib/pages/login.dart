import 'package:flutter/material.dart';
import 'package:project1/pages/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const LogoSection(),
          const EmailField(),
          LoginButton(
            imagePath: "lib/assets/google2.png",
            buttonColor: Colors.white,
            shadowColor: Colors.grey,
            text: "Continue with Google",
            press: () {},
            textColor: Colors.black,
          ),
          LoginButton(
            imagePath: "lib/assets/facebook.png",
            buttonColor: Colors.white,
            shadowColor: Colors.grey,
            textColor: Colors.black,
            text: "Continue with Facebook",
            press: () {},
          ),
          const TermsAndConditions()
        ],
      ),
    );
  }
}

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 32.0, right: 32, top: 16),
      child: Text.rich(
        TextSpan(
          text: 'By tapping Continue with Google or Facebook, Your agree to the ',
          style: TextStyle(fontSize: 12),
          children: <TextSpan>[
            TextSpan(
              text: "Terms of Use ",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
            TextSpan(text: "and "),
            TextSpan(
                text: "Privecy Policy",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ))

            // can add more TextSpans here...
          ],
        ),
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 32,
              right: 32,
            ),
            child: Text(
              "Enter your email to continue",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 32,
              right: 32,
              top: 10.0,
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                //labelText: 'Enter Name',
                hintText: 'Enter Your Name',
              ),
            ),
          ),
          SizedBox(
            width: 800,
            child: LoginButton(
              imagePath: "lib/assets/email.png",
              buttonColor: Colors.black,
              shadowColor: Colors.grey,
              textColor: Colors.white,
              text: "Continue",
              press: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage())),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 32,
              right: 32,
            ),
            child: Divider(
              height: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class LogoSection extends StatelessWidget {
  const LogoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Your destination for inspiration",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
        ),
        // const SizedBox(
        //   height: 10,
        // ),
        SizedBox(
          height: 200,
          width: 200,
          child: Image.asset("lib/assets/dabdoopLogo1.png"),
        ),
        // const SizedBox(
        //   height: 10,
        // ),
      ],
    );
  }
}

class LoginButton extends StatelessWidget {
  String imagePath;
  Color buttonColor;
  Color shadowColor;
  Color textColor;
  String text;
  Function() press;

  LoginButton({
    required this.imagePath,
    required this.buttonColor,
    required this.shadowColor,
    required this.textColor,
    required this.text,
    required this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, right: 32, top: 16),
      child: ElevatedButton(
        // ignore: prefer_const_constructors
        style: ElevatedButton.styleFrom(
          shadowColor: shadowColor,
          backgroundColor: buttonColor,
        ),
        onPressed: press,
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset(imagePath),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: TextStyle(color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
