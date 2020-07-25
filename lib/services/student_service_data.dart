import 'package:utm_x_change/models/profileInfo/profileInfo.dart';
import 'package:utm_x_change/services/rest_service.dart';

// QuoteDataService is a wrapper class implmenting calls for CRUD operations on Quote endpoints.
//  The class is implemented using the Singleton design pattern.

class StudentDataService {
  //------- Here is how we implement 'Singleton pattern' in Dart --------

  static final StudentDataService _instance = StudentDataService._constructor();
  factory StudentDataService() {
    return _instance;
  }

  StudentDataService._constructor();
  final rest = RestService();
  //---------------------------- end of singleton implementation

  Future deleteStudent({String id}) async {
    await rest.delete('students/$id');
  }

  Future<ProfileInfo> createStudent({ProfileInfo student}) async {
    final json = await rest.post('students', data: student);
    return ProfileInfo.fromJson(json);
  }

  Future<ProfileInfo> verify(userInfo) async {
    final json = await rest.post('students', data: userInfo);
    return ProfileInfo.fromJson(json);
  }

  Future<ProfileInfo> updateStudent({String id, ProfileInfo student}) async {
    final json = await rest.patch('students/$id', data: student);
    return ProfileInfo.fromJson(json);
  }

  Future<List<ProfileInfo>> getAllStudents() async {
    final listJson = await rest.get('students');

    return (listJson as List)
        .map((itemJson) => ProfileInfo.fromJson(itemJson))
        .toList();
  }

  Future<List<ProfileInfo>> getAllStudentsBySemester(semseter) async {
    final listJson = await rest.post('students/semester', data: semseter);

    return (listJson as List)
        .map((itemJson) => ProfileInfo.fromJson(itemJson))
        .toList();
  }
} // class Quote
