// import 'package:dio_api_task/core/view_models/TodosVM.dart';
// import 'package:flutter/material.dart';

// class TodosScreen extends StatefulWidget {
//   const TodosScreen({super.key});

//   @override
//   State<TodosScreen> createState() => _TodosScreenState();
// }

// class _TodosScreenState extends State<TodosScreen> {
//   TodosVM tvm = TodosVM();
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: tvm.getTodos(),
//       // initialData: InitialData,
//       builder: (ctx, snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           return ListView.builder(
//             itemCount: snapshot.data!.length,
//             itemBuilder: (context,index) {
//               return ListTile(
//                // title: Image.network( snapshot.data![index].image!),
//               );
//             },
//           );
//         } else
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//       },
//     );
//   }
// }
