import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key});

  // Variabel untuk data login yang benar
  final String validUsername = "aaa"; // Ganti dengan username yang benar
  final String validPassword = "123"; // Ganti dengan password yang benar

  // Controllers untuk input username dan password
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Konfigurasi warna kursor
        textSelectionTheme: TextSelectionThemeData(
          cursorColor:
          Colors.deepOrange, // Ubah warna kursor menjadi deep orange
        ),
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://bvhs.co.uk/wp-content/uploads/2018/06/homework-clipart-jRiARd6cL.png',
                width: 130,
                height: 130,
              ),
              SizedBox(height: 20),
              Icon(
                Icons.person_pin,
                size: 50,
                color: Colors.deepOrange,
              ),
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: TextFormField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          hintText: "Username",
                          prefixIcon: Icon(
                            Icons.person_4_outlined,
                            color: Colors.deepOrange,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Divider(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(
                            Icons.lock_person_outlined,
                            color: Colors.deepOrange,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Divider(height: 20),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        primary: Colors.white,
                      ),
                      child: Text("Masuk"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  // Aksi yang ingin Anda lakukan saat teks "Forgot the password?" diklik.
                  print('Forgot the password diklik!');
                },
                child: Text(
                  "Forgot the password?",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 10,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
