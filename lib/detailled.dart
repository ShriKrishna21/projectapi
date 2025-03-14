// import 'package:flutter/material.dart';
// import 'package:projectapi/album.dart';
// import 'package:projectapi/dogs.dart';

// class Detailled extends StatefulWidget {
//   final List<Datat>? data;

//   const Detailled({super.key, this.data});

//   @override
//   State<Detailled> createState() => _DetailledState();
// }

// class _DetailledState extends State<Detailled> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           children: [
//             Text("kljsfhlkjdddddddddddddddddddddddddddd"),
//             Expanded(
//               // Use Expanded here, wrapping the ListView
//               child: ListView.builder(
//                 itemCount: widget.data!.length,
//                 itemBuilder: (context, index) {
//                   var item = widget.data![index];
//                   return Card(
//                     child: ListTile(
//                       title: Text(item.attributes!.name ?? ''),
//                       subtitle: Column(
//                         children: [
//                           Text(item.type ?? ""),
//                           Text("${item.attributes!.life!.min ?? ""}  "),
//                           Text("${item.attributes!.hypoallergenic ?? ""} "),
//                           Text(item.attributes!.description ?? ''),
                          
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
