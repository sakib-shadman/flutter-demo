import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ValidationView()));

class ValidationView extends StatefulWidget {

  @override
  ValidationViewState createState() => ValidationViewState();
}

class ValidationViewState extends State<ValidationView> {
  var _fromKey = GlobalKey<ValidationViewState>();

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
      body: Form(

        key: _fromKey,
        child: new Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 5,
                bottom: 20,
                right: 20,
              ),
              child: new TextFormField(
                controller: userNameController,
                validator: (String value){
                  if(value.isEmpty){
                    return 'please enter username';
                  }
                },
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
                    ),
                    errorStyle: new TextStyle(
                      color: Colors.red
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: new TextFormField(
                controller: passwordController,
                // ignore: missing_return
                validator: (String value){
                  if(value.isEmpty){
                    return 'please enter username';
                  }
                },
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
                  setState(() {

                  });
                  //Navigator.of(context).push(_createRoute());
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
    );
  }


}