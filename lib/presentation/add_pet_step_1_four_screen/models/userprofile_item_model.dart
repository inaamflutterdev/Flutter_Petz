import '../../../core/app_export.dart';/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {UserprofileItemModel({this.gender, this.contrastButton1, this.contrastButton2, this.maleText, this.femaleText, this.id, }) { gender = gender  ?? "Gender";contrastButton1 = contrastButton1  ?? ImageConstant.imgContrast;contrastButton2 = contrastButton2  ?? ImageConstant.imgContrastBlack900;maleText = maleText  ?? "Male";femaleText = femaleText  ?? "Female";id = id  ?? ""; }

String? gender;

String? contrastButton1;

String? contrastButton2;

String? maleText;

String? femaleText;

String? id;

 }
