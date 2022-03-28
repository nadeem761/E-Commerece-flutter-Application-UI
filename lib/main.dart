import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shop_app/components/Horizontal_listview.dart';
import 'package:shop_app/components/products.dart';
import 'package:shop_app/cart.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  @override
  _Homepage_State createState() => _Homepage_State();
}

class _Homepage_State extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
        height: 200,
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            NetworkImage(
                'https://img.freepik.com/free-photo/young-beautiful-blonde-woman-jacket-blue-wall-with-mobile-phone-doing-online-shopping_496169-1447.jpg?w=900'),
            NetworkImage(
                'https://img.freepik.com/free-photo/laughing-pretty-young-woman-jumping-holding-shopping-bags_171337-11429.jpg?w=900'),
            NetworkImage(
                'https://img.freepik.com/free-photo/black-friday-elements-assortment_23-2149074076.jpg?w=1060'),
            NetworkImage(
                'https://img.freepik.com/free-photo/medium-shot-man-holding-bags_23-2149220675.jpg?w=900'),
            NetworkImage(
                'https://img.freepik.com/free-photo/young-woman-by-shopping-center_1303-16427.jpg?w=900')
          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 5.0,
          indicatorBgPadding: 4.0,
          dotBgColor: Colors.transparent,
        ));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text('ShoppingApp'),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cart()),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              accountName: Text(
                'Nadeem Khan',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                'NadeemKhanwazir56@gmail.com',
                style: TextStyle(fontSize: 15),
              ),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person),
                ),
              ),
            ),
            //body of drawar
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Oreder'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cart()),
                );
              },
              child: ListTile(
                title: Text('Shopping cart'),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          image_carousel,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categories'),
          ),
          HorizontalList(),
          //Grid view
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Recent Products'),
          ),
          Container(
            height: 320,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
