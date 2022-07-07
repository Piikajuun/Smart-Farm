import 'package:farm_flutter/Home/HomePage.dart';
import 'package:farm_flutter/Home/signup.dart';
import 'package:flutter/material.dart';

class Start1 extends StatefulWidget {
  @override
  _Start1State createState() => _Start1State();
}

class _Start1State extends State<Start1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 120),
                Image.asset(
                  'asset/logo.webp',
                  width: 200,
                ),
                SizedBox(height: 20),
                RounderInputField(
                  //email
                  onchanged: (value) {},
                ),
                RounderPasswordField(
                  //password
                  onChanged: (value) {},
                ),
                SizedBox(height: 10),
                RounderButton(
                  text: "LOGIN",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomePage();
                        },
                      ),
                    );
                  },
                ),
                SizedBox(height: 10),
                AccountCheck(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUp();
                        },
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have an Account?" : "Please craete account",
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "  Sign Up" : "  Sign In",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class RounderButton extends StatelessWidget {
  final String text;
  final Function press;
  const RounderButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        // ignore: deprecated_member_use
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: Colors.black12,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class RounderPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RounderPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainner(
      child: TextFormField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: 'Password',
            suffixIcon: Icon(
              Icons.visibility,
              color: Colors.black,
            ),
            border: InputBorder.none),
      ),
    );
  }
}

class RounderInputField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onchanged;
  const RounderInputField({
    Key key,
    this.hintText,
    this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainner(
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: onchanged,
        decoration: InputDecoration(
          hintText: 'Email',
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class TextFieldContainner extends StatelessWidget {
  final Widget child;
  const TextFieldContainner({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.7,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
