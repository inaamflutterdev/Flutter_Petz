import '../../../core/app_export.dart';/// This class is used in the [vaccination_item_widget] screen.
class VaccinationItemModel {VaccinationItemModel({this.neuteredSpayed, this.isSelected, }) { neuteredSpayed = neuteredSpayed  ?? "Neutered / Spayed";isSelected = isSelected  ?? false; }

String? neuteredSpayed;

bool? isSelected;

 }
