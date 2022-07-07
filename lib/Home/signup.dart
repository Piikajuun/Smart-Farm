import 'package:farm_flutter/Home/start1.dart';
import 'package:farm_flutter/Setup/Profile.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();

  Profile profile = Profile();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Start1();
                },
              ),
            );
          },
        ),
        title: Text(
          'Register',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20),
                  Image.asset(
                    'asset/logo.webp',
                    width: 180,
                  ),
                  SizedBox(height: 20),
                  TextFieldContainner(
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (String name) {
                        profile.name = name;
                      },
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: 'Name',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextFieldContainner(
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (String email) {
                        profile.email = email;
                      },
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextFieldContainner(
                    child: TextFormField(
                      obscureText: true,
                      onSaved: (String password) {
                        profile.password = password;
                      },
                      onChanged: (value) {},
                      decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Colors.black,
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                  TextFieldContainner(
                    child: TextFormField(
                      obscureText: true,
                      // onSaved: (String password) {
                      //   profile.password = password;
                      // },
                      onChanged: (value) {},
                      decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                      width: size.width * 0.5,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            color: Colors.black12,
                            onPressed: () {
                              formKey.currentState.save();
                              print(
                                  "name =${profile.name} email =${profile.email} password = ${profile.password}");
                              formKey.currentState.reset();
                            },
                            child: Text(
                              'LOGIN',
                              style: TextStyle(color: Colors.black),
                            ),
                          ))),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
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
      height: size.height * 0.07,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
