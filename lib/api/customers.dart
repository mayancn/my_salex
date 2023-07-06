import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:convert';

import 'common.dart';

Future getCustomers() async {
  final resp = await httpGet('customers');
  return resp['results'];
}
