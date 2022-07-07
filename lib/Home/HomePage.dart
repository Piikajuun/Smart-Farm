import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            // iconFun(path:Icons.home,context: context )
            icon: Icon(
              Icons.home,
              color: Colors.black,
              size: 20,
            ),
            title: Text('B'),
            //  backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('B')),
          BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('C')),
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('D')),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('data')],
          ),
        ],
      ),
    );
  }
}
