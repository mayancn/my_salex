import 'package:flutter/material.dart';

class Address{
  String country;
  String state;
  String city;
  String locality;
  String street;
  String landmark;
  int postalcode;
  int mobileNo;

  Address({
    this.country,
    this.state,
    this.city,
    this.locality,
    this.street,
    this.landmark,
    this.postalcode,
    this.mobileNo
  });
}

class AddressType{
  final String addrName = "";
  final String addrType = "";
}