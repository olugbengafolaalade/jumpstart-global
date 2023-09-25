import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BusinessregModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for foundername widget.
  TextEditingController? foundernameController;
  String? Function(BuildContext, String?)? foundernameControllerValidator;
  // State field(s) for businessname widget.
  TextEditingController? businessnameController;
  String? Function(BuildContext, String?)? businessnameControllerValidator;
  // State field(s) for type widget.
  TextEditingController? typeController;
  String? Function(BuildContext, String?)? typeControllerValidator;
  // State field(s) for industry widget.
  TextEditingController? industryController;
  String? Function(BuildContext, String?)? industryControllerValidator;
  // State field(s) for founderemail widget.
  TextEditingController? founderemailController;
  String? Function(BuildContext, String?)? founderemailControllerValidator;
  // State field(s) for founderphonenumber widget.
  TextEditingController? founderphonenumberController;
  String? Function(BuildContext, String?)?
      founderphonenumberControllerValidator;
  // State field(s) for description widget.
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  BusinessRegistrationRecord? success;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    foundernameController?.dispose();
    businessnameController?.dispose();
    typeController?.dispose();
    industryController?.dispose();
    founderemailController?.dispose();
    founderphonenumberController?.dispose();
    descriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
