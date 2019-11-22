import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {

  final String apiUrl = "https://5ca369c58bae720014a9623e.mockapi.io/data";

// API End-point Status Check

  test('API Status Check', () async {
    var response = await http
        .get(Uri.encodeFull(apiUrl), headers: {"Accept": "application/json"});
    expect(response.statusCode, 200);
  });

// API Data count 

test('API names validation', () async {
    var response = await http
        .get(Uri.encodeFull(apiUrl), headers: {"Accept": "application/json"});
    
    List<dynamic> data = json.decode(response.body);

    expect(data.length, isNot(0));
  });
}

