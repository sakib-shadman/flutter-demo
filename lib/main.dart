import 'package:flutter/material.dart';
import 'package:flutter_app_test/Dashboard.dart';
import 'Dashboard.dart';
import 'package:flutter_app_test/Service/LoginService.dart';

void main() => runApp(MaterialApp(home: LoginView()));

class LoginView extends StatefulWidget {
  @override
  LoginViewState createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Image.asset(
                'assets/images/login_header.png',
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 20, right: 24),
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              fontSize: 28.0,
                              color: Color.fromRGBO(169, 169, 169, 1.0),
                              fontFamily: 'Montserrat-Medium'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          "assets/images/settings@3x.png",
                          width: 25,
                          height: 25,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 20, right: 24),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    "assets/images/settings@3x.png",
                    width: 25,
                    height: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 5,
                  bottom: 20,
                  right: 20,
                ),
                child: new TextField(
                  controller: userNameController,
                  decoration: new InputDecoration(
                      labelText: 'Username',
                      contentPadding: EdgeInsets.only(
                        left: 8,
                        right: 0,
                        bottom: 8,
                      ),
                      labelStyle: new TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Montserrat-Light',
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: new TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: new InputDecoration(
                      labelText: 'Password',
                      contentPadding: EdgeInsets.only(
                        left: 8,
                        right: 0,
                        bottom: 8,
                      ),
                      labelStyle: new TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Montserrat-Light',
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                ),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(_createRoute());
                    //LoginService().getLoginResponse(userNameController.text, passwordController.text);
                    //Navigator.push(context, new MaterialPageRoute(builder: (context) => new MyApp(),),);
                    //Navigator.of(context).push(_createRoute());
                  },
                  color: Colors.blue,
                  disabledColor: Colors.blue,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'Montserrat-Medium'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => DashBoardView(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var tween = Tween(begin: begin, end: end);
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
