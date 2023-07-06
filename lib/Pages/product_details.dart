import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product;
  
  ProductDetails({Key key, @required this.product}) : super(key: key);
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          tooltip: 'Back',
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
          color: Colors.blueGrey,
        ),
        title: Text(
          widget.product['title'],
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            tooltip: 'Cart',
            onPressed: (){},
          )
        ],
      ),
      body: Card(
        child: ListView(
          children: <Widget>[
            Stack(
            children: <Widget>[
              Image.network(
                'https://mosaic02.ztat.net/vgs/media/pdp-zoom/LE/22/1D/02/2A/12/LE221D022-A12@16.1.jpg',
                fit: BoxFit.cover,
              ),
              Positioned(
                child: FloatingActionButton(
                  elevation: 2,
                  child: Icon(
                    Icons.label_outline,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.lightBlue.withOpacity(0.3),
                  onPressed: (){},
                  tooltip: 'Wishlist',
                ),
                bottom: 20,
                right: 10, 
              ),
            ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal:10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.ltr,
                    children: <Widget>[
                      Text(
                        widget.product['title'],
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        widget.product['synopsis'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Divider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Text(
                        '₹ ${widget.product['price'].toString()}',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                          fontSize: 28,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      Text(
                        '₹ ${widget.product['compare_at_price'].toString()}',
                        style: TextStyle(
                          color: Colors.black54,
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Colors.amber,
                          Colors.amberAccent,
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: const Text(
                      'Buy now',
                      style: TextStyle(fontSize: 20)
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
