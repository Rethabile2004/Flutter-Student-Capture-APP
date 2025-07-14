//
// Coder                    : Rethabile Eric Siase
// Time taken to complete   : 2 hours
// Number of external help  : 0
// Purpose                  : To demonstrate basic navigation and passing data through screens
//

import 'package:flutter/material.dart';
import 'package:main_test_2025/routes/route_manager.dart';
import 'package:main_test_2025/viewmodels/student_view_model.dart';
import 'package:provider/provider.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Enter Student Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer<StudentViewModel>(builder: (context, viewModel, child) {
          return ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Student Number'),
                ],
              ),
              TextField(
                onChanged: (value) => viewModel.updateStudentNo(value),
                decoration: InputDecoration(
                  hintText: 'e.g. 2023123456',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Name'),
                ],
              ),
              TextField(
                onChanged: (value) => viewModel.updateName(value),
                decoration: InputDecoration(
                  hintText: 'e.g. Rethabile',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Surname'),
                ],
              ),
              TextField(
                onChanged: (value) => viewModel.updateSurname(value),
                decoration: InputDecoration(
                  hintText: 'e.g. Siase',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Email'),
                ],
              ),
              TextField(
                onChanged: (value) => viewModel.updateEmail(value),
                decoration: InputDecoration(
                  hintText: 'e.g. siase@gmail.com',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Course'),
                ],
              ),
              TextField(
                onChanged: (value) => viewModel.updateCourse(value),
                decoration: InputDecoration(
                  hintText: 'e.g. Dip. IT',
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteManager.detailsScreen);
                },
                child: const Text('Submit'),
              ),
            ],
          );
        }),
      ),
    );
  }
}
