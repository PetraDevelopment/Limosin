
import 'dart:developer';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import '../../screens/on_boarding_screens/first_step_screen.dart';

class AuthHelper {

  setUserData(responseJsonData) {
    log(responseJsonData.toString());
    if (responseJsonData.status == "200") {
      userData.write('userIsloggedIn', true);
    }

  }

  clearUserData() async{
  await  deleteAllFilesFromAppDir();
    userData.write('profilePhoto', '');
    userData.write('first_name', '');
    userData.write('last_name', '');
    userData.write('email', '');
    userData.write('phone', '');
    userData.write('userId', '');
    userData.write('userIsloggedIn', false);



  }
  Future<void> deleteAllFilesFromAppDir() async {
    try {
      Directory appDir = await getApplicationDocumentsDirectory();
      List<FileSystemEntity> files = appDir.listSync();
      for (FileSystemEntity file in files) {
        if (file is File) {
          await file.delete();
        }
      }
      print('All files deleted successfully');
    } catch (e) {
      print('Error occurred while deleting files: $e');
    }
  }
}
