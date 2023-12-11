import 'package:flutter/material.dart';

class ArgPage extends StatelessWidget {
  const ArgPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 280),
          child: Icon(Icons.favorite_outline),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 50),
            child: Image.asset(
              arg['img'],
              fit: BoxFit.fill,
              height: 150,
              width: 300,
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Container(
                decoration: ShapeDecoration(shape: RoundedRectangleBorder(side: BorderSide(width: 1, color: Color(0xFFD8D8DD)), borderRadius: BorderRadius.circular(10))),
                margin: EdgeInsets.all(10),
                height: 80,
                width: 60,
                child: Image.network(arg['rasm']),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 80,
                width: 60,
                child: Image.network(arg['rasm1']),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 80,
                width: 60,
                child: Image.network(arg['rasm2']),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 80,
                width: 50,
                child: Image.network(arg['rasm3']),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 80,
                width: 50,
                child: Image.network(arg['rasm4']),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  arg['txt'],
                  style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(width: 250),
              Text(
                arg['price'],
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              arg['txxt'],
              style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Eros, parturient sit posuere amet. Sed dignissim enim nulla egestas vitae id augue eleifend. Nam commodo scelerisque enim integer risus, non ...\n',
              style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Read more',
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  'Size',
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: 220,
              ),
              Text(
                'EUR',
                style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'UK',
                style: TextStyle(fontSize: 18, color: Color(0xFFB0B0B0), fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'US',
                style: TextStyle(fontSize: 18, color: Color(0xFFB0B0B0), fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Container(
                    width: 55,
                    height: 43,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFD8D8DD)),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        '37',
                        style: TextStyle(
                          color: Color(0xFF828282),
                          fontSize: 20,
                          fontFamily: 'Bilo',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 55,
                  height: 43,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFD8D8DD)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      '38',
                      style: TextStyle(
                        color: Color(0xFF828282),
                        fontSize: 20,
                        fontFamily: 'Bilo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  )),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 55,
                  height: 43,
                  decoration: ShapeDecoration(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFD8D8DD)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      '39',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Bilo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  )),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 55,
                  height: 43,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFD8D8DD)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      '40',
                      style: TextStyle(
                        color: Color(0xFF828282),
                        fontSize: 20,
                        fontFamily: 'Bilo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  )),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 55,
                  height: 43,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFD8D8DD)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      '41',
                      style: TextStyle(
                        color: Color(0xFF828282),
                        fontSize: 20,
                        fontFamily: 'Bilo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  )),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 55,
                  height: 43,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFD8D8DD)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      '42',
                      style: TextStyle(
                        color: Color(0xFF828282),
                        fontSize: 20,
                        fontFamily: 'Bilo',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: ElevatedButton(
              style: ButtonStyle(minimumSize: MaterialStatePropertyAll(Size(300, 50)), alignment: Alignment.center, backgroundColor: MaterialStatePropertyAll(Colors.black), shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.black)))),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Add To Cart',
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
