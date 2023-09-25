import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LinksRecord extends FirestoreRecord {
  LinksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _link = snapshotData['link'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('links');

  static Stream<LinksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LinksRecord.fromSnapshot(s));

  static Future<LinksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LinksRecord.fromSnapshot(s));

  static LinksRecord fromSnapshot(DocumentSnapshot snapshot) => LinksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LinksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LinksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LinksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LinksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLinksRecordData({
  String? link,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'link': link,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class LinksRecordDocumentEquality implements Equality<LinksRecord> {
  const LinksRecordDocumentEquality();

  @override
  bool equals(LinksRecord? e1, LinksRecord? e2) {
    return e1?.link == e2?.link && e1?.name == e2?.name;
  }

  @override
  int hash(LinksRecord? e) => const ListEquality().hash([e?.link, e?.name]);

  @override
  bool isValidKey(Object? o) => o is LinksRecord;
}
