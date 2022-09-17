import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'campaign_responses_record.g.dart';

abstract class CampaignResponsesRecord
    implements Built<CampaignResponsesRecord, CampaignResponsesRecordBuilder> {
  static Serializer<CampaignResponsesRecord> get serializer =>
      _$campaignResponsesRecordSerializer;

  @BuiltValueField(wireName: 'campaign_id')
  DocumentReference? get campaignId;

  @BuiltValueField(wireName: 'responder_id')
  DocumentReference? get responderId;

  @BuiltValueField(wireName: 'response_text')
  String? get responseText;

  @BuiltValueField(wireName: 'response_voice')
  String? get responseVoice;

  @BuiltValueField(wireName: 'response_vide')
  String? get responseVide;

  @BuiltValueField(wireName: 'response_date')
  DateTime? get responseDate;

  @BuiltValueField(wireName: 'response_published')
  bool? get responsePublished;

  @BuiltValueField(wireName: 'response_first_image')
  String? get responseFirstImage;

  @BuiltValueField(wireName: 'response_secondary_images')
  BuiltList<String>? get responseSecondaryImages;

  @BuiltValueField(wireName: 'memory_date')
  DateTime? get memoryDate;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CampaignResponsesRecordBuilder builder) =>
      builder
        ..responseText = ''
        ..responseVoice = ''
        ..responseVide = ''
        ..responsePublished = false
        ..responseFirstImage = ''
        ..responseSecondaryImages = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('campaign_responses');

  static Stream<CampaignResponsesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CampaignResponsesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CampaignResponsesRecord._();
  factory CampaignResponsesRecord(
          [void Function(CampaignResponsesRecordBuilder) updates]) =
      _$CampaignResponsesRecord;

  static CampaignResponsesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCampaignResponsesRecordData({
  DocumentReference? campaignId,
  DocumentReference? responderId,
  String? responseText,
  String? responseVoice,
  String? responseVide,
  DateTime? responseDate,
  bool? responsePublished,
  String? responseFirstImage,
  DateTime? memoryDate,
}) {
  final firestoreData = serializers.toFirestore(
    CampaignResponsesRecord.serializer,
    CampaignResponsesRecord(
      (c) => c
        ..campaignId = campaignId
        ..responderId = responderId
        ..responseText = responseText
        ..responseVoice = responseVoice
        ..responseVide = responseVide
        ..responseDate = responseDate
        ..responsePublished = responsePublished
        ..responseFirstImage = responseFirstImage
        ..responseSecondaryImages = null
        ..memoryDate = memoryDate,
    ),
  );

  return firestoreData;
}
