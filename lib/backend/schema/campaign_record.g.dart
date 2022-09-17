// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CampaignRecord> _$campaignRecordSerializer =
    new _$CampaignRecordSerializer();

class _$CampaignRecordSerializer
    implements StructuredSerializer<CampaignRecord> {
  @override
  final Iterable<Type> types = const [CampaignRecord, _$CampaignRecord];
  @override
  final String wireName = 'CampaignRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CampaignRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.campaignName;
    if (value != null) {
      result
        ..add('campaign_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.campaignDescription;
    if (value != null) {
      result
        ..add('campaign_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.campaignImage;
    if (value != null) {
      result
        ..add('campaign_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.campaignVideo;
    if (value != null) {
      result
        ..add('campaign_video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.campaignCreator;
    if (value != null) {
      result
        ..add('campaign_creator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.campaignResponders;
    if (value != null) {
      result
        ..add('campaign_responders')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.campaignEndDate;
    if (value != null) {
      result
        ..add('campaign_end_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.campaignPublished;
    if (value != null) {
      result
        ..add('campaign_published')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.campaignSecondaryImages;
    if (value != null) {
      result
        ..add('campaign_secondary_images')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CampaignRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CampaignRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'campaign_name':
          result.campaignName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'campaign_description':
          result.campaignDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'campaign_image':
          result.campaignImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'campaign_video':
          result.campaignVideo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'campaign_creator':
          result.campaignCreator = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'campaign_responders':
          result.campaignResponders.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'campaign_end_date':
          result.campaignEndDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'campaign_published':
          result.campaignPublished = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'campaign_secondary_images':
          result.campaignSecondaryImages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CampaignRecord extends CampaignRecord {
  @override
  final String? campaignName;
  @override
  final String? campaignDescription;
  @override
  final String? campaignImage;
  @override
  final String? campaignVideo;
  @override
  final DocumentReference<Object?>? campaignCreator;
  @override
  final BuiltList<DocumentReference<Object?>>? campaignResponders;
  @override
  final DateTime? campaignEndDate;
  @override
  final bool? campaignPublished;
  @override
  final BuiltList<String>? campaignSecondaryImages;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CampaignRecord([void Function(CampaignRecordBuilder)? updates]) =>
      (new CampaignRecordBuilder()..update(updates))._build();

  _$CampaignRecord._(
      {this.campaignName,
      this.campaignDescription,
      this.campaignImage,
      this.campaignVideo,
      this.campaignCreator,
      this.campaignResponders,
      this.campaignEndDate,
      this.campaignPublished,
      this.campaignSecondaryImages,
      this.ffRef})
      : super._();

  @override
  CampaignRecord rebuild(void Function(CampaignRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CampaignRecordBuilder toBuilder() =>
      new CampaignRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CampaignRecord &&
        campaignName == other.campaignName &&
        campaignDescription == other.campaignDescription &&
        campaignImage == other.campaignImage &&
        campaignVideo == other.campaignVideo &&
        campaignCreator == other.campaignCreator &&
        campaignResponders == other.campaignResponders &&
        campaignEndDate == other.campaignEndDate &&
        campaignPublished == other.campaignPublished &&
        campaignSecondaryImages == other.campaignSecondaryImages &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, campaignName.hashCode),
                                        campaignDescription.hashCode),
                                    campaignImage.hashCode),
                                campaignVideo.hashCode),
                            campaignCreator.hashCode),
                        campaignResponders.hashCode),
                    campaignEndDate.hashCode),
                campaignPublished.hashCode),
            campaignSecondaryImages.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CampaignRecord')
          ..add('campaignName', campaignName)
          ..add('campaignDescription', campaignDescription)
          ..add('campaignImage', campaignImage)
          ..add('campaignVideo', campaignVideo)
          ..add('campaignCreator', campaignCreator)
          ..add('campaignResponders', campaignResponders)
          ..add('campaignEndDate', campaignEndDate)
          ..add('campaignPublished', campaignPublished)
          ..add('campaignSecondaryImages', campaignSecondaryImages)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CampaignRecordBuilder
    implements Builder<CampaignRecord, CampaignRecordBuilder> {
  _$CampaignRecord? _$v;

  String? _campaignName;
  String? get campaignName => _$this._campaignName;
  set campaignName(String? campaignName) => _$this._campaignName = campaignName;

  String? _campaignDescription;
  String? get campaignDescription => _$this._campaignDescription;
  set campaignDescription(String? campaignDescription) =>
      _$this._campaignDescription = campaignDescription;

  String? _campaignImage;
  String? get campaignImage => _$this._campaignImage;
  set campaignImage(String? campaignImage) =>
      _$this._campaignImage = campaignImage;

  String? _campaignVideo;
  String? get campaignVideo => _$this._campaignVideo;
  set campaignVideo(String? campaignVideo) =>
      _$this._campaignVideo = campaignVideo;

  DocumentReference<Object?>? _campaignCreator;
  DocumentReference<Object?>? get campaignCreator => _$this._campaignCreator;
  set campaignCreator(DocumentReference<Object?>? campaignCreator) =>
      _$this._campaignCreator = campaignCreator;

  ListBuilder<DocumentReference<Object?>>? _campaignResponders;
  ListBuilder<DocumentReference<Object?>> get campaignResponders =>
      _$this._campaignResponders ??=
          new ListBuilder<DocumentReference<Object?>>();
  set campaignResponders(
          ListBuilder<DocumentReference<Object?>>? campaignResponders) =>
      _$this._campaignResponders = campaignResponders;

  DateTime? _campaignEndDate;
  DateTime? get campaignEndDate => _$this._campaignEndDate;
  set campaignEndDate(DateTime? campaignEndDate) =>
      _$this._campaignEndDate = campaignEndDate;

  bool? _campaignPublished;
  bool? get campaignPublished => _$this._campaignPublished;
  set campaignPublished(bool? campaignPublished) =>
      _$this._campaignPublished = campaignPublished;

  ListBuilder<String>? _campaignSecondaryImages;
  ListBuilder<String> get campaignSecondaryImages =>
      _$this._campaignSecondaryImages ??= new ListBuilder<String>();
  set campaignSecondaryImages(ListBuilder<String>? campaignSecondaryImages) =>
      _$this._campaignSecondaryImages = campaignSecondaryImages;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CampaignRecordBuilder() {
    CampaignRecord._initializeBuilder(this);
  }

  CampaignRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _campaignName = $v.campaignName;
      _campaignDescription = $v.campaignDescription;
      _campaignImage = $v.campaignImage;
      _campaignVideo = $v.campaignVideo;
      _campaignCreator = $v.campaignCreator;
      _campaignResponders = $v.campaignResponders?.toBuilder();
      _campaignEndDate = $v.campaignEndDate;
      _campaignPublished = $v.campaignPublished;
      _campaignSecondaryImages = $v.campaignSecondaryImages?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CampaignRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CampaignRecord;
  }

  @override
  void update(void Function(CampaignRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CampaignRecord build() => _build();

  _$CampaignRecord _build() {
    _$CampaignRecord _$result;
    try {
      _$result = _$v ??
          new _$CampaignRecord._(
              campaignName: campaignName,
              campaignDescription: campaignDescription,
              campaignImage: campaignImage,
              campaignVideo: campaignVideo,
              campaignCreator: campaignCreator,
              campaignResponders: _campaignResponders?.build(),
              campaignEndDate: campaignEndDate,
              campaignPublished: campaignPublished,
              campaignSecondaryImages: _campaignSecondaryImages?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'campaignResponders';
        _campaignResponders?.build();

        _$failedField = 'campaignSecondaryImages';
        _campaignSecondaryImages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CampaignRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
