import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:convert';

import 'common.dart';

Future getAddresses() async {
  final resp = await httpGet('addresses');
  return resp['results'];
}