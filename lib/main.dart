import 'package:flutter/material.dart';
import 'package:flutter_app_test/Service/LoginService.dart';


void main() => runApp(LoginView());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class LoginView extends StatefulWidget {
  @override
  LoginViewState createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {

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
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
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
                      )
                  ),
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
                      )
                  ),
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

                    LoginService().getLoginResponse(userNameController.text, passwordController.text);
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
                        fontFamily: 'Montserrat-Medium'
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  bool toggle = true;

  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  _getToggleChild() {
    if (toggle) {
      return Text('Toggle One');
    } else {
      return MaterialButton(onPressed: () {}, child: Text('Toggle Two'));
    }
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: Center(
        child: _getToggleChild(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        tooltip: 'Update Text',
        child: Icon(Icons.update),
      ),
    );
  }
}
