import 'package:flutter/material.dart';
import 'package:projectapi/album.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailScreen extends StatefulWidget {
  final album albumData; 

  DetailScreen({required this.albumData});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {


@override
  void initState() {
    // TODO: implement initState
    fetchData();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details Screen")),
      body: ListView.builder(
        itemCount: widget.albumData.data?.length ?? 0,
        itemBuilder: (context, index) {
          final item = widget.albumData.data![index]; 
          
          return SizedBox(
            height: 150,
            child: Card(
              margin: EdgeInsets.all(20),
              color: Color(int.parse(item.color!.replaceFirst("#", "0xff"))),
              // 0xFFE2583E
              child: ListTile(
                title: Text(
                " ${item.name}",
                  style: TextStyle(color: const Color.fromARGB(255, 183, 65, 65), fontWeight: FontWeight.bold),
                ),
                
                subtitle: Column(
                  children: [
                    Text(
                      "Year: ${item.year}",
                      style: TextStyle(color: Colors.white70),
                    ),
                    Text("Id : ${item.id}")
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
  
  void fetchData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('totalPages', widget.albumData.totalPages ?? 0);
  }

  
}
