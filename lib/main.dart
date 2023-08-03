import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: formInput(),
    );
  }
}

class formInput extends StatefulWidget {
  const formInput({super.key});

  @override
  State<formInput> createState() => _formInputState();
}

class _formInputState extends State<formInput> {
  TextEditingController var_username = TextEditingController();
  TextEditingController var_pass = TextEditingController();

  Future<void> kirimData(BuildContext context) {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              content: Container(
            height: 200,
            child: Column(children: <Widget>[
              Text("Username : ${var_username.text}"),
              Text("Password : ${var_pass.text}"),
            ]),
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text("Universitas Teknokrat Indonesia"),
        backgroundColor: Color.fromARGB(255, 164, 5, 5),
      ),*/
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color:
              Color.fromARGB(255, 255, 255, 255), // Warna background container
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 205, 188, 0)
                  .withOpacity(0.5), // Warna bayangan
              spreadRadius: 5, // Lebar penyebaran bayangan
              blurRadius: 7, // Jarak blur bayangan
              offset: Offset(0, 3), // Posisi bayangan (dx, dy)
            ),
          ],
        ),

        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        padding: EdgeInsets.all(15),

        child: ListView(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/teknokrat.png',
                  height: 80,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' UNIVERSITAS TEKNOKRAT',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromARGB(255, 197, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      ' INDONESIA',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromARGB(255, 197, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      ' ASEANs Best Private University',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromARGB(255, 20, 0, 202),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              controller: var_username,
              decoration: InputDecoration(
                hintText: "Username",
                labelText: "Username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              controller: var_pass,
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                kirimData(context);
              },
              child: Text(
                "Login",
              ),
              style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
                backgroundColor: Color.fromARGB(255, 197, 0, 0),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Lupa password?',
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  ' Klik disini',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 0, 0),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 50,
            ),
            
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children :[
          Text(
          'developed by ',
          style: TextStyle(fontSize: 16.0),
        ),
        Text(
          'Muhammad Rahman(21312027)',
          style: TextStyle(fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.green),
        ),

          ]
          
        ),
        ]
        ),

        ),
      );
  }
}
