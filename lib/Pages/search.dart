import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _filter = new TextEditingController();
  String _searchText = "";
  List names = new List(); // names we get from API
  List filteredNames = new List(); // names filtered by search text
  Icon _searchIcon = new Icon(Icons.search); 
  Widget _appBarTitle = new Text( 'MySalex' );
  
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }

  void _searchPressed() {
  
  }
}