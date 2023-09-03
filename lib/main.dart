import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import 'package:clickup_app/api/clickup/clickupApi.dart';
import 'package:clickup_app/model/spaces_model.dart';
import 'package:clickup_app/view/home/home_page.dart';

import 'controllers/user_controller.dart';
import 'model/user_model.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      // home: const MyHomePage(title: "Teste"),
      home: const HomePage(),
      // initialBinding: BindingsBuilder(() {
      //   Get.put<UserController>(UserController());
      // }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var clickupApi = ClickupApi();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _incrementCounter();
          // clickupApi.get().spaces();
          // Spaces spaces = await clickupApi.get().spaces();
          // print(spaces.spaces![0].name);
          // clickupApi.get().space(space_id:'space_id');
          // clickupApi.get().folder(folder_id: '90140046869');
          // clickupApi.get().folders(space_id: '90140039760');
          // clickupApi.get().lists(folder_id: '90140046869');
          // clickupApi.get().tasks(list_id: '901400085659');
          // clickupApi.get().task(task_id: '86ay5c07d');
          // clickupApi.get().taskComments(task_id: '86ay5c07d');
          // clickupApi.post().createSpace(space_name: 'Espaço Teste');
          // clickupApi.post().createTask(task_name: 'Tarefa Teste com Descrição', description: 'Teste de descrição Opcional', list_id: '901400085659');
          // clickupApi.post().createList(list_name: 'List Teste', folder_id: '90140046869');
          // clickupApi.post().createFolder(folder_name: 'Folder Teste', space_id: '90140039760');
          // clickupApi.post().createTaskComment(task_id: '86ay5c07d', assignee: 44358912, comment: 'Teste comentario', notify_all: false);
          // clickupApi.update().commentTask(comment_id: 90140000485717, assignee: 44358912, comment: 'Comentario Atualizado', resolved: true);
          // clickupApi.update().task(task_id: '86ay5c07d', description: "Teste de Update Task");
          // clickupApi.delete().commentTask(comment_id: 90140000485717);
          // clickupApi.delete().task(task_id: '');
          // User user = await clickupApi.get().user();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
