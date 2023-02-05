import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final ekranYukseklik = ekranBilgisi.size.height;
    final ekranGenislik = ekranBilgisi.size.width;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(ekranYukseklik / 40),
                child: Text(
                  "Basic Login Page",
                  style: TextStyle(
                      fontSize: ekranGenislik / 20,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: ekranYukseklik / 20),
                child: SizedBox(
                  width: ekranGenislik / 4,
                  height: ekranYukseklik / 6,
                  child: Image.asset("images/graduation-cap.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYukseklik / 30),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Kullanıcı Adı",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(ekranGenislik / 70),
                        ),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYukseklik / 30),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Şifre",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(ekranGenislik / 70),
                        ),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYukseklik / 40),
                child: SizedBox(
                  width: ekranGenislik / 1.2,
                  height: ekranYukseklik / 15,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Giriş Yapıldı");
                    },
                    child: Text(
                      "Giriş Yap",
                      style: TextStyle(
                        fontSize: ekranGenislik / 25,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Yardım İstendi!");
                },
                child: Text(
                  "Yardım ?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: ekranGenislik / 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
