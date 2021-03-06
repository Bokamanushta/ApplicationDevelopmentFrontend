import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';
import 'package:utm_x_change/screens/accomodation/accomodation.dart';
import 'package:utm_x_change/screens/checkList/checkList.dart';
import 'package:utm_x_change/screens/checkList/listDesc.dart';
import 'package:utm_x_change/screens/dosanddonts/description.dart';
import 'package:utm_x_change/screens/dosanddonts/dosdonts.dart';
import 'package:utm_x_change/screens/friends/descFriend.dart';
import 'package:utm_x_change/screens/friends/friends.dart';
import 'package:utm_x_change/screens/guideline/air.dart';
import 'package:utm_x_change/screens/guideline/arrive.dart';
import 'package:utm_x_change/screens/guideline/coach.dart';
import 'package:utm_x_change/screens/guideline/hotels.dart';
import 'package:utm_x_change/screens/guideline/tour.dart';
import 'package:utm_x_change/screens/guideline/train.dart';
import 'package:utm_x_change/screens/guideline/travel.dart';
import 'package:utm_x_change/screens/home/home.dart';
import 'package:utm_x_change/screens/info/info.dart';
import 'package:utm_x_change/screens/info/malaysia.dart';
import 'package:utm_x_change/screens/info/timeline.dart';
import 'package:utm_x_change/screens/info/utm.dart';
import 'package:utm_x_change/screens/livingCost/livingCost.dart';
import 'package:utm_x_change/screens/login/logiin.dart';
import 'package:utm_x_change/screens/notice/descNotice.dart';
import 'package:utm_x_change/screens/notice/notice.dart';
import 'package:utm_x_change/screens/places/places.dart';
import 'package:utm_x_change/screens/profile/profile.dart';
import 'package:utm_x_change/screens/settings/settings.dart';
import 'package:utm_x_change/screens/shopping/shopping.dart';
import 'package:utm_x_change/screens/splash/my_splash.dart';
import 'package:utm_x_change/screens/staff_dashboard/dashbaord.dart';
import 'package:utm_x_change/screens/staff_dashboard/manageStudent/manage.dart';
import 'package:utm_x_change/screens/staff_dashboard/manageStudent/noticeStaff/noticeAdd.dart';
import 'package:utm_x_change/screens/staff_dashboard/manageStudent/noticeStaff/noticeEdit.dart';
import 'package:utm_x_change/screens/staff_dashboard/manageStudent/noticeStaff/noticeStaff.dart';
import 'package:utm_x_change/screens/staff_dashboard/manageStudent/students/addStudent.dart';
import 'package:utm_x_change/screens/staff_dashboard/manageStudent/students/editStudent.dart';
import 'package:utm_x_change/screens/staff_dashboard/manageStudent/students/students.dart';
import 'package:utm_x_change/screens/staff_dashboard/updateGUI/checklist/addChecklist.dart';
import 'package:utm_x_change/screens/staff_dashboard/updateGUI/checklist/checklistStaff.dart';
import 'package:utm_x_change/screens/staff_dashboard/updateGUI/checklist/descChecklist.dart';
import 'package:utm_x_change/screens/staff_dashboard/updateGUI/checklist/editCheckList.dart';
import 'package:utm_x_change/screens/staff_dashboard/updateGUI/dosanddonts/dosStaff.dart';
import 'package:utm_x_change/screens/staff_dashboard/updateGUI/dosanddonts/editDo.dart';
import 'package:utm_x_change/screens/staff_dashboard/updateGUI/dosanddonts/newDo.dart';
import 'package:utm_x_change/screens/staff_dashboard/updateGUI/places/staffNewPlaces.dart';
import 'package:utm_x_change/screens/staff_dashboard/updateGUI/places/staffPlaces.dart';
import 'package:utm_x_change/screens/staff_dashboard/updateGUI/places/staffUpdatePlaces.dart';
import 'package:utm_x_change/screens/staff_dashboard/updateGUI/shops/newShops.dart';
import 'package:utm_x_change/screens/staff_dashboard/updateGUI/shops/staff_shops.dart';
import 'package:utm_x_change/screens/staff_dashboard/updateGUI/shops/updateShops.dart';
import 'package:utm_x_change/screens/staff_dashboard/updateGUI/updateGUI.dart';

class Router {
  static Route<dynamic> createRoute(settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case home:
        return MaterialPageRoute(builder: (context) => Home());
      case profile:
        return MaterialPageRoute(builder: (context) => Profile());
      case setings:
        return MaterialPageRoute(builder: (context) => Settings());
      case shopping:
        return MaterialPageRoute(builder: (context) => Shopping());
      case login:
        return MaterialPageRoute(builder: (context) => Login());
      case dosdonts:
        return MaterialPageRoute(builder: (context) => DosDonts());
      case descOfDd:
        return MaterialPageRoute(
            builder: (context) => Description(data: settings.arguments));
      case accomodation:
        return MaterialPageRoute(builder: (context) => Accomodation());
      case livingCost:
        return MaterialPageRoute(builder: (context) => LivingCost());
      case places:
        return MaterialPageRoute(builder: (context) => Places());
      case checkList:
        return MaterialPageRoute(builder: (context) => CheckList());
      case decsList:
        return MaterialPageRoute(
            builder: (context) => CheckListHelper(data: settings.arguments));
      case friends:
        return MaterialPageRoute(builder: (context) => Friends());
      case descFriends:
        return MaterialPageRoute(
            builder: (context) => ProfileHelper(profile: settings.arguments));
      case notices:
        return MaterialPageRoute(builder: (context) => Notice());
      case descNotice:
        return MaterialPageRoute(
            builder: (context) => NoticeHelper(
                  data: settings.arguments,
                ));
      case info:
        return MaterialPageRoute(builder: (context) => Info());
      case malaysia:
        return MaterialPageRoute(builder: (context) => Malaysia());
      case utm:
        return MaterialPageRoute(builder: (context) => UTM());
      case utmTimline:
        return MaterialPageRoute(builder: (context) => TimelineBuilder());
      case travelCampus:
        return MaterialPageRoute(builder: (context) => Travel());
      case arriveCampus:
        return MaterialPageRoute(builder: (context) => Arrive());
      case plane:
        return MaterialPageRoute(builder: (context) => ByAir());
      case train:
        return MaterialPageRoute(builder: (context) => ByTrain());
      case coach:
        return MaterialPageRoute(builder: (context) => ByCoach());
      case hotels:
        return MaterialPageRoute(builder: (context) => Hotel());
      case tour:
        return MaterialPageRoute(builder: (context) => Tour());
      case staffHome:
        return MaterialPageRoute(builder: (context) => Dashboard());
      case staff_updateGUI:
        return MaterialPageRoute(builder: (context) => UpdateGUI());
      case staff_places:
        return MaterialPageRoute(builder: (context) => StaffPlaces());
      case staff_updatePlaces:
        return MaterialPageRoute(
            builder: (context) => StaffUpdatePlace(
                  data: settings.arguments,
                ));
      case staff_newPlaces:
        return MaterialPageRoute(builder: (context) => StaffNewPlace());
      case staff_shop:
        return MaterialPageRoute(builder: (context) => StaffShopping());
      case staff_shopNew:
        return MaterialPageRoute(builder: (context) => StaffNewShop());
      case staff_shopUpdate:
        return MaterialPageRoute(
            builder: (context) => StaffUpdateShop(data: settings.arguments));
      case staff_dosdont:
        return MaterialPageRoute(builder: (context) => DosDontsStaff());
      case staff_dosdont_update:
        return MaterialPageRoute(
            builder: (context) => DosDontUpdate(data: settings.arguments));
      case staff_dosdont_new:
        return MaterialPageRoute(builder: (context) => DosDontNew());
      case staff_checkList:
        return MaterialPageRoute(builder: (context) => CheckListStaff());
      case staff_checkList_helper:
        return MaterialPageRoute(
            builder: (context) => CheckListHelperStaff(
                  data: settings.arguments,
                ));
      case staff_checkList_New:
        return MaterialPageRoute(
            builder: (context) => CheckListNew(
                  value: settings.arguments,
                ));
      case staff_checkList_Update:
        return MaterialPageRoute(
            builder: (context) => CheckListUpdate(
                  data: settings.arguments,
                ));
      case staff_Student:
        return MaterialPageRoute(builder: (context) => Students());
      case staff_Student_update:
        return MaterialPageRoute(
            builder: (context) => StudentUpdate(
                  data: settings.arguments,
                ));
      case staff_Student_add:
        return MaterialPageRoute(builder: (context) => StudentAdd());
      case staff_Student_manage:
        return MaterialPageRoute(builder: (context) => ManageStudent());
      case staff_notice:
        return MaterialPageRoute(builder: (context) => NoticeStaff());
      case staff_notice_update:
        return MaterialPageRoute(
            builder: (context) => StaffUpdateNotice(
                  data: settings.arguments,
                ));
      case staff_notice_add:
        return MaterialPageRoute(builder: (context) => StaffAddNotice());
    }
    return null;
  }
}
