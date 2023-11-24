import 'package:flutter/material.dart';
import 'package:task/splashscreen4.dart';
import 'loginscreen.dart'; // Import your pages
import 'main.dart'; // Import your pages

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: BottomNavigationExample(),
    );
  }
}

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() => _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
  int _selectedTab = 0;

  List<Widget> _pages = [
    IndexPage(),
    CalenderPage(),
    FocusPage(),
    ProfilePage(),
  ];

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notification",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}


class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Index',
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
              title: Text("Index"),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
            ),
            ListTile(
              title: Text("Calender"),
              leading: Icon(Icons.calendar_month),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CalenderPage();
                }));
              },
            ),
            ListTile(
              title: Text("Focus"),
              leading: Icon(Icons.lock_clock_outlined),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FocusPage();
                }));
              },
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProfilePage();
                }));
              },
            ),
          ],
        ),
      ));
  }}
class CalenderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calender'),
        backgroundColor: Colors.black,
      ),
      
      body: Center(
        child: Text('Calender Page Content'),
      ),
    );
  }
}

class FocusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Focus'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text('Focus Page Content'),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),
            _getProfileHead(
                'https://thumbs.dreamstime.com/b/businessman-avatar-image-beard-hairstyle-male-profile-vector-illustration-178545831.jpg'),
            SizedBox(height: 25),
            _getProfileCard(),
            SizedBox(height: 15),
            _getProfileCard2(),
            SizedBox(height: 15),
            _getLogout(context),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget _getProfileHead(image) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3.0),
            borderRadius: BorderRadius.circular(20.0)),
        child: Card(
          child: Stack(
            children: [
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'M.Summamah Siddiqui',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text("m.summamah123@gmail.com")
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Widget _getProfileCard() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3.0),
            borderRadius: BorderRadius.circular(20.0)),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Personal Details'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('My Orders'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('My Favorites'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Shipping Address'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.credit_card),
                title: Text('My Card'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                trailing: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ));
  }

  Widget _getProfileCard2() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3.0),
            borderRadius: BorderRadius.circular(20.0)),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(Icons.info),
                title: Text('FAQs'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.privacy_tip),
                title: Text('Privacy Policy'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.money),
                title: Text('Payment Method'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help and Support'),
                trailing: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ));
  }

  Widget _getLogout(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 25.0),
            side: BorderSide(color: Colors.black, width: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            )),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SplashScreen4()));
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Loginview()),
            );
          });
        },
        child: Text(
          'Logout',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}