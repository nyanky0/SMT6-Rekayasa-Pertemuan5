import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pertemuan 5',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 181, 146, 209)),
      home: menu_screen(),
    );
  }
}

class login_screen extends StatefulWidget {
  const login_screen({Key? key}) : super(key: key);

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  bool isChecked = false;
  TextEditingController usernameC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Text(
            'Yuda Hernawan 190103121',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 7,
                color: Colors.black,
                height: 2),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Aplikasi',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.black,
                height: 2),
          ),
          SizedBox(
            height: 0.1,
          ),
          Text(
            'Pertemuan 5 Rekayasa',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.black,
                height: 1),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'LOGIN SCREEN',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
                height: 1),
          ),
          //Image.asset('images/L1.png', height: 100),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextFormField(
              controller: usernameC,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Masukkan username',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextFormField(
              controller: passwordC,
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.lock),
                hintText: 'Masukkan password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                print('username = ${usernameC.text} ');
                if (usernameC.text == 'admin' && passwordC.text == 'admin') {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Login berhasil ${usernameC.text}'),
                  ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Username atau Password salah'),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 235, 203, 65),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text(
                'LOG IN',
                style: TextStyle(fontSize: 18, color: Colors.black, height: 1),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => menu_screen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 212, 89, 80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text(
                'KEMBALI',
                style: TextStyle(fontSize: 18, color: Colors.white, height: 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class menu_screen extends StatefulWidget {
  const menu_screen({Key? key}) : super(key: key);

  @override
  State<menu_screen> createState() => _menu_screenState();
}

class _menu_screenState extends State<menu_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Text(
              'Yuda Hernawan 190103121',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 7,
                  color: Colors.black,
                  height: 2),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Aplikasi',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.black,
                  height: 2),
            ),
            SizedBox(
              height: 0.1,
            ),
            Text(
              'Pertemuan 5 Rekayasa',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.black,
                  height: 1),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'MENU SCREEN',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                  height: 1),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => login_screen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 147, 235, 113),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  'LOG IN',
                  style:
                      TextStyle(fontSize: 18, color: Colors.black, height: 1),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => signup_screen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 105, 186, 233),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  'SIGN UP',
                  style:
                      TextStyle(fontSize: 18, color: Colors.black, height: 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class signup_screen extends StatefulWidget {
  const signup_screen({Key? key}) : super(key: key);

  @override
  State<signup_screen> createState() => _signup_screenState();
}

class _signup_screenState extends State<signup_screen> {
  bool isChecked = false;
  TextEditingController usernameC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Text(
            'Yuda Hernawan 190103121',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 7,
                color: Colors.black,
                height: 2),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Aplikasi',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.black,
                height: 2),
          ),
          SizedBox(
            height: 0.1,
          ),
          Text(
            'Pertemuan 5 Rekayasa',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.black,
                height: 1),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'SIGNUP SCREEN',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
                height: 1),
          ),
          //Image.asset('images/L1.png', height: 100),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextFormField(
              controller: usernameC,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Masukkan username',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextFormField(
              controller: passwordC,
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.lock),
                hintText: 'Masukkan password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Pendaftaran berhasil'),
                ));
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => menu_screen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 235, 203, 65),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text(
                'SIGN UP',
                style: TextStyle(fontSize: 18, color: Colors.black, height: 1),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => menu_screen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 212, 89, 80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text(
                'BATAL',
                style: TextStyle(fontSize: 18, color: Colors.white, height: 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
