import 'package:flutter/material.dart';
import 'Validation.dart';
import 'ListView.dart';

void main() => runApp(DashBoardView());

class DashBoardView extends StatefulWidget {
  @override
  DashBoardViewState createState() => DashBoardViewState();
}

class DashBoardViewState extends State<DashBoardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: 'Montserrat-Medium',
          ),
        ),
        backgroundColor: Color.fromRGBO(29, 153, 216, 1),
        leading: Builder(
          builder: (context) => new IconButton(
            icon: Image.asset(
              "assets/images/drawer_icon@3x.png",
              width: 25,
              height: 25,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      body: Container(
        child: new Container(
            child: new Stack(
          children: <Widget>[
            new Image.asset(
              'assets/images/home_header.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
            ),


            new Column(
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 6, // 60%
                      child: new Padding(
                        padding: EdgeInsets.all(10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: new Image.asset(
                                    'assets/images/emp_img@3x.png',
                                    height: 65,
                                    width: 65,
                                  ),

                        ),
                      ),
                    ),

                    Expanded(
                      flex: 2, // 20%
                      child: new Image.asset(
                        'assets/images/home_in_out@3x.png',
                        height: 50,
                        width: 50,

                      ),
                    ),
                    Expanded(
                      flex: 2, // 20%
                      child: new Image.asset(
                        'assets/images/home_claim@3x.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ],
                ),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Padding(
                      child: new Text("shadman sakib",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Montserrat-Medium',
                        ),
                      ),
                      padding: EdgeInsets.only(
                        left: 15,
                      ),
                    ),
                  ],
                ),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: <Widget>[
                    new Padding(
                      child: new Text("test, 23",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontFamily: 'Montserrat-Medium',
                        ),
                      ),
                      padding: EdgeInsets.only(
                        top: 5,
                        left: 15,
                        bottom: 5,

                      ),
                    ),

                  ],
                ),

                new Container(
                  height: MediaQuery.of(context).size.height * 0.225,
                  child: new Padding(padding: EdgeInsets.only(
                      top: 5,
                      left: 20,
                      right: 20
                  ),
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: new Container(
                            child: new Padding(padding: EdgeInsets.only(
                              right: 8,
                            ),
                              child: new Card(
                                child: new Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Image.asset('assets/images/home_attendance@3x.png',
                                      fit: BoxFit.fill,
                                    ),
                                    new Align(
                                      alignment: Alignment.bottomCenter,
                                      child: new Padding(padding: EdgeInsets.only(
                                        bottom: 20,
                                      ),
                                        child: new Text("ATTENDANCE",
                                          style: new TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                            fontFamily: 'Montserrat-Medium',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 5,
                          child: new Container(

                            child: new Padding(padding: EdgeInsets.only(
                              left: 8,
                            ),
                              child: new Card(
                                child: new Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Image.asset('assets/images/home_leave@3x.png',
                                      fit: BoxFit.fill,
                                    ),
                                    new Align(
                                      alignment: Alignment.bottomCenter,
                                      child: new Padding(padding: EdgeInsets.only(
                                        bottom: 20,
                                      ),
                                        child: new Text("LEAVE",
                                          style: new TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                            fontFamily: 'Montserrat-Medium',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                new Container(
                  height: MediaQuery.of(context).size.height * 0.225,
                  child: new Padding(padding: EdgeInsets.only(

                      top: 5,
                      left: 20,
                      right: 20
                  ),
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: new GestureDetector(
                            onTap: () {
                              print("Clicked");
                              Navigator.of(context).push(_createRoute());
                            },
                            child: new Container(
                              child: new Padding(padding: EdgeInsets.only(
                                right: 8,
                              ),
                                child: new Card(
                                  child: new Stack(
                                    fit: StackFit.expand,
                                    children: <Widget>[
                                      Image.asset('assets/images/home_emp_dir@3x.png',
                                        fit: BoxFit.fill,
                                      ),
                                      new Align(
                                        alignment: Alignment.bottomCenter,
                                        child: new Padding(padding: EdgeInsets.only(
                                          bottom: 20,
                                        ),
                                          child: new Text("EMPLOYEE\nDIRECTORY",
                                            style: new TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey,
                                              fontFamily: 'Montserrat-Medium',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 5,
                          child: new Container(

                            child: new Padding(padding: EdgeInsets.only(
                              left: 8,
                            ),
                              child: new Card(
                                child: new Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Image.asset('assets/images/home_claim_view@3x.png',
                                      fit: BoxFit.fill,
                                    ),
                                    new Align(
                                      alignment: Alignment.bottomCenter,
                                      child: new Padding(padding: EdgeInsets.only(
                                        bottom: 20,
                                      ),
                                        child: new Text("CLAIM",
                                          style: new TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                            fontFamily: 'Montserrat-Medium',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                new Container(
                  height: MediaQuery.of(context).size.height * 0.225,
                  child: new Padding(padding: EdgeInsets.only(

                    top: 5,
                    left: 20,
                    right: 20,
                  ),
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: new Container(
                            child: new Padding(padding: EdgeInsets.only(
                              right: 8,
                            ),
                              child: new Card(
                                child: new Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Image.asset('assets/images/home_profile@3x.png',
                                      fit: BoxFit.fill,
                                    ),
                                    new Align(
                                      alignment: Alignment.bottomCenter,
                                      child: new Padding(padding: EdgeInsets.only(
                                        bottom: 20,
                                      ),
                                        child: new Text("PROFILE",
                                          style: new TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                            fontFamily: 'Montserrat-Medium',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 5,
                          child: new Container(

                            child: new Padding(padding: EdgeInsets.only(
                              left: 8,
                            ),
                              child: new Card(
                                child: new Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Image.asset('assets/images/home_salary@3x.png',
                                      fit: BoxFit.fill,
                                    ),
                                    new Align(
                                      alignment: Alignment.bottomCenter,
                                      child: new Padding(padding: EdgeInsets.only(
                                        bottom: 20,
                                      ),
                                        child: new Text("SALARY",
                                          style: new TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                            fontFamily: 'Montserrat-Medium',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],

            ),


          ],
        )),
      ),
    );
  }
}
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => TestListView(),
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
