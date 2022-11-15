import 'package:flutter/material.dart';
import 'package:travelui/travelui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const HomePage()
        home: travelui()

        );
  }
}

// uncomment the line no20 Homepage function and uncooment code below

// all code commenteeed

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("ui component placement"),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             flex: 2,
//             child: Column(
//               children: [
//                 Expanded(
//                     flex: 3,
//                     child: Column(
//                       children: [
//                         Expanded(
//                           flex: 2,
//                           child: Container(
//                             alignment: Alignment.center,
//                             child: Text(
//                               "Hello friends how are you",
//                               style: TextStyle(fontSize: 20),
//                             ),
//                             color: Colors.red,
//                           ),
//                         ),
//                         Expanded(
//                             flex: 1,
//                             child: Container(
//                               color: Colors.green,
//                             ))
//                       ],
//                     )),
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     color: Colors.blue,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             flex: 3,
//             child: Column(
//               children: [
//                 Expanded(
//                   flex: 1,
//                   child: Row(
//                     children: [
//                       Expanded(
//                           flex: 2,
//                           child: Container(
//                             padding: EdgeInsets.all(10),
//                             alignment: Alignment.center,
//                             child: Text(
//                               "Hello friends how are you i am fine and i hope u are also fine there",
//                               style: TextStyle(fontSize: 20),
//                             ),
//                             color: Colors.white,
//                           )),
//                       Expanded(
//                         flex: 1,
//                         child: Column(
//                           children: [
//                             Expanded(
//                               flex: 2,
//                               child: Column(
//                                 children: [
//                                   Expanded(
//                                     flex: 3,
//                                     child: Column(
//                                       children: [
//                                         Expanded(
//                                           flex: 2,
//                                           child: Column(
//                                             children: [
//                                               Container(
//                                                 margin:
//                                                     EdgeInsets.only(top: 20),
//                                                 // height: 20,
//                                                 // width: 20,
//                                                 color: Colors.red,
//                                               ),
//                                               Expanded(
//                                                 child: Container(
//                                                   alignment: Alignment.center,
//                                                   child: Text(
//                                                     " middle Hello friends how are you",
//                                                     style:
//                                                         TextStyle(fontSize: 20),
//                                                   ),
//                                                   color: Colors.red,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                         Expanded(
//                                           flex: 1,
//                                           child: Container(
//                                             color: Colors.green,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Expanded(
//                                     flex: 1,
//                                     child: Container(
//                                       color: Colors.blue,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                     flex: 1,
//                     child: Container(
//                       color: Colors.black,
//                     )),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

