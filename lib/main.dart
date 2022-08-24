import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tasarim_calismasi/renkler.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [Locale("en", ""), Locale("tr", "")],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Genislik : $ekranGenisligi");
    print("Yükseklik : $ekranYuksekligi");
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const <Widget>[
            Text(
              "Merhaba,İBRAHİM TOLU",
              style: TextStyle(
                  fontFamily: " OpenSans-VariableFont",
                  fontSize: 15.0,
                  color: Colors.blueAccent),
            ),
            Text(
              "Merhaba,İBRAHİM TOLU",
              style: TextStyle(
                  fontFamily: " OpenSans-VariableFont",
                  fontSize: 15.0,
                  color: Colors.blueAccent),
            ),
            Padding(
              padding: EdgeInsets.only(left: 145.0),
              child: Icon(
                Icons.healing,
                color: Colors.blueAccent,
              ),
            )
          ],
        ),
        backgroundColor: const Color(0xFFFFFFFF),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimSearchBar(
            width: 400,
            textController: textController,
            onSuffixTap: () {
              setState(() {
                textController.clear();
              });
            },
            helpText: "Bölüm,Hastane veya Hekim Ara..",
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: ekranGenisligi - 56,
                        height: 50,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text("Aşı Randevusu Al",style: TextStyle(color:Colors.deepOrangeAccent ),),
                          style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                          ),
                        ),
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
                    child: Row(
                      children: [
                        SizedBox(
                          width: ekranGenisligi - 56,
                          height: 50,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text("Aşı Randevusu Al",style: TextStyle(color:Colors.blueAccent ),),
                            style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: ekranGenisligi - 56,
                        height: 50,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text("Aşı Randevusu Al",style: TextStyle(color:Colors.red ),),
                          style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
          Text("------------------------------------------------------------------------------------"),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Image.asset("assets/image/tablo.png"),
          )
         
        ],

      ),

      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),

          label: "",
          backgroundColor: Colors.cyan,
        ),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_active),

          label: "",
          backgroundColor: Colors.cyan,
        ),
        BottomNavigationBarItem(icon: Icon(Icons.date_range),
          label: "",
          backgroundColor: Colors.cyan,
        ),
        BottomNavigationBarItem(icon: Icon(Icons.menu_sharp),
          label: "",
          backgroundColor: Colors.cyan,
        ),

      ],

      ),


    );
  }
}

class Chip extends StatelessWidget {
  String icerik;

  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print("Tıklandı");
      },
      child: Text(
        icerik,
        style: TextStyle(color: yaziRenk1),
      ),
      style: TextButton.styleFrom(
          backgroundColor: anaRenk,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    );
  }
}
