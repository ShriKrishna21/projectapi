// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:projectapi/detailled.dart';
// import 'package:projectapi/dogs.dart';

// class Dogss extends StatefulWidget {
//   const Dogss({super.key});

//   @override
//   State<Dogss> createState() => _DogssState();
// }

// class _DogssState extends State<Dogss> {
//   dogmodel? dogs;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//      fetchApi();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold();
//   }
//  Future<void> fetchApi() async {
//     final url = Uri.parse("https://dogapi.dog/api/v2/breeds");
//     try{
//      final response = await http.get(url);
//      print("222222222222222222222222222===============${response.statusCode}");
//      if(response.statusCode==200)
//      {
//       print("kjhsgakkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");

      
//       final Map<String ,dynamic>data=jsonDecode(response.body);

//        setState(() {
//          print("kjhsgakkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk555555555555555555555");
//           dogs = dogmodel.fromJson(data);
//           print("111111111111111111111111111111111111111111111${dogs!.data}");
//         });
//       //   ScaffoldMessenger.of(context).showSnackBar(
//       //     SnackBar(content: Text("data fetched sucessfull")),
//       //   );
//        Navigator.push(context, MaterialPageRoute(builder: (context) =>Detailled(data:dogs!.data),));

//      }
//      else{
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("date failed to fetch"))
//       );
//      }
     
//     }
//     catch(error){
//       print("$error");
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Api error please check")),
//       );
      
//     }
//     finally{
//       print("api request attempted sucessfully");
//     }
    
//   }
// }