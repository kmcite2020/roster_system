import 'package:roster_system/domain/domain.dart';
// import '../../domain/repositories/repositories.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../features/rosters/roster_management.dart';

// import '../ui/ui.dart';

part 'medical_officer_bloc.dart';
part 'officers_bloc.dart';
part 'days_bloc.dart';
// part 'rosters_bloc.dart';
part 'officers.dart';

// final shiftsRM = RM.injectStream(
//   shiftsRepository.watchShifts,
//   initialState: <Shift>[],
// );

List<Shift> get shifts => [];

final addShiftBloc = AddShiftBloc();

class AddShiftBloc {
  final shiftRM = RM.inject(
    () => Shift(),
  );

  Shift get shift => shiftRM.state;

  void setShift(Shift shift) {
    shiftRM.setState(
      (s) {
        s = shift;
        return null;
      },
    );
  }

  void setShiftType(ShiftType? shiftType) =>
      setShift(shift..shiftType = shiftType!);
  void saveShift() {
    // shiftsRepository.setShift(shift);
  }
}
