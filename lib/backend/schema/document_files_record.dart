import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocumentFilesRecord extends FirestoreRecord {
  DocumentFilesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "download_link" field.
  String? _downloadLink;
  String get downloadLink => _downloadLink ?? '';
  bool hasDownloadLink() => _downloadLink != null;

  // "filetype" field.
  String? _filetype;
  String get filetype => _filetype ?? '';
  bool hasFiletype() => _filetype != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _downloadLink = snapshotData['download_link'] as String?;
    _filetype = snapshotData['filetype'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('document_files');

  static Stream<DocumentFilesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocumentFilesRecord.fromSnapshot(s));

  static Future<DocumentFilesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocumentFilesRecord.fromSnapshot(s));

  static DocumentFilesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocumentFilesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocumentFilesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DocumentFilesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocumentFilesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DocumentFilesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDocumentFilesRecordData({
  String? name,
  String? downloadLink,
  String? filetype,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'download_link': downloadLink,
      'filetype': filetype,
    }.withoutNulls,
  );

  return firestoreData;
}

class DocumentFilesRecordDocumentEquality
    implements Equality<DocumentFilesRecord> {
  const DocumentFilesRecordDocumentEquality();

  @override
  bool equals(DocumentFilesRecord? e1, DocumentFilesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.downloadLink == e2?.downloadLink &&
        e1?.filetype == e2?.filetype;
  }

  @override
  int hash(DocumentFilesRecord? e) =>
      const ListEquality().hash([e?.name, e?.downloadLink, e?.filetype]);

  @override
  bool isValidKey(Object? o) => o is DocumentFilesRecord;
}
