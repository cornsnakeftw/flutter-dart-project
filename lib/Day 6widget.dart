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
body: Padding(
  padding: EdgeInsets.all(50),
  child: Container(
  color: Colors.red,
  child: Text(
     'You have pushed the button this many times:',
  ),
  ),
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