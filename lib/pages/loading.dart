import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class loading extends StatefulWidget {
  const loading({super.key});

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {

   void getData() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    Map data = jsonDecode(response.body);
    print (data);
    print (data['userId']);
  }

  void initState() {
    super.initState();
    
  }
  

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      body: Text('Loading'),
    );
  }
}