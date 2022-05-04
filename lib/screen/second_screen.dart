import 'package:bloc_example/screen/bloc/second_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  late SecondBloc bloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    bloc = SecondBloc()..add(SecondScreenInitialEvent());

    // bloc = BlocProvider.of<SecondBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bloc.add(SecondScreenTapEvent());
        },
      ),
    );
  }
}
