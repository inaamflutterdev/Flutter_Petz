import '../../../core/app_export.dart';/// This class is used in the [form_item_widget] screen.
class FormItemModel {FormItemModel({this.title, this.placeholder, this.imageClass, this.id, }) { title = title  ?? "Title*";placeholder = placeholder  ?? "Enter Medicine name/title or select";imageClass = imageClass  ?? ImageConstant.imgReply;id = id  ?? ""; }

String? title;

String? placeholder;

String? imageClass;

String? id;

 }
