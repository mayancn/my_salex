import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:mysalex_mobile/extras/loading.dart';
import 'package:mysalex_mobile/api/products.dart';
import 'package:mysalex_mobile/Pages/product_details.dart';
//import 'package:mysalex_mobile/model/product.dart';
import 'dart:convert';


class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
 
  List<dynamic> allProducts =  [];

  @override
  void initState() {
    getData();
    super.initState();
  }

  Future getData() async {
    allProducts = await getProducts();
    //print(allProducts);
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Text('Press button to start.');
            case ConnectionState.active:
            case ConnectionState.waiting:
              return LoadingIndicator();
            case ConnectionState.done:
              if (snapshot.hasError) return Text('Error: ${snapshot.error}');
              return Card(
                margin: EdgeInsets.all(5.0),
                color: Colors.white,
                child: ListView.builder(
                  itemCount: allProducts.length,
                  itemBuilder: (context, index){
                    final item = allProducts[index];
                    if (item == null) return Text('No products to show at this time');
                    return Material(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: ListTile(
                          onTap: (){
                            Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => ProductDetails(product : item)
                            ));
                          },
                          dense: false,
                          leading: Image.network(
                            'https://mosaic02.ztat.net/vgs/media/pdp-zoom/LE/22/1D/02/2A/12/LE221D022-A12@16.1.jpg',
                            fit: BoxFit.cover,
                          ),
                          title: Text(
                            item['title'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            item['synopsis'],
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          trailing: Column(
                            children: <Widget>[
                              Text(
                                '₹ ${item['compare_at_price'].toString()}',
                                style: TextStyle(
                                  color: Colors.black54,
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                '₹ ${item['price'].toString()}',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  
                )
              );
          }
          return Text("oops");
        }
      ),
    );
  }
}






// children: <Widget>[
// ListTile(

// //onTap: productOnTap(index),
// leading: Image.network('https://mosaic02.ztat.net/vgs/media/pdp-zoom/LE/22/1D/02/2A/12/LE221D022-A12@16.1.jpg'),
// title: Text(
// item['title'],
// style: TextStyle(fontWeight: FontWeight.w500),
// ),
// subtitle: Text(
// item['synopsis'],
// style: TextStyle(fontStyle: FontStyle.italic),
// ),
// )


// Container(
//   padding: EdgeInsets.symmetric(),
//   child: Material(
//     child: InkWell(
//       onTap: (){},
//       child: GridTile(
//         footer: Container(

//         ),
//         child: Image.network(
//           'https://mosaic02.ztat.net/vgs/media/pdp-zoom/LE/22/1D/02/2A/12/LE221D022-A12@16.1.jpg',
//         ),
//       ),
//     ),
//   ),
// );