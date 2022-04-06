import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class API {
  static const _apiUrl = "http://10.0.2.2:5000";

  dynamic getData(String endpoint) async {
    var url = Uri.parse('$_apiUrl/$endpoint');
    print(url);
    var response = await http.get(url, headers: {
      HttpHeaders.authorizationHeader:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MjRhY2E5YzM5ZmQ2NzFkNWMwMTdjODciLCJpYXQiOjE2NDkxNzU4MjIsImV4cCI6MTY1NTE3NTgyMn0.gi-TKTVRTG-0N23VWr8XvCCU_GjRQ_YKJBCgOp7RhIs',
    });
    print("here it am");
    print(response.body);

    return response;
  }

  dynamic postData(String endpoint, var data) async {
    var url = Uri.parse('$_apiUrl/$endpoint');
    print(url);
    print(data);
    print("here");

    var response = await http.post(url, body: json.encode(data), headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    });
    print("i am here");
    print('response status : ${response.statusCode}');
    print('response data: ${response.body}');

    if(response.statusCode == 200){
      return response.body;
    }
    return false;
  }
}
