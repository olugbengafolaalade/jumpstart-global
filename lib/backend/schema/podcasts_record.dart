import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PodcastsRecord extends FirestoreRecord {
  PodcastsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "author" field.
  String? _author;
  String get author => _author ?? '';
  bool hasAuthor() => _author != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _category = snapshotData['category'] as String?;
    _author = snapshotData['author'] as String?;
    _link = snapshotData['link'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('podcasts');

  static Stream<PodcastsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PodcastsRecord.fromSnapshot(s));

  static Future<PodcastsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PodcastsRecord.fromSnapshot(s));

  static PodcastsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PodcastsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PodcastsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PodcastsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PodcastsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PodcastsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPodcastsRecordData({
  String? name,
  String? description,
  String? image,
  String? category,
  String? author,
  String? link,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'image': image,
      'category': category,
      'author': author,
      'link': link,
    }.withoutNulls,
  );

  return firestoreData;
}

class PodcastsRecordDocumentEquality implements Equality<PodcastsRecord> {
  const PodcastsRecordDocumentEquality();

  @override
  bool equals(PodcastsRecord? e1, PodcastsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.category == e2?.category &&
        e1?.author == e2?.author &&
        e1?.link == e2?.link;
  }

  @override
  int hash(PodcastsRecord? e) => const ListEquality().hash(
      [e?.name, e?.description, e?.image, e?.category, e?.author, e?.link]);

  @override
  bool isValidKey(Object? o) => o is PodcastsRecord;
}
