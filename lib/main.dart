import 'package:flutter/material.dart';
import 'package:task/loginscreen.dart';
import 'package:task/signupscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.grey),
                  accountName: Text("M.Summamah Siddiqui"),
                  accountEmail: Text("m.summamahsiddiqui123@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    child: Image.network(
                        "https://play-lh.googleusercontent.com/C9CAt9tZr8SSi4zKCxhQc9v4I6AOTqRmnLchsu1wVDQL0gsQ3fmbCVgQmOVM1zPru8UH=w240-h480-rw"),
                  ),
                  currentAccountPictureSize: Size.square(50.0),
                )),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
            ),
            ListTile(
              title: Text("Main Page"),
              leading: Icon(Icons.star),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondPage();
                }));
              },
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ThirdPage();
                }));
              },
            )
          ],
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://play-lh.googleusercontent.com/EY-sb6x4vVcu_Y_cpCF5655KYOoFQOyFzCt97H9Jktf9X2x2XQpZwsWw4dm91xAyvxLj=w526-h296-rw",
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 20, // Adjust the position as needed
            left: 20, // Adjust the position as needed
            child: Container(
              width: MediaQuery.of(context).size.width - 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  side: BorderSide(color: Colors.white, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Text(
                  'Next >',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Manage your task',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://static.vecteezy.com/system/resources/previews/006/685/446/original/illustration-graphic-cartoon-character-of-business-planning-vector.jpg",
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 510),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue,
                          padding: EdgeInsets.symmetric(vertical: 25.0),
                          side: BorderSide(color: Colors.white, width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Go Back',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue,
                          padding: EdgeInsets.symmetric(vertical: 25.0),
                          side: BorderSide(color: Colors.white, width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ThirdPage()),
                          );
                        },
                        child: Text(
                          'Next >',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create Daily Routine',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://www.fluent-english.co.uk/wp-content/uploads/2020/08/Daily-Routine-1.jpg",
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 20, // Adjust the position as needed
            left: 20, // Adjust the position as needed
            child: Container(
              width: MediaQuery.of(context).size.width - 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        side: BorderSide(color: Colors.white, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Go Back',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        side: BorderSide(color: Colors.white, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FourthPage()),
                        );
                      },
                      child: Text(
                        'Next >',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Organize your task',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://clickup.com/blog/wp-content/uploads/2022/12/technical-debt.png",
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 20, // Adjust the position as needed
            left: 20, // Adjust the position as needed
            child: Container(
              width: MediaQuery.of(context).size.width - 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        side: BorderSide(color: Colors.white, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Go Back',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        side: BorderSide(color: Colors.white, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FifthPage()),
                        );
                      },
                      child: Text(
                        'Next >',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FifthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 130,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to Uptodo",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 10,
                  child: Text(
                    "Please Login to your account or create \n a new account to continue",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20, 
            child: Container(
              width: MediaQuery.of(context).size.width - 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        side: BorderSide(color: Colors.white, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Loginview(),
                          ),
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        side: BorderSide(color: Colors.white, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupView(),
                          ),
                        );
                      },
                      child: Text(
                        'Signup',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
