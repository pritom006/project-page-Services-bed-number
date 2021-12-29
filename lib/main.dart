import 'package:flutter/material.dart';
import './enum_file.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Services: Floor Style',
      home: MyApp(),
      theme: ThemeData(
        textTheme: const TextTheme().copyWith(
          bodyText2: const TextStyle(color: Colors.black),
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.white),
          backgroundColor: Color(0xFFE33535),
        ),
        //backgroundColor: const Color(0xFFFFA49F),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bed_services _value = bed_services.Single_Bed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Services: Bed Number',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white70,
          ),
        ),
      ),
      backgroundColor: Color(0xFFFFA49F),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 60, top: 70),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RadioListTile(
              value: bed_services.Single_Bed,
              title: const Text("Single Bed"),
              groupValue: _value,
              onChanged: (bed_services? val) {
                setState(() {
                  _value = val!;
                });
              },
            ),
            RadioListTile(
              value: bed_services.Double_Bed,
              title: const Text("Double Bed"),
              groupValue: _value,
              onChanged: (bed_services? val) {
                setState(() {
                  _value = val!;
                });
              },
            ),
            RadioListTile(
              value: bed_services.Three_Bed,
              title: const Text("Three Bed"),
              groupValue: _value,
              onChanged: (bed_services? val) {
                setState(() {
                  _value = val!;
                });
              },
            ),
            RadioListTile(
              value: bed_services.Couple_Bed,
              title: const Text("Couple Bed"),
              groupValue: _value,
              onChanged: (bed_services? val) {
                setState(() {
                  _value = val!;
                });
              },
            ),
            RadioListTile(
              value: bed_services.Two_Couple_Bed,
              title: const Text("Two Couple Bed"),
              groupValue: _value,
              onChanged: (bed_services? val) {
                setState(() {
                  _value = val!;
                });
              },
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(right: 100),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.blue,
                    minimumSize: Size(70, 30),
                    maximumSize: Size(80, 50),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text(
                    "OK",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
