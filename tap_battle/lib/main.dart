import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> { 
  int bottom = 10;
  int top = 10;
  int count1 = 0;
  int count2 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tab Battle',
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Tap Battle Game')),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                  flex: top,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        top++;
                        bottom--;
                        count1++;
                      });
                    },
                    child:Expanded(
                      flex: 2,
                      child: count1 >= 10 && bottom <= 0 ? Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.greenAccent[700],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Winner",style: TextStyle(
                              fontSize: 44.0,
                              color: Colors.redAccent[700],
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                              
                            ),),
                            Text("is",style: TextStyle(
                              fontSize: 44.0,
                              color: Colors.redAccent[700],
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                              
                            ),),
                            Text("Player 1",style: TextStyle(
                              fontSize: 44.0,
                              color: Colors.redAccent[700],
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                              
                            ),),
                          ],
                        ),
                      )  : Container(
                        color: Colors.pink[900],
                        child: Center(child: Text("Payer 1",
                        style: TextStyle(
                          color: Colors.yellowAccent,
                          fontSize: 54.0,
                          fontWeight: FontWeight.bold,
                        ) ,
                        )),    
                      ),
                    ),
                    
                  ),
                  
                ),
                Expanded(
                  flex: bottom,
                  
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        bottom++;
                        top--;
                        count2++;
                        
                      });
                    },
                    child: 
                      Expanded(
                        flex: 2,
                        child: count2 >= 10 && top <= 0 ? Container(
                          height: double.infinity,
                          width: double.infinity,
                        color: Colors.greenAccent[400],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Winner",style: TextStyle(
                              fontSize: 44.0,
                              color: Colors.redAccent[700],
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                              
                            ),),
                            Text("is",style: TextStyle(
                              fontSize: 44.0,
                              color: Colors.redAccent[700],
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                              
                            ),),
                            Text("Player 2",style: TextStyle(
                              fontSize: 44.0,
                              color: Colors.redAccent[700],
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                              
                            ),),
                          ],
                        ),
                                          )  : Container(
                        color: Colors.purple[900],
                        child: Center(child: Text("Payer 2",
                        style: TextStyle(
                          color: Colors.yellowAccent,
                          fontSize: 54.0,
                          fontWeight: FontWeight.bold,
                        ) ,
                        ),),    
                                          ),
                      ),  
                  ),
                ),
              ],
            ),
          ),),
    );
  }
}

