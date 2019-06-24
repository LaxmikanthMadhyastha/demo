import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:bezier_chart/bezier_chart.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Demo application'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.black,
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 160.0,
                    child: Card(
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        front: Container(
                          child: Image(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu-YWZK_3LpT2j1vJFQKWcsuVT8Uh0o-V9dIqI5iUo_vm0glvX'),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        back: Container(
                          child: Column(
                            children: <Widget>[
                              Card(
                                color: Colors.black,
                                child: ListTile(
                                  title: Text(
                                    'Protein:60',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_upward,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                              Card(
                                color: Colors.black,
                                child: ListTile(
                                  title: Text(
                                    'Fat:30',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  trailing: Icon(
                                    Icons.play_arrow,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                              Card(
                                color: Colors.black,
                                child: ListTile(
                                  title: Text(
                                    'Carbs:110  ',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_downward,
                                    color: Colors.red,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: FlipCard(
                        direction: FlipDirection.VERTICAL,
                        front: Container(
                          child: Image(
                            image: NetworkImage(
                                'https://thatfijitaste.com/wp-content/uploads/2016/12/boondi-ladoo-fiji-indian-750x489.jpg?x80717'),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        back: Container(
                          child: Column(
                            children: <Widget>[
                              Card(
                                color: Colors.black,
                                child: ListTile(
                                  title: Text(
                                    'Protein:100',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_upward,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Card(
                                color: Colors.black,
                                child: ListTile(
                                  title: Text(
                                    'Fat:100',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_upward,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Card(
                                color: Colors.black,
                                child: ListTile(
                                  title: Text(
                                    'Carbs:110  ',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_upward,
                                    color: Colors.red,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL, // default
                        front: Container(
                          child: Image(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnYPl31qfcXgCYRBfuNLRjvZuOq01W-BBpk38R9Z9KEAJ5JjT0'),
                            height: 200,
                          ),
                        ),
                        back: Container(
                          child: Text('Back'),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        front: Container(
                          child: Image(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcrEpsxwD5a1Y39klHYwNruPysZTF61ck--ln_jybhx6fgImTcGA'),
                            fit: BoxFit.contain,
                          ),
                        ),
                        back: Container(
                          child: Text('Back'),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        front: Container(
                          child: Image(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStFc7XGd084LtnK4OXYYMcmLoWtH8EDnvisuBYNauqyPmh-4nSRA'),
                            fit: BoxFit.contain,
                          ),
                        ),
                        back: Container(
                          child: Text('Back'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(color: Colors.white, height: 200, child: MyApp()),
            Container(
              height: 200,
                child: ListView(children: <Widget>[MyHomePage()],),
              
            )
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  List<String> items = [
    "Daily task is pending",
    'Noticed high carb in your meal',
    "Please contact dietician",
    'Please do some activities after eaating',
    "Your calorie intake is too low",
    'Please reduce eating junk food',
    "Stay fit,stay healthy"
  ];

  @override
  Widget build(BuildContext context) {
    final title = 'Dismissing Items';

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        return Dismissible(
          key: Key(item),
          onDismissed: (direction) {
            setState(() {
              items.removeAt(index);
            });

            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text("$item dismissed")));
          },
          background: Container(color: Colors.black),
          child: Card(
            color: Colors.blueAccent,
            child: ListTile(
              title: Text(
                '$item',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.directions_run,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Bezier Chart - Numbers",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            Center(
              child: Card(
                elevation: 12,
                clipBehavior: Clip.hardEdge,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: BezierChart(
                    bezierChartScale: BezierChartScale.CUSTOM,
                    xAxisCustomValues: const [0,0.1,0.2,0.3,0.4,0.5,0.6,0.7],
                    footerValueBuilder: (double value) {
                      return "days";
                    },
                    series: const [
                      BezierLine(
                        label: "m",
                        data: const [
                          DataPoint<double>(value: 0.1, xAxis: 0),
                          DataPoint<double>(value: 0.2, xAxis: 0.1),
                          DataPoint<double>(value: 0.1, xAxis: 0.2),
                          DataPoint<double>(value: 0.2, xAxis: 0.3),
                          DataPoint<double>(value: 0.2, xAxis: 0.4),
                          DataPoint<double>(value: 0.1, xAxis: 0.5),
                          DataPoint<double>(value: 0.1, xAxis: 0.6),
                          DataPoint<double>(value: 0.2, xAxis: 0.7),
                        ],
                      ),
                    ],
                    config: BezierChartConfig(
                      footerHeight: 40,
                      verticalIndicatorStrokeWidth: 3.0,
                      verticalIndicatorColor: Colors.black26,
                      showVerticalIndicator: true,
                      verticalIndicatorFixedPosition: false,
                      backgroundGradient: LinearGradient(
                        colors: [
                          Colors.red[300],
                          Colors.red[400],
                          Colors.red[400],
                          Colors.red[500],
                          Colors.red,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      snap: false,
                    ),
                  ),
                ),
              ),
            ),
          ],
    );
  }
}
