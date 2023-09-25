import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BusinessRegistrationRecord extends FirestoreRecord {
  BusinessRegistrationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "business_name" field.
  String? _businessName;
  String get businessName => _businessName ?? '';
  bool hasBusinessName() => _businessName != null;

  // "founder_name" field.
  String? _founderName;
  String get founderName => _founderName ?? '';
  bool hasFounderName() => _founderName != null;

  // "founder_email" field.
  String? _founderEmail;
  String get founderEmail => _founderEmail ?? '';
  bool hasFounderEmail() => _founderEmail != null;

  // "founder_phone" field.
  String? _founderPhone;
  String get founderPhone => _founderPhone ?? '';
  bool hasFounderPhone() => _founderPhone != null;

  // "business_tyoe" field.
  String? _businessTyoe;
  String get businessTyoe => _businessTyoe ?? '';
  bool hasBusinessTyoe() => _businessTyoe != null;

  // "employee_count" field.
  int? _employeeCount;
  int get employeeCount => _employeeCount ?? 0;
  bool hasEmployeeCount() => _employeeCount != null;

  // "industry" field.
  String? _industry;
  String get industry => _industry ?? '';
  bool hasIndustry() => _industry != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _country = snapshotData['country'] as String?;
    _businessName = snapshotData['business_name'] as String?;
    _founderName = snapshotData['founder_name'] as String?;
    _founderEmail = snapshotData['founder_email'] as String?;
    _founderPhone = snapshotData['founder_phone'] as String?;
    _businessTyoe = snapshotData['business_tyoe'] as String?;
    _employeeCount = castToType<int>(snapshotData['employee_count']);
    _industry = snapshotData['industry'] as String?;
    _description = snapshotData['description'] as String?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('business_registration');

  static Stream<BusinessRegistrationRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => BusinessRegistrationRecord.fromSnapshot(s));

  static Future<BusinessRegistrationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => BusinessRegistrationRecord.fromSnapshot(s));

  static BusinessRegistrationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BusinessRegistrationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BusinessRegistrationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BusinessRegistrationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BusinessRegistrationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BusinessRegistrationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBusinessRegistrationRecordData({
  String? country,
  String? businessName,
  String? founderName,
  String? founderEmail,
  String? founderPhone,
  String? businessTyoe,
  int? employeeCount,
  String? industry,
  String? description,
  DocumentReference? userRef,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'country': country,
      'business_name': businessName,
      'founder_name': founderName,
      'founder_email': founderEmail,
      'founder_phone': founderPhone,
      'business_tyoe': businessTyoe,
      'employee_count': employeeCount,
      'industry': industry,
      'description': description,
      'user_ref': userRef,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class BusinessRegistrationRecordDocumentEquality
    implements Equality<BusinessRegistrationRecord> {
  const BusinessRegistrationRecordDocumentEquality();

  @override
  bool equals(BusinessRegistrationRecord? e1, BusinessRegistrationRecord? e2) {
    return e1?.country == e2?.country &&
        e1?.businessName == e2?.businessName &&
        e1?.founderName == e2?.founderName &&
        e1?.founderEmail == e2?.founderEmail &&
        e1?.founderPhone == e2?.founderPhone &&
        e1?.businessTyoe == e2?.businessTyoe &&
        e1?.employeeCount == e2?.employeeCount &&
        e1?.industry == e2?.industry &&
        e1?.description == e2?.description &&
        e1?.userRef == e2?.userRef &&
        e1?.status == e2?.status;
  }

  @override
  int hash(BusinessRegistrationRecord? e) => const ListEquality().hash([
        e?.country,
        e?.businessName,
        e?.founderName,
        e?.founderEmail,
        e?.founderPhone,
        e?.businessTyoe,
        e?.employeeCount,
        e?.industry,
        e?.description,
        e?.userRef,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is BusinessRegistrationRecord;
}
