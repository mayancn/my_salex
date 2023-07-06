import 'dart:convert';

import 'common.dart';

Future getProducts() async {
  final resp = await httpGet('products');
  return resp['data'];
}

Future getProductDetails() async {
  //final resp = await httpGet('');
  //return resp['data'];
}


Future createProduct(data) async {
  //final resp = await httpPost('', data);
  //print(resp);
}