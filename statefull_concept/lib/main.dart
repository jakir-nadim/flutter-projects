import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  int count2 = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.teal,
      title: 'Statefull Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(child: Text('Statefull Demo')),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Text("$count"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count2+=2;
                    });
                  },
                  child: Text("$count2"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count+=3;
                    });
                  },
                  child: Text("$count"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count2+=4;
                    });
                  },
                  child: Text("$count2"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count+=5;
                    });
                  },
                  child: Text("$count"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count2+=6;
                    });
                  },
                  child: Text("$count2"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count+=7;
                    });
                  },
                  child: Text("$count"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count2+=8;
                    });
                  },
                  child: Text("$count2"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count+=9;
                    });
                  },
                  child: Text("$count"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count2+=10;
                    });
                  },
                  child: Text("$count2"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
