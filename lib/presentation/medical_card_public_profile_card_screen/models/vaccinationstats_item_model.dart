import '../../../core/app_export.dart';/// This class is used in the [vaccinationstats_item_widget] screen.
class VaccinationstatsItemModel {VaccinationstatsItemModel({this.totalVaccinationText, this.twoText, this.totalVaccinationButtonText, this.id, }) { totalVaccinationText = totalVaccinationText  ?? "Total Vaccination";twoText = twoText  ?? "2";totalVaccinationButtonText = totalVaccinationButtonText  ?? "Total Vaccination";id = id  ?? ""; }

String? totalVaccinationText;

String? twoText;

String? totalVaccinationButtonText;

String? id;

 }
