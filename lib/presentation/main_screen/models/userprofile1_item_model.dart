import '../../../core/app_export.dart';/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {Userprofile1ItemModel({this.userImage, this.petDescription, this.id, }) { userImage = userImage  ?? ImageConstant.imgGroup3654;petDescription = petDescription  ?? "Maylo\n2 Years Old, Male, Dog Pets.ID # N/A";id = id  ?? ""; }

String? userImage;

String? petDescription;

String? id;

 }
