import 'package:attendance_app/models/attendance_record.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // get attendance record for a user (real-time-stream)
  Stream<List<AttendanceRecord>> getAttendanceRecords(String, UserId) {
    return 'hello world';
  }
}