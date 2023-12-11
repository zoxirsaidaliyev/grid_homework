import 'package:flutter/material.dart';
import 'package:grid_homework/products/sneakers.dart';
import 'package:grid_homework/screen/arg.dart';

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
    final name = sneakers;
    return MaterialApp(
      routes: {
        's': (context) => ArgPage(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          backgroundColor: Colors.black,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Image.asset('img/app1.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('img/app2.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('img/app3.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('img/app5.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('img/app4.png'),
              label: '',
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 214, 210, 210),
        drawer: Drawer(),
        appBar: AppBar(
          leading: Image.asset('img/1.png'),
          elevation: 0,
          shadowColor: Color(0xFFF4F4F4),
          backgroundColor: Color(0xFFF4F4F4),
          title: SizedBox(
            width: 300,
            height: 48,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF8B8B8B),
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search product',
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Sneakers',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color: Colors.black),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Image.asset('img/frame2.png'),
                  Image.asset('img/frame.png'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                '25 products found',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 250,
                  ),
                  itemCount: name.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          's',
                          arguments: name[index],
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        color: name[index]['color'],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 130, top: 10),
                              child: Image.asset(
                                name[index]['img1'],
                              ),
                            ),
                            SizedBox(
                              height: 80,
                              child: Image.asset(name[index]['img']),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                name[index]['txt'],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(name[index]['txxt']),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                name[index]['price'],
                                style: TextStyle(fontWeight: FontWeight.w900),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
