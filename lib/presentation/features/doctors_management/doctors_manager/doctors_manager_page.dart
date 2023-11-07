import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../ui.dart';

import 'doctors_manager.dart';

class DoctorsManagerPage extends ReactiveStatelessWidget {
  const DoctorsManagerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'DOCTORS MANAGER'.text(),
      ),
      body: ListView(
        children: [
          ...doctorsManager.doctors.map(
            (doctor) => ListTile(
              title: doctor.name.text(),
              onTap: () {
                navigator.to(Routes.doctor, arguments: doctor.id);
              },
              trailing: IconButton(
                onPressed: () => doctorsManager.removeDoctor(doctor),
                icon: Icon(Icons.delete),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          doctorsManager.addDoctor();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
