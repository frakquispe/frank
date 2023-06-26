import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main () => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    
  )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/background01.jpg'),
              fit: BoxFit.cover)),

              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.3),
                  ])),

              child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:<Widget>[
                      Container(
                        height: 250,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            makeItem(image: 'assets/images/place.jpg'),
                            makeItem(image: 'assets/images/place2.jpg'),
                            makeItem(image: 'assets/images/place3.jpg'),
                            makeItem(image: 'assets/images/place4.jpg'),
                            makeItem(image: 'assets/images/place5.jpg'),
                            makeItem(image: 'assets/images/place6.jpg'),
                          ],
                        ),
                      ),
                    SizedBox(height: 30,)  
                    ],
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }

  Widget makeItem({image}){
    return AspectRatio(
      aspectRatio: 1.7/2, 
      child: Container(
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 126, 178, 221),
                    ),
                    child: Text('Más Info',
                      style: TextStyle(color: Colors.grey.shade600),
                      
                    ),
                    
                  )
                ],
              ),
              SizedBox(height: 30,),
              Text(
                'Texto de descripción',
                style: TextStyle(color: Colors.grey.shade900,
                fontSize: 25,
                fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.star_border, 
                  color: const Color.fromARGB(255, 6, 91, 161),
                  size: 40,
                ),
              )
            ],
          )
      ),);
  }
}