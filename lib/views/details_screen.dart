//
// Coder                    : Rethabile Eric Siase
// Time taken to complete   : 2 hours
// Number of external help  : 0
// Purpose                  : To demonstrate basic navigation and passing data through screens
//

import 'package:flutter/material.dart';
import 'package:main_test_2025/viewmodels/student_view_model.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer<StudentViewModel>(builder: (context, viewModel, child) {
          return ListView(
            children: [
              Text('Name Number: ${viewModel.studNo}'),
              Text('Name: ${viewModel.name}'),
              Text('Surname: ${viewModel.surname}'),
              Text('Email: ${viewModel.email}'),
              Text('Course: ${viewModel.course}'),
              const SizedBox(
                height: 10,
              ),
              // Display student details here and connect to ViewModel
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                }, // Write code to go back to input screen
                child: const Text('Back'),
              ),
            ],
          );
        }),
      ),
    );
  }
}
