import 'package:flutter/material.dart';
import 'package:nacional/src/const/global_const.dart';
import 'package:nacional/src/screens/home_page.dart';
import 'package:nacional/src/widgets/custom_text.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _nameController = new TextEditingController();
  String _email;
  String _password;
  String _displayName;
  bool _obsecure = false;

  void _loginUser() {
    _email = _emailController.text;
    _password = _passwordController.text;
    _emailController.clear();
    _passwordController.clear();
  }

  void _homepage() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    Widget logo() {
      return Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 140,
          child: Stack(
            children: [
              Positioned(
                child: Align(
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: pink),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Positioned(
                  child: Container(
                child: CustomText(
                  text: "Nacional",
                  size: 20,
                  weight: FontWeight.bold,
                  color: white,
                ),
                alignment: Alignment.center,
              )),
              Positioned(
                width: MediaQuery.of(context).size.width * 0.08,
                height: MediaQuery.of(context).size.width * 0.08,
                bottom: 0,
                right: MediaQuery.of(context).size.width * 0.32,
                child: Container(
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      //backgroundColor: pink,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.pink,
            Colors.pink,
          ],
        )),
        child: Padding(
            child: Container(
              child: Container(
                //decoration: BoxDecoration(color: Theme.of(context).canvasColor),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(90.0),
                      topRight: Radius.circular(90.0)),
                  child: Container(
                    child: ListView(
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              logo(),
                              Padding(
                                padding: EdgeInsets.only(bottom: 20, top: 20),
                                child: _input(Icon(Icons.email), "EMAIL",
                                    _emailController, false),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: _input(Icon(Icons.vpn_key), "PASSWORD",
                                    _passwordController, true),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 32),
                                  child: FlatButton(
                                    child: CustomText(
                                      text: "Forgot Password ?",
                                      color: grey,
                                      weight: FontWeight.bold,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom),
                                child: Container(
                                  child: _button(
                                      "ENTRAR",
                                      Colors.white,
                                      Colors.pink,
                                      Colors.pink,
                                      Colors.white,
                                      _homepage),
                                  height: 50,
                                  width: MediaQuery.of(context).size.width,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomePage(),
                                      ));
                                },
                                child: CustomText(
                                  text: "Criar Conta",
                                  size: 20,
                                  color: pink,
                                  weight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    height: MediaQuery.of(context).size.height / 1.1,
                    width: MediaQuery.of(context).size.width,
                    color: white,
                  ),
                ),
              ),
            ),
            padding: EdgeInsets.only(top: 80)),
      ),
    );
  }
}

Widget _input(
    Icon icon, String hint, TextEditingController controller, bool obsecure) {
  return Container(
    padding: EdgeInsets.only(left: 20, right: 20),
    child: TextField(
      controller: controller,
      obscureText: obsecure,
      style: TextStyle(
        fontSize: 20,
      ),
      decoration: InputDecoration(
          hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          hintText: hint,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: pink,
              width: 2,
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: pink,
                width: 3,
              )),
          prefixIcon: Padding(
            child: IconTheme(data: IconThemeData(color: pink), child: icon),
            padding: EdgeInsets.only(left: 30, right: 10),
          )),
    ),
  );
}

Widget _button(String text, Color splashColor, Color highligthColor,
    Color fillColor, Color textColor, void funcition()) {
  return RaisedButton(
      highlightElevation: 0.0,
      splashColor: splashColor,
      highlightColor: highligthColor,
      elevation: 0.0,
      color: fillColor,
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
      child: CustomText(
        text: text,
        color: textColor,
        weight: FontWeight.bold,
        size: 20,
      ),
      onPressed: () {
        funcition();
      });
}
