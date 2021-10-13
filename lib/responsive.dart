import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
  if(constraints.maxWidth<768){
  return Column(
    children:
    [
      Container(
        width: 280,
        height: 350,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Colors.blue, Colors.cyan]),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      const Text('Hello I am using this first time',
        style: TextStyle(fontSize: 22),)

    ],
  );
}else{
  return Expanded(
    child: Row(
      children:
      [
        Container(
          width: 280,
          height: 350,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Colors.blue, Colors.cyan]),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        const Text('Hello I am using this first time',
          style: TextStyle(fontSize: 22))

      ],
    ),
  );
}

          }
        ),
      ),
    );

    }

}
