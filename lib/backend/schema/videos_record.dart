import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideosRecord extends FirestoreRecord {
  VideosRecord._(
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

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "video_link" field.
  String? _videoLink;
  String get videoLink => _videoLink ?? '';
  bool hasVideoLink() => _videoLink != null;

  // "author_name" field.
  String? _authorName;
  String get authorName => _authorName ?? '';
  bool hasAuthorName() => _authorName != null;

  // "videoLinkPath" field.
  String? _videoLinkPath;
  String get videoLinkPath => _videoLinkPath ?? '';
  bool hasVideoLinkPath() => _videoLinkPath != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _category = snapshotData['category'] as String?;
    _image = snapshotData['image'] as String?;
    _videoLink = snapshotData['video_link'] as String?;
    _authorName = snapshotData['author_name'] as String?;
    _videoLinkPath = snapshotData['videoLinkPath'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videos');

  static Stream<VideosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VideosRecord.fromSnapshot(s));

  static Future<VideosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VideosRecord.fromSnapshot(s));

  static VideosRecord fromSnapshot(DocumentSnapshot snapshot) => VideosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VideosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VideosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VideosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VideosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVideosRecordData({
  String? name,
  String? description,
  String? category,
  String? image,
  String? videoLink,
  String? authorName,
  String? videoLinkPath,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'category': category,
      'image': image,
      'video_link': videoLink,
      'author_name': authorName,
      'videoLinkPath': videoLinkPath,
    }.withoutNulls,
  );

  return firestoreData;
}

class VideosRecordDocumentEquality implements Equality<VideosRecord> {
  const VideosRecordDocumentEquality();

  @override
  bool equals(VideosRecord? e1, VideosRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.category == e2?.category &&
        e1?.image == e2?.image &&
        e1?.videoLink == e2?.videoLink &&
        e1?.authorName == e2?.authorName &&
        e1?.videoLinkPath == e2?.videoLinkPath;
  }

  @override
  int hash(VideosRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.category,
        e?.image,
        e?.videoLink,
        e?.authorName,
        e?.videoLinkPath
      ]);

  @override
  bool isValidKey(Object? o) => o is VideosRecord;
}
