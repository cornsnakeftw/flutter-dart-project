// import 'package:flutter/material.dart';
// void main() {
//   runApp(
//     //the function runApp() starts the Flutter application
//     // Directionality(
//     //   textDirection: TextDirection.ltr,
//     //   child: Center(
//     //     child : MyStatefulWidget(),
//     //  ), 
//     // ), //Directionality

//     MyStatelessWidget()
//   );
// }


// class MyStatelessWidget extends StatelessWidget {
  

//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp( title: 'Flutter Demo',
//     theme: ThemeData( primarySwatch: Colors.blue,
//     ),
//     home: Homepage(),
//     );
//   }
// }

// class Homepage extends StatefulWidget {
//   const Homepage({Key? key}) : super(key: key);

//   @override
//   State <Homepage> createState() =>  HomepageState();
// }

// class  HomepageState extends State <Homepage> {

//   int count = 1;
//   @override
//   Widget build(BuildContext context) {
//     // return Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'); ///return whatever to show at homepage
//     return Scaffold(
//         appBar: AppBar(
//         title: Text("Appbar"),
//         ),
//                 body: Center(
//           child:Text("Page $currentIndex is selected."),
//           d),
//           bottomNavigationBar : BottomNavigationBar(
//             items: const [
//               BottomNavigationBarItem(
//                 icon: Icon (
//                   Icons.home_outlined,
//                 ),
//                 label: 'Home',
//                 ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.search,
//                 ),
//                 label: 'Search',
//               )
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.call,
//                 ),
//                 label:'Call',
//               )
//             ]
//           ));
//         floatingActionButton:FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: (){
//             setState(() {
//               count++;
//             });
//           },
//         )
//   }
// }

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
    const Text( 'You have pushed',
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