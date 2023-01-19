import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    title: 'Your title',
    home: CardProfile(),
  ));
}

class CardProfile extends StatelessWidget {
  const CardProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Menghitung Luas Persegi dan Lingkaran',
            style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'FLUTTER',
            style: TextStyle(
                fontFamily: 'sanspro',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              )),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.calculate_rounded,
                color: Colors.teal,
              ),
              trailing: ElevatedButton(
                  child: Icon(Icons.arrow_forward_rounded),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  }),
              title: Text(
                'Menghitung Luas Persegi',
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'sanspro',
                    fontSize: 20.0),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.calculate_rounded,
                color: Colors.teal,
              ),
              trailing: ElevatedButton(
                  child: Icon(Icons.arrow_forward_rounded),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Second()));
                  }),
              title: Text(
                'Menghitung Luas Lingkaran',
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'sanspro',
                    fontSize: 20.0),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.account_box_rounded,
                color: Colors.teal,
              ),
              trailing: ElevatedButton(
                  child: Icon(Icons.arrow_forward_rounded),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  }),
              title: Text(
                'Profile Developer',
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'sanspro',
                    fontSize: 20.0),
              ),
            ),
          ),
        ],
      )),
    ));
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  int panjang = 0;
  int lebar = 0;

  var _nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: new AppBar(
        title: new Text('Menghitung Luas Persegi'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            panjang = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Panjang Persegi",
                            suffix: Text('cm'),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            //filled: true,
                            hintText: 'Panjang'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            lebar = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Lebar Persegi",
                            suffix: Text('cm'),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            //filled: true,
                            hintText: 'Lebar'),
                      ),
                    ),
                  ],
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                Container(
                  //height: double.infinity,
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey),
                    ),
                    onPressed: () {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext) => new PersegiResult(
                            panjang_persegi: panjang, lebar_persegi: lebar),
                      );
                      Navigator.of(context).push(route);
                      /*
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BMIResult(tinggi_badan: tinggi, berat_badan:)
                        );
                      */
                    },
                    child: Text(
                      'Hitung Luas',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Second extends StatefulWidget {
  @override
  _SecondState createState() => new _SecondState();
}

class _SecondState extends State<Second> {
  double panjang = 0;
  double lebar = 0;

  var _nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: new AppBar(
        title: new Text('Menghitung Luas Lingkaran'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            panjang = double.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Jari Jari Lingkaran",
                            suffix: Text('cm'),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            //filled: true,
                            hintText: 'Jari Jari'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                Container(
                  //height: double.infinity,
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey),
                    ),
                    onPressed: () {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext) => new LingkaranResult(
                          jari_jari: panjang,
                        ),
                      );
                      Navigator.of(context).push(route);
                      /*
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BMIResult(tinggi_badan: tinggi, berat_badan:)
                        );
                      */
                    },
                    child: Text(
                      'Hitung Luas',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PersegiResult extends StatelessWidget {
  PersegiResult({required this.panjang_persegi, required this.lebar_persegi});
  final int panjang_persegi;
  final int lebar_persegi;
  int thasil = 0;
  int hasil = 0;

  @override
  Widget build(BuildContext context) {
    double hasil = (panjang_persegi * lebar_persegi * 1.0);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('HASIL'),
      ),
      body: Container(
        color: Colors.teal,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.teal,
              ),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.teal,
              ),
            ),
            Text(
              'Luas persegi adalah: ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              '$hasil',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LingkaranResult extends StatelessWidget {
  LingkaranResult({required this.jari_jari});
  final double jari_jari;
  final double phi = 3.14;
  int thasil = 0;
  int hasil = 0;

  @override
  Widget build(BuildContext context) {
    double hasil = (phi * jari_jari * jari_jari * 1.0);
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('HASIL'),
      ),
      body: Container(
        color: Colors.teal,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.teal,
              ),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.teal,
              ),
            ),
            Text(
              'Luas lingkaran adalah: ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              '$hasil',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/img/a.jpg'),
          ),
          Text(
            'Muhammad Aditya',
            style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '19710034',
            style: TextStyle(
                fontFamily: 'sanspro',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'SI 5A NONREG BANJARBARU',
            style: TextStyle(
                fontFamily: 'sanspro',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              )),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.teal,
              ),
              trailing: ElevatedButton(
                  child: Icon(Icons.arrow_forward_rounded),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  }),
              title: Text(
                '+62 896 3460 4639',
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'sanspro',
                    fontSize: 20.0),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.teal,
              ),
              trailing: ElevatedButton(
                  child: Icon(Icons.arrow_forward_rounded),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  }),
              title: Text(
                'adhitiljin213@gmail.com',
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'sanspro',
                    fontSize: 20.0),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.location_on_rounded,
                color: Colors.teal,
              ),
              trailing: ElevatedButton(
                  child: Icon(Icons.arrow_forward_rounded),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  }),
              title: Text(
                'Banjarbaru, Kalimantan Selatan, Indonesia',
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'sanspro',
                    fontSize: 20.0),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.school_rounded,
                color: Colors.teal,
              ),
              trailing: ElevatedButton(
                child: Icon(Icons.arrow_forward_rounded),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.teal),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
              ),
              title: Text(
                'Universitas Islam Kalimantan Muhammad Arsyad Al Banjari',
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'sanspro',
                    fontSize: 20.0),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.menu_rounded,
                color: Colors.teal,
              ),
              trailing: ElevatedButton(
                child: Icon(Icons.arrow_forward_rounded),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.teal),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CardProfile()));
                },
              ),
              title: Text(
                'Kembali Ke Menu Utama',
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'sanspro',
                    fontSize: 20.0),
              ),
            ),
          ),
        ],
      )),
    ));
  }
}
