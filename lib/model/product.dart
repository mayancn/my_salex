import 'package:flutter/material.dart';

class Product {
  //Product
  String title;
  String description;
  String image;
  //Pricing
  int price;
  double compareAtPrice;
  double costPerItem;
  //Inventory
  int sku;
  String barcode;
  int quantity;
  double weight;
  String weightUnit;
  //Customs
  bool hasTariffCode;
  String tariffCode;
  // Other
  String availableAt;
  String tags;


  Product(
      {
      this.title,
      this.image,
      this.description,
      this.price,
      this.compareAtPrice,
      this.costPerItem,
      this.sku,
      this.barcode,
      this.quantity,
      this.weight,
      this.weightUnit,
      this.hasTariffCode,
      this.tariffCode,
      this.availableAt,
      this.tags
      }); 
}

class ProductColor {
  final String colorName;
  final MaterialColor color;

  ProductColor({this.colorName, this.color});
}

class ProductVariant {
  String name;
  int value;
  String type;

  ProductVariant({this.name, this.value, this.type});
}