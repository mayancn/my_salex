import 'package:flutter/material.dart';
import './profile.dart';
import './search.dart';
import './products.dart';
import './cart.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  //add next line to assets/theme.dart
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final List<Widget> _loadPage = [
    ProfilePage(),
    ProductsPage(),
    SearchPage(),
    CartPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
void _showCart(){
    //show cart widget will come here or on cart page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            tooltip: 'Cart',
            icon: Icon(Icons.shopping_cart),
            onPressed: _showCart,
          ),
        ],
        leading: IconButton(
            tooltip: 'Cart',
            icon: Icon(Icons.menu),
            onPressed: null,
        ),
      ),
      body: Center(
        child: _loadPage[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        //selected item color
        selectedItemColor: Colors.blueGrey,


        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outlined),
            title: Text('Products'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Orders'),
          ),
        ],
      ),
    );

  }
}
