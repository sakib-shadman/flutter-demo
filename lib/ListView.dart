import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: TestListView()));
class TestListView extends StatefulWidget{
  @override
  TestListViewState createState() => TestListViewState();
}

class TestListViewState extends State<TestListView> {

  int count = 0;
  List<String> testList = ['one', 'two', 'three'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('List View'),
      ),
      body: getListView(),
    );
  }


  ListView getListView(){

    TextStyle titleStyle = Theme.of(context).textTheme.subhead;
    return ListView.builder(
        itemCount: testList.length,
        itemBuilder: (BuildContext context,int position){
          return Card(
            color: Colors.yellow,
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(

                backgroundColor: Colors.yellow,
                child: Icon(Icons.keyboard_arrow_right),
              ),
              title: Text(
                testList[position],
                style: titleStyle,
              ),
              subtitle: Text(
                testList[position],
                style: titleStyle,
              ),
              trailing: Icon(Icons.keyboard_arrow_right,color: Colors.grey),
              onTap: (){

              },
            ),

          );
        }
    );
  }

}
