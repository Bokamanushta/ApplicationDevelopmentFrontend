import 'package:utm_x_change/models/checkListData.dart';

class CheckListTemplate{
  String title;
  List <CheckListData> documentList ;
  String imageLocation;

  CheckListTemplate({this.documentList,this.title,this.imageLocation});
}