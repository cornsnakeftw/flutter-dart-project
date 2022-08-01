//----------------------------Day 6 Widget--------------\\
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(App());

class App extends StatelessWidget {
const App({Key? key}) : super(key: key);

@override
Widget build(BuildContext context)
{
return MaterialApp(
home: HomePage(),
);
}
}

class HomePage extends StatefulWidget {
const HomePage({Key? key}) : super(key: key);

@override
State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int count = 0;
int currentIndex = 0;

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Appbar'),
centerTitle: true,
),

//-----------AspectRatio----------\\


// body: /*const*/ AspectRatio(
// aspectRatio: 100, 
//   child: Container(
//     color: Colors.red,
//     child: Text(
//       'You have pushed the button this many times:'),
// ),),


//-------------------------ConstrainedBox--------------------------\\
// body:ConstrainedBox(constraints: const BoxConstraints(maxWidth:500, maxHeight: 500),
//   child: Container(
//    color: Colors.red,
//    height: 300,
//    width: 300,
//   child: const Text(
//   'You have pushed the button this many times:',
// ),),),



//------------------------------SizedBox------------------------------\\
// body: SizedBox(
 
//     width:500,
//     child: Container(
//     color: Colors.red,
//     child: Text('You have pushed the button this many times'
//     ),
//     ),
// ),


//-----------------Padding-----------\\
// body: Padding(
//   padding: EdgeInsets.all(50),
//   child: Container(
//   color: Colors.red,
//   child: Text(
//      'You have pushed the button this many times:',
//   ),
//   ),
// ),

//-------------TEST----------------\\
// body: Container(
//   alignment: Alignment.center,
//   child: const Text(
//     'You have pushed the button this many times:',
//     ),
//     constraints: const BoxConstraints(maxWidth: 50),
//     ),


  //--            Multiple-Child Widgets                   -\\
  /// - can accept more than one widget as child
  /// - non scrollable: Row, Column
  
  body:Column (
    children: <Widget>[
    const Text( 'You have pushed', style:TextStyle(fontSize: 30)
    ),
    const Text(
      'the buton this many times:',
      ),
    Expanded(child: Container(color:Colors.red)),
  ],
  ),



floatingActionButton: FloatingActionButton(
child: Icon(Icons.add),
onPressed: () {
setState(() {
count++;
});
// child: Icon(Icons.remove),
},
),

bottomNavigationBar: BottomNavigationBar(
items: const [
BottomNavigationBarItem(
icon: Icon(Icons.home,),
label: 'Home',
backgroundColor: Colors.red,
),
BottomNavigationBarItem(icon: Icon(Icons.search,),
label: 'Search',
backgroundColor: Colors.blue,
),
BottomNavigationBarItem(
icon: Icon(Icons.contact_phone,),
label: 'Contact',
backgroundColor: Colors.blue,
),
],
currentIndex: currentIndex,
onTap: (int index) {
setState(() {
currentIndex = index;
});
},

),

);
//
// // );
}
}


//-------------------------------- List View ---------------------\\
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// void main() => runApp(App());

// class App extends StatelessWidget {
// const App({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context)
// {
// return MaterialApp(
// home: HomePage(),
// );
// }
// }

// class HomePage extends StatefulWidget {
// const HomePage({Key? key}) : super(key: key);

// @override
// State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
// int count = 0;
// int currentIndex = 0;

// @override
// Widget build(BuildContext context) {
//   final List<String> entries = <String>[
//     'First Item',
//     'Second Item',
//     'Third Item'
//   ];
//   final List<Color>colorCodes = <Color>[
//   Colors.blue,
//   Colors.red,
//   Colors.yellow
//   ];

// return Scaffold(
// appBar: AppBar(
// title: Text('Appbar'),
// centerTitle: true,
// ),



//   body: ListView.builder(
//     itemCount: entries.length,
//     itemBuilder: (BuildContext context, int index){
//       return Container(
//         height:50,
//         color: colorCodes[index],
//         child:Center(child:Text('${entries[index]}')),
//     );
//     },
//     ),


//-----------List View Seperated list --------------\\
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// void main() => runApp(App());

// class App extends StatelessWidget {
// const App({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context)
// {
// return MaterialApp(
// home: HomePage(),
// );
// }
// }

// class HomePage extends StatefulWidget {
// const HomePage({Key? key}) : super(key: key);

// @override
// State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
// int count = 0;
// int currentIndex = 0;

// @override
// Widget build(BuildContext context) {
//   final List<String> entries = <String>[
//     'First Item',
//     'Second Item',
//     'Third Item'
//   ];
//   final List<Color>colorCodes = <Color>[
//   Colors.blue,
//   Colors.red,
//   Colors.yellow
//   ];

// return Scaffold(
// appBar: AppBar(
// title: Text('Appbar'),
// centerTitle: true,
// ),



//   body: ListView.separated(
//     itemCount: entries.length,
//     itemBuilder: (BuildContext context, int index){
//       return Container(
//         height:50,
//         color: colorCodes[index],
//         child:Center(child:Text('${entries[index]}')),
//     );
//     },

//     separatorBuilder:(BuildContext context,int index) =>const Divider(),
//     ),
//     floatingActionButton: FloatingActionButton(
// child: Icon(Icons.add),
// onPressed: () {
// setState(() {
// count++;
// });
// // child: Icon(Icons.remove),
// },
// ),

// bottomNavigationBar: BottomNavigationBar(
// items: const [
// BottomNavigationBarItem(
// icon: Icon(Icons.home,),
// label: 'Home',
// backgroundColor: Colors.red,
// ),
// BottomNavigationBarItem(icon: Icon(Icons.search,),
// label: 'Search',
// backgroundColor: Colors.blue,
// ),
// BottomNavigationBarItem(
// icon: Icon(Icons.contact_phone,),
// label: 'Contact',
// backgroundColor: Colors.blue,
// ),
// ],
// currentIndex: currentIndex,
// onTap: (int index) {
// setState(() {
// currentIndex = index;
// });
// },

// ),

// );
// //
// // // );
// }
// }



//-----------------GRIDVIEW -------------------\\
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// void main() => runApp(App());

// class App extends StatelessWidget {
//   const App({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int count = 0;
//   int currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     final List<String> entries = <String>[
//       'First Item',
//       'Second Item',
//       'Third Item',
//       'Fourth Item'
//     ];

//     final List<Color> colorCodes = <Color>[
//       Colors.blue,
//       Colors.red,
//       Colors.yellow,
//       Colors.green
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Appbar'),
//         centerTitle: true,
//       ),

//       body: GridView.count(
//         primary: false,
//         padding: const EdgeInsets.all(16),
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 20,
//         crossAxisCount: 3,
//         scrollDirection: Axis.vertical, //can remove to show non scrollable feature
//         children: [
//           Container(
//             color: colorCodes[0],
//             child: Text(entries[0]),
//           ),
//           Container(
//             color: colorCodes[1],
//             child: Text(entries[1]),
//           ),
//           Container(
//             color: colorCodes[2],
//             child: Text(entries[2]),
//           ),
//           Container(
//             color: colorCodes[3],
//             child: Text(entries[3]),
//           ),
//         ],
//       ),