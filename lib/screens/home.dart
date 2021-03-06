import 'package:flutter/material.dart';
import 'package:smile/screens/jokebrain.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('SMILE'),
        ),
        body: Jokes(),
        bottomNavigationBar:
            BottomNavigationBar(type: BottomNavigationBarType.shifting, items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.thumb_up),
            title: new Text('like'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.share),
            title: new Text('share'),
          ),
        ]));
  }
}

class Jokes extends StatefulWidget {
  @override
  _JokesState createState() => _JokesState();
}

class _JokesState extends State<Jokes> {
  JokeBrain jokeBrain = JokeBrain();
  List<Widget> pages = [
    Container(color: Colors.blue),
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(color: Colors.white),
    Container(color: Colors.purple),
  ];

  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: jokeBrain.jokes.length - 1,
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      controller: _controller,
      onPageChanged: (index) {
        print(index);
        jokeBrain.incrementJoke(index);
      },
      itemBuilder: (context, int index) {
        return Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      jokeBrain.getNextQuestion(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: <Widget>[
                  //     FlatButton.icon(
                  //       onPressed: () {
                  //         print('You press the like button $index');
                  //       },
                  //       icon: Icon(
                  //         Icons.thumb_up,
                  //         color: Colors.white,
                  //       ),
                  //       label: Text(
                  //         'like button',
                  //         style: TextStyle(color: Colors.white),
                  //       ),
                  //     ),
                  //     FlatButton.icon(
                  //       onPressed: () {
                  //         print('You press the share button $index');
                  //       },
                  //       icon: Icon(
                  //         Icons.share,
                  //         color: Colors.white,
                  //       ),
                  //       label: Text(
                  //         'share button',
                  //         style: TextStyle(color: Colors.white),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(height: 10),
                  Text(
                    'joke by: kareem fawas',
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            )
            // color: index % 2 == 0 ? Colors.green : Colors.blue,
            );
      },
    );
  }
}
