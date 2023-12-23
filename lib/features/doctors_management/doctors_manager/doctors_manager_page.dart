import 'package:flutter/material.dart';
import 'package:roster_system/features/doctors_management/doctor_editor/doctor_editor_page.dart';
import 'package:roster_system/presentation/features/ui.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../core/navigator.dart';
import 'doctors_manager.dart';

class DoctorsManagerPage extends ReactiveStatelessWidget {
  const DoctorsManagerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: 'DOCTORS MANAGER'.text(),
          ),
          SliverList.list(
            children: doctorsManager.doctors
                .map(
                  (doctor) => ListTile(
                    title: doctor.name.text(),
                    onTap: () => navigator.to(DoctorEditorPage(id: doctor.id)),
                    trailing: IconButton(
                      onPressed: () => doctorsManager.removeDoctor(doctor),
                      icon: Icon(Icons.delete),
                    ),
                  ),
                )
                .toList(),
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
