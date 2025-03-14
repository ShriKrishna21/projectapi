import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:projectapi/detial.dart';

import 'package:projectapi/album.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Future<album?> getSavedAlbumData() async {
  final prefs = await SharedPreferences.getInstance();
  final jsonData = prefs.getString('album_data');

  if (jsonData != null) {
    return album.fromJson(jsonDecode(jsonData));
  }
  return null; // No data found
}

  Future<album?>? futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
               
                final albumData = await fetchAlbum();
       

                if (albumData != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(albumData: albumData),
                    ),
                  );
                }
              },
              child: Text("Fetch details"),
            ),
            // ElevatedButton(onPressed: (){
            //   Navigator.push(context, MaterialPageRoute(builder: (context) => Dogss(),));
            // }, child: Text("dogs"))
          ],
        ),
        
      ),
    );
  }

  Future<album?> fetchAlbum() async {
    try {
      final response =
          await http.get(Uri.parse('https://reqres.in/api/unknown'));

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
        print(jsonResponse);
        return album.fromJson(jsonResponse);
      } else {
        throw Exception(
            'Failed to load album: Status Code ${response.statusCode}');
      }
    } catch (error) {
      print("Error fetching album: $error");
      return null;
    } finally {
      print("Fetch album attempt completed.");
    }
  }
}
