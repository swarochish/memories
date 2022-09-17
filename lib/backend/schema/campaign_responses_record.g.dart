// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_responses_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CampaignResponsesRecord> _$campaignResponsesRecordSerializer =
    new _$CampaignResponsesRecordSerializer();

class _$CampaignResponsesRecordSerializer
    implements StructuredSerializer<CampaignResponsesRecord> {
  @override
  final Iterable<Type> types = const [
    CampaignResponsesRecord,
    _$CampaignResponsesRecord
  ];
  @override
  final String wireName = 'CampaignResponsesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CampaignResponsesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.campaignId;
    if (value != null) {
      result
        ..add('campaign_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.responderId;
    if (value != null) {
      result
        ..add('responder_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.responseText;
    if (value != null) {
      result
        ..add('response_text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.responseVoice;
    if (value != null) {
      result
        ..add('response_voice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.responseVide;
    if (value != null) {
      result
        ..add('response_vide')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.responseDate;
    if (value != null) {
      result
        ..add('response_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.responsePublished;
    if (value != null) {
      result
        ..add('response_published')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.responseFirstImage;
    if (value != null) {
      result
        ..add('response_first_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.responseSecondaryImages;
    if (value != null) {
      result
        ..add('response_secondary_images')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.memoryDate;
    if (value != null) {
      result
        ..add('memory_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  CampaignResponsesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CampaignResponsesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'campaign_id':
          result.campaignId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'responder_id':
          result.responderId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'response_text':
          result.responseText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'response_voice':
          result.responseVoice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'response_vide':
          result.responseVide = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'response_date':
          result.responseDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'response_published':
          result.responsePublished = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'response_first_image':
          result.responseFirstImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'response_secondary_images':
          result.responseSecondaryImages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'memory_date':
          result.memoryDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$CampaignResponsesRecord extends CampaignResponsesRecord {
  @override
  final DocumentReference<Object?>? campaignId;
  @override
  final DocumentReference<Object?>? responderId;
  @override
  final String? responseText;
  @override
  final String? responseVoice;
  @override
  final String? responseVide;
  @override
  final DateTime? responseDate;
  @override
  final bool? responsePublished;
  @override
  final String? responseFirstImage;
  @override
  final BuiltList<String>? responseSecondaryImages;
  @override
  final DateTime? memoryDate;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CampaignResponsesRecord(
          [void Function(CampaignResponsesRecordBuilder)? updates]) =>
      (new CampaignResponsesRecordBuilder()..update(updates))._build();

  _$CampaignResponsesRecord._(
      {this.campaignId,
      this.responderId,
      this.responseText,
      this.responseVoice,
      this.responseVide,
      this.responseDate,
      this.responsePublished,
      this.responseFirstImage,
      this.responseSecondaryImages,
      this.memoryDate,
      this.ffRef})
      : super._();

  @override
  CampaignResponsesRecord rebuild(
          void Function(CampaignResponsesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CampaignResponsesRecordBuilder toBuilder() =>
      new CampaignResponsesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CampaignResponsesRecord &&
        campaignId == other.campaignId &&
        responderId == other.responderId &&
        responseText == other.responseText &&
        responseVoice == other.responseVoice &&
        responseVide == other.responseVide &&
        responseDate == other.responseDate &&
        responsePublished == other.responsePublished &&
        responseFirstImage == other.responseFirstImage &&
        responseSecondaryImages == other.responseSecondaryImages &&
        memoryDate == other.memoryDate &&
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
                                    $jc(
                                        $jc($jc(0, campaignId.hashCode),
                                            responderId.hashCode),
                                        responseText.hashCode),
                                    responseVoice.hashCode),
                                responseVide.hashCode),
                            responseDate.hashCode),
                        responsePublished.hashCode),
                    responseFirstImage.hashCode),
                responseSecondaryImages.hashCode),
            memoryDate.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CampaignResponsesRecord')
          ..add('campaignId', campaignId)
          ..add('responderId', responderId)
          ..add('responseText', responseText)
          ..add('responseVoice', responseVoice)
          ..add('responseVide', responseVide)
          ..add('responseDate', responseDate)
          ..add('responsePublished', responsePublished)
          ..add('responseFirstImage', responseFirstImage)
          ..add('responseSecondaryImages', responseSecondaryImages)
          ..add('memoryDate', memoryDate)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CampaignResponsesRecordBuilder
    implements
        Builder<CampaignResponsesRecord, CampaignResponsesRecordBuilder> {
  _$CampaignResponsesRecord? _$v;

  DocumentReference<Object?>? _campaignId;
  DocumentReference<Object?>? get campaignId => _$this._campaignId;
  set campaignId(DocumentReference<Object?>? campaignId) =>
      _$this._campaignId = campaignId;

  DocumentReference<Object?>? _responderId;
  DocumentReference<Object?>? get responderId => _$this._responderId;
  set responderId(DocumentReference<Object?>? responderId) =>
      _$this._responderId = responderId;

  String? _responseText;
  String? get responseText => _$this._responseText;
  set responseText(String? responseText) => _$this._responseText = responseText;

  String? _responseVoice;
  String? get responseVoice => _$this._responseVoice;
  set responseVoice(String? responseVoice) =>
      _$this._responseVoice = responseVoice;

  String? _responseVide;
  String? get responseVide => _$this._responseVide;
  set responseVide(String? responseVide) => _$this._responseVide = responseVide;

  DateTime? _responseDate;
  DateTime? get responseDate => _$this._responseDate;
  set responseDate(DateTime? responseDate) =>
      _$this._responseDate = responseDate;

  bool? _responsePublished;
  bool? get responsePublished => _$this._responsePublished;
  set responsePublished(bool? responsePublished) =>
      _$this._responsePublished = responsePublished;

  String? _responseFirstImage;
  String? get responseFirstImage => _$this._responseFirstImage;
  set responseFirstImage(String? responseFirstImage) =>
      _$this._responseFirstImage = responseFirstImage;

  ListBuilder<String>? _responseSecondaryImages;
  ListBuilder<String> get responseSecondaryImages =>
      _$this._responseSecondaryImages ??= new ListBuilder<String>();
  set responseSecondaryImages(ListBuilder<String>? responseSecondaryImages) =>
      _$this._responseSecondaryImages = responseSecondaryImages;

  DateTime? _memoryDate;
  DateTime? get memoryDate => _$this._memoryDate;
  set memoryDate(DateTime? memoryDate) => _$this._memoryDate = memoryDate;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CampaignResponsesRecordBuilder() {
    CampaignResponsesRecord._initializeBuilder(this);
  }

  CampaignResponsesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _campaignId = $v.campaignId;
      _responderId = $v.responderId;
      _responseText = $v.responseText;
      _responseVoice = $v.responseVoice;
      _responseVide = $v.responseVide;
      _responseDate = $v.responseDate;
      _responsePublished = $v.responsePublished;
      _responseFirstImage = $v.responseFirstImage;
      _responseSecondaryImages = $v.responseSecondaryImages?.toBuilder();
      _memoryDate = $v.memoryDate;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CampaignResponsesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CampaignResponsesRecord;
  }

  @override
  void update(void Function(CampaignResponsesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CampaignResponsesRecord build() => _build();

  _$CampaignResponsesRecord _build() {
    _$CampaignResponsesRecord _$result;
    try {
      _$result = _$v ??
          new _$CampaignResponsesRecord._(
              campaignId: campaignId,
              responderId: responderId,
              responseText: responseText,
              responseVoice: responseVoice,
              responseVide: responseVide,
              responseDate: responseDate,
              responsePublished: responsePublished,
              responseFirstImage: responseFirstImage,
              responseSecondaryImages: _responseSecondaryImages?.build(),
              memoryDate: memoryDate,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'responseSecondaryImages';
        _responseSecondaryImages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CampaignResponsesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
