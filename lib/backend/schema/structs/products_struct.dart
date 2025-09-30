// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ProductsStruct extends FFFirebaseStruct {
  ProductsStruct({
    int? id,
    int? productId,
    String? name,
    String? sku,
    int? fp,
    int? sc,
    int? cot,
    int? ctn,
    String? img,
    String? category1,
    String? category2,
    String? category3,
    int? dam,
    int? exp,
    int? cof2,
    int? rec,
    String? startedAt,
    String? finishedAt,
    int? total,
    String? month1,
    int? valueMonth1,
    int? quantity,
    String? month2,
    int? valueMonth2,
    String? month3,
    int? valueMonth3,
    String? month4,
    int? valueMonth4,
    String? month5,
    int? valueMonth5,
    String? month6,
    int? valueMonth6,
    String? monthMore,
    int? valueMonthMore,
    bool? notFound,
    int? cof,
    int? isAvailability,
    int? isAlien,
    bool? isBackdoor,
    String? upc,
    int? outOfPlanogram,
    double? height,
    double? width,
    double? depth,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _productId = productId,
        _name = name,
        _sku = sku,
        _fp = fp,
        _sc = sc,
        _cot = cot,
        _ctn = ctn,
        _img = img,
        _category1 = category1,
        _category2 = category2,
        _category3 = category3,
        _dam = dam,
        _exp = exp,
        _cof2 = cof2,
        _rec = rec,
        _startedAt = startedAt,
        _finishedAt = finishedAt,
        _total = total,
        _month1 = month1,
        _valueMonth1 = valueMonth1,
        _quantity = quantity,
        _month2 = month2,
        _valueMonth2 = valueMonth2,
        _month3 = month3,
        _valueMonth3 = valueMonth3,
        _month4 = month4,
        _valueMonth4 = valueMonth4,
        _month5 = month5,
        _valueMonth5 = valueMonth5,
        _month6 = month6,
        _valueMonth6 = valueMonth6,
        _monthMore = monthMore,
        _valueMonthMore = valueMonthMore,
        _notFound = notFound,
        _cof = cof,
        _isAvailability = isAvailability,
        _isAlien = isAlien,
        _isBackdoor = isBackdoor,
        _upc = upc,
        _outOfPlanogram = outOfPlanogram,
        _height = height,
        _width = width,
        _depth = depth,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "product_id" field.
  int? _productId;
  int get productId => _productId ?? 0;
  set productId(int? val) => _productId = val;

  void incrementProductId(int amount) => productId = productId + amount;

  bool hasProductId() => _productId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  set sku(String? val) => _sku = val;

  bool hasSku() => _sku != null;

  // "fp" field.
  int? _fp;
  int get fp => _fp ?? 0;
  set fp(int? val) => _fp = val;

  void incrementFp(int amount) => fp = fp + amount;

  bool hasFp() => _fp != null;

  // "sc" field.
  int? _sc;
  int get sc => _sc ?? 0;
  set sc(int? val) => _sc = val;

  void incrementSc(int amount) => sc = sc + amount;

  bool hasSc() => _sc != null;

  // "cot" field.
  int? _cot;
  int get cot => _cot ?? 0;
  set cot(int? val) => _cot = val;

  void incrementCot(int amount) => cot = cot + amount;

  bool hasCot() => _cot != null;

  // "ctn" field.
  int? _ctn;
  int get ctn => _ctn ?? 0;
  set ctn(int? val) => _ctn = val;

  void incrementCtn(int amount) => ctn = ctn + amount;

  bool hasCtn() => _ctn != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '1';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  // "category_1" field.
  String? _category1;
  String get category1 => _category1 ?? '';
  set category1(String? val) => _category1 = val;

  bool hasCategory1() => _category1 != null;

  // "category_2" field.
  String? _category2;
  String get category2 => _category2 ?? '';
  set category2(String? val) => _category2 = val;

  bool hasCategory2() => _category2 != null;

  // "category_3" field.
  String? _category3;
  String get category3 => _category3 ?? '';
  set category3(String? val) => _category3 = val;

  bool hasCategory3() => _category3 != null;

  // "dam" field.
  int? _dam;
  int get dam => _dam ?? 0;
  set dam(int? val) => _dam = val;

  void incrementDam(int amount) => dam = dam + amount;

  bool hasDam() => _dam != null;

  // "exp" field.
  int? _exp;
  int get exp => _exp ?? 0;
  set exp(int? val) => _exp = val;

  void incrementExp(int amount) => exp = exp + amount;

  bool hasExp() => _exp != null;

  // "cof2" field.
  int? _cof2;
  int get cof2 => _cof2 ?? 0;
  set cof2(int? val) => _cof2 = val;

  void incrementCof2(int amount) => cof2 = cof2 + amount;

  bool hasCof2() => _cof2 != null;

  // "rec" field.
  int? _rec;
  int get rec => _rec ?? 0;
  set rec(int? val) => _rec = val;

  void incrementRec(int amount) => rec = rec + amount;

  bool hasRec() => _rec != null;

  // "started_at" field.
  String? _startedAt;
  String get startedAt => _startedAt ?? '2025-01-27 18:19:54';
  set startedAt(String? val) => _startedAt = val;

  bool hasStartedAt() => _startedAt != null;

  // "finished_at" field.
  String? _finishedAt;
  String get finishedAt => _finishedAt ?? '2025-01-27 18:19:54';
  set finishedAt(String? val) => _finishedAt = val;

  bool hasFinishedAt() => _finishedAt != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;

  void incrementTotal(int amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "month1" field.
  String? _month1;
  String get month1 => _month1 ?? '';
  set month1(String? val) => _month1 = val;

  bool hasMonth1() => _month1 != null;

  // "value_month1" field.
  int? _valueMonth1;
  int get valueMonth1 => _valueMonth1 ?? 0;
  set valueMonth1(int? val) => _valueMonth1 = val;

  void incrementValueMonth1(int amount) => valueMonth1 = valueMonth1 + amount;

  bool hasValueMonth1() => _valueMonth1 != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "month2" field.
  String? _month2;
  String get month2 => _month2 ?? '';
  set month2(String? val) => _month2 = val;

  bool hasMonth2() => _month2 != null;

  // "value_month2" field.
  int? _valueMonth2;
  int get valueMonth2 => _valueMonth2 ?? 0;
  set valueMonth2(int? val) => _valueMonth2 = val;

  void incrementValueMonth2(int amount) => valueMonth2 = valueMonth2 + amount;

  bool hasValueMonth2() => _valueMonth2 != null;

  // "month3" field.
  String? _month3;
  String get month3 => _month3 ?? '';
  set month3(String? val) => _month3 = val;

  bool hasMonth3() => _month3 != null;

  // "value_month3" field.
  int? _valueMonth3;
  int get valueMonth3 => _valueMonth3 ?? 0;
  set valueMonth3(int? val) => _valueMonth3 = val;

  void incrementValueMonth3(int amount) => valueMonth3 = valueMonth3 + amount;

  bool hasValueMonth3() => _valueMonth3 != null;

  // "month4" field.
  String? _month4;
  String get month4 => _month4 ?? '';
  set month4(String? val) => _month4 = val;

  bool hasMonth4() => _month4 != null;

  // "value_month4" field.
  int? _valueMonth4;
  int get valueMonth4 => _valueMonth4 ?? 0;
  set valueMonth4(int? val) => _valueMonth4 = val;

  void incrementValueMonth4(int amount) => valueMonth4 = valueMonth4 + amount;

  bool hasValueMonth4() => _valueMonth4 != null;

  // "month5" field.
  String? _month5;
  String get month5 => _month5 ?? '';
  set month5(String? val) => _month5 = val;

  bool hasMonth5() => _month5 != null;

  // "value_month5" field.
  int? _valueMonth5;
  int get valueMonth5 => _valueMonth5 ?? 0;
  set valueMonth5(int? val) => _valueMonth5 = val;

  void incrementValueMonth5(int amount) => valueMonth5 = valueMonth5 + amount;

  bool hasValueMonth5() => _valueMonth5 != null;

  // "month6" field.
  String? _month6;
  String get month6 => _month6 ?? '';
  set month6(String? val) => _month6 = val;

  bool hasMonth6() => _month6 != null;

  // "value_month6" field.
  int? _valueMonth6;
  int get valueMonth6 => _valueMonth6 ?? 0;
  set valueMonth6(int? val) => _valueMonth6 = val;

  void incrementValueMonth6(int amount) => valueMonth6 = valueMonth6 + amount;

  bool hasValueMonth6() => _valueMonth6 != null;

  // "month_more" field.
  String? _monthMore;
  String get monthMore => _monthMore ?? 'More than six months';
  set monthMore(String? val) => _monthMore = val;

  bool hasMonthMore() => _monthMore != null;

  // "value_month_more" field.
  int? _valueMonthMore;
  int get valueMonthMore => _valueMonthMore ?? 0;
  set valueMonthMore(int? val) => _valueMonthMore = val;

  void incrementValueMonthMore(int amount) =>
      valueMonthMore = valueMonthMore + amount;

  bool hasValueMonthMore() => _valueMonthMore != null;

  // "notFound" field.
  bool? _notFound;
  bool get notFound => _notFound ?? false;
  set notFound(bool? val) => _notFound = val;

  bool hasNotFound() => _notFound != null;

  // "cof" field.
  int? _cof;
  int get cof => _cof ?? 0;
  set cof(int? val) => _cof = val;

  void incrementCof(int amount) => cof = cof + amount;

  bool hasCof() => _cof != null;

  // "isAvailability" field.
  int? _isAvailability;
  int get isAvailability => _isAvailability ?? 0;
  set isAvailability(int? val) => _isAvailability = val;

  void incrementIsAvailability(int amount) =>
      isAvailability = isAvailability + amount;

  bool hasIsAvailability() => _isAvailability != null;

  // "isAlien" field.
  int? _isAlien;
  int get isAlien => _isAlien ?? 0;
  set isAlien(int? val) => _isAlien = val;

  void incrementIsAlien(int amount) => isAlien = isAlien + amount;

  bool hasIsAlien() => _isAlien != null;

  // "isBackdoor" field.
  bool? _isBackdoor;
  bool get isBackdoor => _isBackdoor ?? false;
  set isBackdoor(bool? val) => _isBackdoor = val;

  bool hasIsBackdoor() => _isBackdoor != null;

  // "upc" field.
  String? _upc;
  String get upc => _upc ?? '';
  set upc(String? val) => _upc = val;

  bool hasUpc() => _upc != null;

  // "outOfPlanogram" field.
  int? _outOfPlanogram;
  int get outOfPlanogram => _outOfPlanogram ?? 0;
  set outOfPlanogram(int? val) => _outOfPlanogram = val;

  void incrementOutOfPlanogram(int amount) =>
      outOfPlanogram = outOfPlanogram + amount;

  bool hasOutOfPlanogram() => _outOfPlanogram != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  set height(double? val) => _height = val;

  void incrementHeight(double amount) => height = height + amount;

  bool hasHeight() => _height != null;

  // "width" field.
  double? _width;
  double get width => _width ?? 0.0;
  set width(double? val) => _width = val;

  void incrementWidth(double amount) => width = width + amount;

  bool hasWidth() => _width != null;

  // "depth" field.
  double? _depth;
  double get depth => _depth ?? 0.0;
  set depth(double? val) => _depth = val;

  void incrementDepth(double amount) => depth = depth + amount;

  bool hasDepth() => _depth != null;

  static ProductsStruct fromMap(Map<String, dynamic> data) => ProductsStruct(
        id: castToType<int>(data['id']),
        productId: castToType<int>(data['product_id']),
        name: data['name'] as String?,
        sku: data['sku'] as String?,
        fp: castToType<int>(data['fp']),
        sc: castToType<int>(data['sc']),
        cot: castToType<int>(data['cot']),
        ctn: castToType<int>(data['ctn']),
        img: data['img'] as String?,
        category1: data['category_1'] as String?,
        category2: data['category_2'] as String?,
        category3: data['category_3'] as String?,
        dam: castToType<int>(data['dam']),
        exp: castToType<int>(data['exp']),
        cof2: castToType<int>(data['cof2']),
        rec: castToType<int>(data['rec']),
        startedAt: data['started_at'] as String?,
        finishedAt: data['finished_at'] as String?,
        total: castToType<int>(data['total']),
        month1: data['month1'] as String?,
        valueMonth1: castToType<int>(data['value_month1']),
        quantity: castToType<int>(data['quantity']),
        month2: data['month2'] as String?,
        valueMonth2: castToType<int>(data['value_month2']),
        month3: data['month3'] as String?,
        valueMonth3: castToType<int>(data['value_month3']),
        month4: data['month4'] as String?,
        valueMonth4: castToType<int>(data['value_month4']),
        month5: data['month5'] as String?,
        valueMonth5: castToType<int>(data['value_month5']),
        month6: data['month6'] as String?,
        valueMonth6: castToType<int>(data['value_month6']),
        monthMore: data['month_more'] as String?,
        valueMonthMore: castToType<int>(data['value_month_more']),
        notFound: data['notFound'] as bool?,
        cof: castToType<int>(data['cof']),
        isAvailability: castToType<int>(data['isAvailability']),
        isAlien: castToType<int>(data['isAlien']),
        isBackdoor: data['isBackdoor'] as bool?,
        upc: data['upc'] as String?,
        outOfPlanogram: castToType<int>(data['outOfPlanogram']),
        height: castToType<double>(data['height']),
        width: castToType<double>(data['width']),
        depth: castToType<double>(data['depth']),
      );

  static ProductsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'product_id': _productId,
        'name': _name,
        'sku': _sku,
        'fp': _fp,
        'sc': _sc,
        'cot': _cot,
        'ctn': _ctn,
        'img': _img,
        'category_1': _category1,
        'category_2': _category2,
        'category_3': _category3,
        'dam': _dam,
        'exp': _exp,
        'cof2': _cof2,
        'rec': _rec,
        'started_at': _startedAt,
        'finished_at': _finishedAt,
        'total': _total,
        'month1': _month1,
        'value_month1': _valueMonth1,
        'quantity': _quantity,
        'month2': _month2,
        'value_month2': _valueMonth2,
        'month3': _month3,
        'value_month3': _valueMonth3,
        'month4': _month4,
        'value_month4': _valueMonth4,
        'month5': _month5,
        'value_month5': _valueMonth5,
        'month6': _month6,
        'value_month6': _valueMonth6,
        'month_more': _monthMore,
        'value_month_more': _valueMonthMore,
        'notFound': _notFound,
        'cof': _cof,
        'isAvailability': _isAvailability,
        'isAlien': _isAlien,
        'isBackdoor': _isBackdoor,
        'upc': _upc,
        'outOfPlanogram': _outOfPlanogram,
        'height': _height,
        'width': _width,
        'depth': _depth,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'product_id': serializeParam(
          _productId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'sku': serializeParam(
          _sku,
          ParamType.String,
        ),
        'fp': serializeParam(
          _fp,
          ParamType.int,
        ),
        'sc': serializeParam(
          _sc,
          ParamType.int,
        ),
        'cot': serializeParam(
          _cot,
          ParamType.int,
        ),
        'ctn': serializeParam(
          _ctn,
          ParamType.int,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'category_1': serializeParam(
          _category1,
          ParamType.String,
        ),
        'category_2': serializeParam(
          _category2,
          ParamType.String,
        ),
        'category_3': serializeParam(
          _category3,
          ParamType.String,
        ),
        'dam': serializeParam(
          _dam,
          ParamType.int,
        ),
        'exp': serializeParam(
          _exp,
          ParamType.int,
        ),
        'cof2': serializeParam(
          _cof2,
          ParamType.int,
        ),
        'rec': serializeParam(
          _rec,
          ParamType.int,
        ),
        'started_at': serializeParam(
          _startedAt,
          ParamType.String,
        ),
        'finished_at': serializeParam(
          _finishedAt,
          ParamType.String,
        ),
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
        'month1': serializeParam(
          _month1,
          ParamType.String,
        ),
        'value_month1': serializeParam(
          _valueMonth1,
          ParamType.int,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'month2': serializeParam(
          _month2,
          ParamType.String,
        ),
        'value_month2': serializeParam(
          _valueMonth2,
          ParamType.int,
        ),
        'month3': serializeParam(
          _month3,
          ParamType.String,
        ),
        'value_month3': serializeParam(
          _valueMonth3,
          ParamType.int,
        ),
        'month4': serializeParam(
          _month4,
          ParamType.String,
        ),
        'value_month4': serializeParam(
          _valueMonth4,
          ParamType.int,
        ),
        'month5': serializeParam(
          _month5,
          ParamType.String,
        ),
        'value_month5': serializeParam(
          _valueMonth5,
          ParamType.int,
        ),
        'month6': serializeParam(
          _month6,
          ParamType.String,
        ),
        'value_month6': serializeParam(
          _valueMonth6,
          ParamType.int,
        ),
        'month_more': serializeParam(
          _monthMore,
          ParamType.String,
        ),
        'value_month_more': serializeParam(
          _valueMonthMore,
          ParamType.int,
        ),
        'notFound': serializeParam(
          _notFound,
          ParamType.bool,
        ),
        'cof': serializeParam(
          _cof,
          ParamType.int,
        ),
        'isAvailability': serializeParam(
          _isAvailability,
          ParamType.int,
        ),
        'isAlien': serializeParam(
          _isAlien,
          ParamType.int,
        ),
        'isBackdoor': serializeParam(
          _isBackdoor,
          ParamType.bool,
        ),
        'upc': serializeParam(
          _upc,
          ParamType.String,
        ),
        'outOfPlanogram': serializeParam(
          _outOfPlanogram,
          ParamType.int,
        ),
        'height': serializeParam(
          _height,
          ParamType.double,
        ),
        'width': serializeParam(
          _width,
          ParamType.double,
        ),
        'depth': serializeParam(
          _depth,
          ParamType.double,
        ),
      }.withoutNulls;

  static ProductsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        productId: deserializeParam(
          data['product_id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        sku: deserializeParam(
          data['sku'],
          ParamType.String,
          false,
        ),
        fp: deserializeParam(
          data['fp'],
          ParamType.int,
          false,
        ),
        sc: deserializeParam(
          data['sc'],
          ParamType.int,
          false,
        ),
        cot: deserializeParam(
          data['cot'],
          ParamType.int,
          false,
        ),
        ctn: deserializeParam(
          data['ctn'],
          ParamType.int,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        category1: deserializeParam(
          data['category_1'],
          ParamType.String,
          false,
        ),
        category2: deserializeParam(
          data['category_2'],
          ParamType.String,
          false,
        ),
        category3: deserializeParam(
          data['category_3'],
          ParamType.String,
          false,
        ),
        dam: deserializeParam(
          data['dam'],
          ParamType.int,
          false,
        ),
        exp: deserializeParam(
          data['exp'],
          ParamType.int,
          false,
        ),
        cof2: deserializeParam(
          data['cof2'],
          ParamType.int,
          false,
        ),
        rec: deserializeParam(
          data['rec'],
          ParamType.int,
          false,
        ),
        startedAt: deserializeParam(
          data['started_at'],
          ParamType.String,
          false,
        ),
        finishedAt: deserializeParam(
          data['finished_at'],
          ParamType.String,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
        month1: deserializeParam(
          data['month1'],
          ParamType.String,
          false,
        ),
        valueMonth1: deserializeParam(
          data['value_month1'],
          ParamType.int,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        month2: deserializeParam(
          data['month2'],
          ParamType.String,
          false,
        ),
        valueMonth2: deserializeParam(
          data['value_month2'],
          ParamType.int,
          false,
        ),
        month3: deserializeParam(
          data['month3'],
          ParamType.String,
          false,
        ),
        valueMonth3: deserializeParam(
          data['value_month3'],
          ParamType.int,
          false,
        ),
        month4: deserializeParam(
          data['month4'],
          ParamType.String,
          false,
        ),
        valueMonth4: deserializeParam(
          data['value_month4'],
          ParamType.int,
          false,
        ),
        month5: deserializeParam(
          data['month5'],
          ParamType.String,
          false,
        ),
        valueMonth5: deserializeParam(
          data['value_month5'],
          ParamType.int,
          false,
        ),
        month6: deserializeParam(
          data['month6'],
          ParamType.String,
          false,
        ),
        valueMonth6: deserializeParam(
          data['value_month6'],
          ParamType.int,
          false,
        ),
        monthMore: deserializeParam(
          data['month_more'],
          ParamType.String,
          false,
        ),
        valueMonthMore: deserializeParam(
          data['value_month_more'],
          ParamType.int,
          false,
        ),
        notFound: deserializeParam(
          data['notFound'],
          ParamType.bool,
          false,
        ),
        cof: deserializeParam(
          data['cof'],
          ParamType.int,
          false,
        ),
        isAvailability: deserializeParam(
          data['isAvailability'],
          ParamType.int,
          false,
        ),
        isAlien: deserializeParam(
          data['isAlien'],
          ParamType.int,
          false,
        ),
        isBackdoor: deserializeParam(
          data['isBackdoor'],
          ParamType.bool,
          false,
        ),
        upc: deserializeParam(
          data['upc'],
          ParamType.String,
          false,
        ),
        outOfPlanogram: deserializeParam(
          data['outOfPlanogram'],
          ParamType.int,
          false,
        ),
        height: deserializeParam(
          data['height'],
          ParamType.double,
          false,
        ),
        width: deserializeParam(
          data['width'],
          ParamType.double,
          false,
        ),
        depth: deserializeParam(
          data['depth'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ProductsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductsStruct &&
        id == other.id &&
        productId == other.productId &&
        name == other.name &&
        sku == other.sku &&
        fp == other.fp &&
        sc == other.sc &&
        cot == other.cot &&
        ctn == other.ctn &&
        img == other.img &&
        category1 == other.category1 &&
        category2 == other.category2 &&
        category3 == other.category3 &&
        dam == other.dam &&
        exp == other.exp &&
        cof2 == other.cof2 &&
        rec == other.rec &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt &&
        total == other.total &&
        month1 == other.month1 &&
        valueMonth1 == other.valueMonth1 &&
        quantity == other.quantity &&
        month2 == other.month2 &&
        valueMonth2 == other.valueMonth2 &&
        month3 == other.month3 &&
        valueMonth3 == other.valueMonth3 &&
        month4 == other.month4 &&
        valueMonth4 == other.valueMonth4 &&
        month5 == other.month5 &&
        valueMonth5 == other.valueMonth5 &&
        month6 == other.month6 &&
        valueMonth6 == other.valueMonth6 &&
        monthMore == other.monthMore &&
        valueMonthMore == other.valueMonthMore &&
        notFound == other.notFound &&
        cof == other.cof &&
        isAvailability == other.isAvailability &&
        isAlien == other.isAlien &&
        isBackdoor == other.isBackdoor &&
        upc == other.upc &&
        outOfPlanogram == other.outOfPlanogram &&
        height == other.height &&
        width == other.width &&
        depth == other.depth;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        productId,
        name,
        sku,
        fp,
        sc,
        cot,
        ctn,
        img,
        category1,
        category2,
        category3,
        dam,
        exp,
        cof2,
        rec,
        startedAt,
        finishedAt,
        total,
        month1,
        valueMonth1,
        quantity,
        month2,
        valueMonth2,
        month3,
        valueMonth3,
        month4,
        valueMonth4,
        month5,
        valueMonth5,
        month6,
        valueMonth6,
        monthMore,
        valueMonthMore,
        notFound,
        cof,
        isAvailability,
        isAlien,
        isBackdoor,
        upc,
        outOfPlanogram,
        height,
        width,
        depth
      ]);
}

ProductsStruct createProductsStruct({
  int? id,
  int? productId,
  String? name,
  String? sku,
  int? fp,
  int? sc,
  int? cot,
  int? ctn,
  String? img,
  String? category1,
  String? category2,
  String? category3,
  int? dam,
  int? exp,
  int? cof2,
  int? rec,
  String? startedAt,
  String? finishedAt,
  int? total,
  String? month1,
  int? valueMonth1,
  int? quantity,
  String? month2,
  int? valueMonth2,
  String? month3,
  int? valueMonth3,
  String? month4,
  int? valueMonth4,
  String? month5,
  int? valueMonth5,
  String? month6,
  int? valueMonth6,
  String? monthMore,
  int? valueMonthMore,
  bool? notFound,
  int? cof,
  int? isAvailability,
  int? isAlien,
  bool? isBackdoor,
  String? upc,
  int? outOfPlanogram,
  double? height,
  double? width,
  double? depth,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductsStruct(
      id: id,
      productId: productId,
      name: name,
      sku: sku,
      fp: fp,
      sc: sc,
      cot: cot,
      ctn: ctn,
      img: img,
      category1: category1,
      category2: category2,
      category3: category3,
      dam: dam,
      exp: exp,
      cof2: cof2,
      rec: rec,
      startedAt: startedAt,
      finishedAt: finishedAt,
      total: total,
      month1: month1,
      valueMonth1: valueMonth1,
      quantity: quantity,
      month2: month2,
      valueMonth2: valueMonth2,
      month3: month3,
      valueMonth3: valueMonth3,
      month4: month4,
      valueMonth4: valueMonth4,
      month5: month5,
      valueMonth5: valueMonth5,
      month6: month6,
      valueMonth6: valueMonth6,
      monthMore: monthMore,
      valueMonthMore: valueMonthMore,
      notFound: notFound,
      cof: cof,
      isAvailability: isAvailability,
      isAlien: isAlien,
      isBackdoor: isBackdoor,
      upc: upc,
      outOfPlanogram: outOfPlanogram,
      height: height,
      width: width,
      depth: depth,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductsStruct? updateProductsStruct(
  ProductsStruct? products, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    products
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductsStructData(
  Map<String, dynamic> firestoreData,
  ProductsStruct? products,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (products == null) {
    return;
  }
  if (products.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && products.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productsData = getProductsFirestoreData(products, forFieldValue);
  final nestedData = productsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = products.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductsFirestoreData(
  ProductsStruct? products, [
  bool forFieldValue = false,
]) {
  if (products == null) {
    return {};
  }
  final firestoreData = mapToFirestore(products.toMap());

  // Add any Firestore field values
  products.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductsListFirestoreData(
  List<ProductsStruct>? productss,
) =>
    productss?.map((e) => getProductsFirestoreData(e, true)).toList() ?? [];
