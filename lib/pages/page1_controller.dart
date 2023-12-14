import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:learn_api/pages/models/user_model.dart';
import 'package:learn_api/pages/page_1.dart';
import 'package:http/http.dart' as http;

class UsersController {
  Future<List<Users>> fetchUsers() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if(response.statusCode == 200){
      Iterable list = json.decode(response.body);
      return List<Users>.from(list.map((model) => Users.fromJson(model)));
    }else{
      throw Exception('Failed to load Users');
    }
  }
}