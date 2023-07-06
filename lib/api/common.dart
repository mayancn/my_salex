import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

final identifierUserdata = 'userdata';

Map userdata = {
  //Please check route for your enviorment 
  //Route link
  'server': 'http://192.168.75.131:3000/api/v1/'
};

void showToast(scaffold, msg) {
  scaffold.currentState.showSnackBar(SnackBar(content: Text(msg)));
}

getHeaders() {
  return {
    'Content-Type': 'application/json',
  };
}

handleAPIError(error) {
  print('common.dart handleAPIError: $error');
  error = error.toString();
  if (error.contains('OS Error: Connection refused') || error.contains('OS Error: No route to host') || error.contains('OS Error: Connection timed out') || error.contains('SocketException: Failed host lookup') || error.contains('Invalid argument(s): No host specified in URI')) {
    // Fluttertoast.showToast(msg: 'Cannot communicate with Server !', toastLength: Toast.LENGTH_SHORT, timeInSecForIos: 1, gravity: ToastGravity.BOTTOM);
    throw new Exception('Cannot communicate with Server !');
  }
  throw new Exception(error);
}

handleAPIResponse(resp) {
  // format API json response
  return resp;
}

Future httpGet(url) async {
  try {
    final response = await http.get(userdata['server'] + url, headers: getHeaders());
    return handleAPIResponse(json.decode(response.body));
  } catch (e) {
    handleAPIError(e);
  }
}

Future httpPost(url, data) async {
  try {
    final response = await http.post(userdata['server'] + url, body: json.encode(data), headers: getHeaders());
    return handleAPIResponse(json.decode(response.body));
  } catch (e) {
    handleAPIError(e);
  }
}

Future httpPut(url, data) async {
  try {
    final response = await http.put(userdata['server'] + url, body: json.encode(data), headers: getHeaders());
    return handleAPIResponse(json.decode(response.body));
  } catch (e) {
    handleAPIError(e);
  }
}

Future httpDelete(url) async {
  try {
    final response = await http.delete(userdata['server'] + url, headers: getHeaders());
    return handleAPIResponse(json.decode(response.body));
  } catch (e) {
    handleAPIError(e);
  }
}
