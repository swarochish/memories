import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'campaign_record.g.dart';

abstract class CampaignRecord
    implements Built<CampaignRecord, CampaignRecordBuilder> {
  static Serializer<CampaignRecord> get serializer =>
      _$campaignRecordSerializer;

  @BuiltValueField(wireName: 'campaign_name')
  String? get campaignName;

  @BuiltValueField(wireName: 'campaign_description')
  String? get campaignDescription;

  @BuiltValueField(wireName: 'campaign_image')
  String? get campaignImage;

  @BuiltValueField(wireName: 'campaign_video')
  String? get campaignVideo;

  @BuiltValueField(wireName: 'campaign_creator')
  DocumentReference? get campaignCreator;

  @BuiltValueField(wireName: 'campaign_responders')
  BuiltList<DocumentReference>? get campaignResponders;

  @BuiltValueField(wireName: 'campaign_end_date')
  DateTime? get campaignEndDate;

  @BuiltValueField(wireName: 'campaign_published')
  bool? get campaignPublished;

  @BuiltValueField(wireName: 'campaign_secondary_images')
  BuiltList<String>? get campaignSecondaryImages;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CampaignRecordBuilder builder) => builder
    ..campaignName = ''
    ..campaignDescription = ''
    ..campaignImage = ''
    ..campaignVideo = ''
    ..campaignResponders = ListBuilder()
    ..campaignPublished = false
    ..campaignSecondaryImages = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('campaign');

  static Stream<CampaignRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CampaignRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CampaignRecord._();
  factory CampaignRecord([void Function(CampaignRecordBuilder) updates]) =
      _$CampaignRecord;

  static CampaignRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCampaignRecordData({
  String? campaignName,
  String? campaignDescription,
  String? campaignImage,
  String? campaignVideo,
  DocumentReference? campaignCreator,
  DateTime? campaignEndDate,
  bool? campaignPublished,
}) {
  final firestoreData = serializers.toFirestore(
    CampaignRecord.serializer,
    CampaignRecord(
      (c) => c
        ..campaignName = campaignName
        ..campaignDescription = campaignDescription
        ..campaignImage = campaignImage
        ..campaignVideo = campaignVideo
        ..campaignCreator = campaignCreator
        ..campaignResponders = null
        ..campaignEndDate = campaignEndDate
        ..campaignPublished = campaignPublished
        ..campaignSecondaryImages = null,
    ),
  );

  return firestoreData;
}
