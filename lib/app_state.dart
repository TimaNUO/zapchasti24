import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _userRoleApp =
          await secureStorage.getString('ff_userRoleApp') ?? _userRoleApp;
    });
    await _safeInitAsync(() async {
      _userName = await secureStorage.getString('ff_userName') ?? _userName;
    });
    await _safeInitAsync(() async {
      _userIdApp = await secureStorage.getInt('ff_userIdApp') ?? _userIdApp;
    });
    await _safeInitAsync(() async {
      _userPhone = await secureStorage.getString('ff_userPhone') ?? _userPhone;
    });
    await _safeInitAsync(() async {
      _currencyID = await secureStorage.getInt('ff_currencyID') ?? _currencyID;
    });
    await _safeInitAsync(() async {
      _autopartsConditionUsed =
          await secureStorage.getBool('ff_autopartsConditionUsed') ??
              _autopartsConditionUsed;
    });
    await _safeInitAsync(() async {
      _autopartsConditionNew =
          await secureStorage.getBool('ff_autopartsConditionNew') ??
              _autopartsConditionNew;
    });
    await _safeInitAsync(() async {
      _yearFrom = await secureStorage.getInt('ff_yearFrom') ?? _yearFrom;
    });
    await _safeInitAsync(() async {
      _yearTo = await secureStorage.getInt('ff_yearTo') ?? _yearTo;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_carBuyerBody') != null) {
        try {
          _carBuyerBody = jsonDecode(
              await secureStorage.getString('ff_carBuyerBody') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _dateFrom = await secureStorage.getString('ff_dateFrom') ?? _dateFrom;
    });
    await _safeInitAsync(() async {
      _dateTo = await secureStorage.getString('ff_dateTo') ?? _dateTo;
    });
    await _safeInitAsync(() async {
      _dateFromDT = await secureStorage.read(key: 'ff_dateFromDT') != null
          ? DateTime.fromMillisecondsSinceEpoch(
              (await secureStorage.getInt('ff_dateFromDT'))!)
          : _dateFromDT;
    });
    await _safeInitAsync(() async {
      _dateToDT = await secureStorage.read(key: 'ff_dateToDT') != null
          ? DateTime.fromMillisecondsSinceEpoch(
              (await secureStorage.getInt('ff_dateToDT'))!)
          : _dateToDT;
    });
    await _safeInitAsync(() async {
      _autoCheck = await secureStorage.getBool('ff_autoCheck') ?? _autoCheck;
    });
    await _safeInitAsync(() async {
      _langCodeApp =
          await secureStorage.getString('ff_langCodeApp') ?? _langCodeApp;
    });
    await _safeInitAsync(() async {
      _buildNumber =
          await secureStorage.getInt('ff_buildNumber') ?? _buildNumber;
    });
    await _safeInitAsync(() async {
      _userMaskApp =
          await secureStorage.getString('ff_userMaskApp') ?? _userMaskApp;
    });
    await _safeInitAsync(() async {
      _userCountryApp =
          await secureStorage.getString('ff_userCountryApp') ?? _userCountryApp;
    });
    await _safeInitAsync(() async {
      _userCityApp =
          await secureStorage.getString('ff_userCityApp') ?? _userCityApp;
    });
    await _safeInitAsync(() async {
      _userFlagApp =
          await secureStorage.getString('ff_userFlagApp') ?? _userFlagApp;
    });
    await _safeInitAsync(() async {
      _userCountryIDApp = await secureStorage.getInt('ff_userCountryIDApp') ??
          _userCountryIDApp;
    });
    await _safeInitAsync(() async {
      _userCityIDApp =
          await secureStorage.getInt('ff_userCityIDApp') ?? _userCityIDApp;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  int _carIdApp = 0;
  int get carIdApp => _carIdApp;
  set carIdApp(int value) {
    _carIdApp = value;
  }

  String _userRoleApp = '';
  String get userRoleApp => _userRoleApp;
  set userRoleApp(String value) {
    _userRoleApp = value;
    secureStorage.setString('ff_userRoleApp', value);
  }

  void deleteUserRoleApp() {
    secureStorage.delete(key: 'ff_userRoleApp');
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
    secureStorage.setString('ff_userName', value);
  }

  void deleteUserName() {
    secureStorage.delete(key: 'ff_userName');
  }

  int _userIdApp = 0;
  int get userIdApp => _userIdApp;
  set userIdApp(int value) {
    _userIdApp = value;
    secureStorage.setInt('ff_userIdApp', value);
  }

  void deleteUserIdApp() {
    secureStorage.delete(key: 'ff_userIdApp');
  }

  String _userPhone = '';
  String get userPhone => _userPhone;
  set userPhone(String value) {
    _userPhone = value;
    secureStorage.setString('ff_userPhone', value);
  }

  void deleteUserPhone() {
    secureStorage.delete(key: 'ff_userPhone');
  }

  int _currencyID = 0;
  int get currencyID => _currencyID;
  set currencyID(int value) {
    _currencyID = value;
    secureStorage.setInt('ff_currencyID', value);
  }

  void deleteCurrencyID() {
    secureStorage.delete(key: 'ff_currencyID');
  }

  bool _autopartsConditionUsed = true;
  bool get autopartsConditionUsed => _autopartsConditionUsed;
  set autopartsConditionUsed(bool value) {
    _autopartsConditionUsed = value;
    secureStorage.setBool('ff_autopartsConditionUsed', value);
  }

  void deleteAutopartsConditionUsed() {
    secureStorage.delete(key: 'ff_autopartsConditionUsed');
  }

  bool _autopartsConditionNew = true;
  bool get autopartsConditionNew => _autopartsConditionNew;
  set autopartsConditionNew(bool value) {
    _autopartsConditionNew = value;
    secureStorage.setBool('ff_autopartsConditionNew', value);
  }

  void deleteAutopartsConditionNew() {
    secureStorage.delete(key: 'ff_autopartsConditionNew');
  }

  String _uploadedMediaEditCarApp = '';
  String get uploadedMediaEditCarApp => _uploadedMediaEditCarApp;
  set uploadedMediaEditCarApp(String value) {
    _uploadedMediaEditCarApp = value;
  }

  int _yearFrom = 0;
  int get yearFrom => _yearFrom;
  set yearFrom(int value) {
    _yearFrom = value;
    secureStorage.setInt('ff_yearFrom', value);
  }

  void deleteYearFrom() {
    secureStorage.delete(key: 'ff_yearFrom');
  }

  int _yearTo = 0;
  int get yearTo => _yearTo;
  set yearTo(int value) {
    _yearTo = value;
    secureStorage.setInt('ff_yearTo', value);
  }

  void deleteYearTo() {
    secureStorage.delete(key: 'ff_yearTo');
  }

  String _fcmToken = '';
  String get fcmToken => _fcmToken;
  set fcmToken(String value) {
    _fcmToken = value;
  }

  int _newFilterBrand = 0;
  int get newFilterBrand => _newFilterBrand;
  set newFilterBrand(int value) {
    _newFilterBrand = value;
  }

  List<int> _newFilterModels = [];
  List<int> get newFilterModels => _newFilterModels;
  set newFilterModels(List<int> value) {
    _newFilterModels = value;
  }

  void addToNewFilterModels(int value) {
    newFilterModels.add(value);
  }

  void removeFromNewFilterModels(int value) {
    newFilterModels.remove(value);
  }

  void removeAtIndexFromNewFilterModels(int index) {
    newFilterModels.removeAt(index);
  }

  void updateNewFilterModelsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    newFilterModels[index] = updateFn(_newFilterModels[index]);
  }

  void insertAtIndexInNewFilterModels(int index, int value) {
    newFilterModels.insert(index, value);
  }

  List<int> _newFilterCategories = [];
  List<int> get newFilterCategories => _newFilterCategories;
  set newFilterCategories(List<int> value) {
    _newFilterCategories = value;
  }

  void addToNewFilterCategories(int value) {
    newFilterCategories.add(value);
  }

  void removeFromNewFilterCategories(int value) {
    newFilterCategories.remove(value);
  }

  void removeAtIndexFromNewFilterCategories(int index) {
    newFilterCategories.removeAt(index);
  }

  void updateNewFilterCategoriesAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    newFilterCategories[index] = updateFn(_newFilterCategories[index]);
  }

  void insertAtIndexInNewFilterCategories(int index, int value) {
    newFilterCategories.insert(index, value);
  }

  String _newFilterBrandName = '';
  String get newFilterBrandName => _newFilterBrandName;
  set newFilterBrandName(String value) {
    _newFilterBrandName = value;
  }

  dynamic _carBuyerBody;
  dynamic get carBuyerBody => _carBuyerBody;
  set carBuyerBody(dynamic value) {
    _carBuyerBody = value;
    secureStorage.setString('ff_carBuyerBody', jsonEncode(value));
  }

  void deleteCarBuyerBody() {
    secureStorage.delete(key: 'ff_carBuyerBody');
  }

  String _newFilterModelsStr = '';
  String get newFilterModelsStr => _newFilterModelsStr;
  set newFilterModelsStr(String value) {
    _newFilterModelsStr = value;
  }

  String _newFilterCategoriesStr = '';
  String get newFilterCategoriesStr => _newFilterCategoriesStr;
  set newFilterCategoriesStr(String value) {
    _newFilterCategoriesStr = value;
  }

  String _dateFrom = '';
  String get dateFrom => _dateFrom;
  set dateFrom(String value) {
    _dateFrom = value;
    secureStorage.setString('ff_dateFrom', value);
  }

  void deleteDateFrom() {
    secureStorage.delete(key: 'ff_dateFrom');
  }

  String _dateTo = '';
  String get dateTo => _dateTo;
  set dateTo(String value) {
    _dateTo = value;
    secureStorage.setString('ff_dateTo', value);
  }

  void deleteDateTo() {
    secureStorage.delete(key: 'ff_dateTo');
  }

  DateTime? _dateFromDT;
  DateTime? get dateFromDT => _dateFromDT;
  set dateFromDT(DateTime? value) {
    _dateFromDT = value;
    value != null
        ? secureStorage.setInt('ff_dateFromDT', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_dateFromDT');
  }

  void deleteDateFromDT() {
    secureStorage.delete(key: 'ff_dateFromDT');
  }

  DateTime? _dateToDT;
  DateTime? get dateToDT => _dateToDT;
  set dateToDT(DateTime? value) {
    _dateToDT = value;
    value != null
        ? secureStorage.setInt('ff_dateToDT', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_dateToDT');
  }

  void deleteDateToDT() {
    secureStorage.delete(key: 'ff_dateToDT');
  }

  bool _autoCheck = false;
  bool get autoCheck => _autoCheck;
  set autoCheck(bool value) {
    _autoCheck = value;
    secureStorage.setBool('ff_autoCheck', value);
  }

  void deleteAutoCheck() {
    secureStorage.delete(key: 'ff_autoCheck');
  }

  List<int> _modelsIDListApp = [];
  List<int> get modelsIDListApp => _modelsIDListApp;
  set modelsIDListApp(List<int> value) {
    _modelsIDListApp = value;
  }

  void addToModelsIDListApp(int value) {
    modelsIDListApp.add(value);
  }

  void removeFromModelsIDListApp(int value) {
    modelsIDListApp.remove(value);
  }

  void removeAtIndexFromModelsIDListApp(int index) {
    modelsIDListApp.removeAt(index);
  }

  void updateModelsIDListAppAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    modelsIDListApp[index] = updateFn(_modelsIDListApp[index]);
  }

  void insertAtIndexInModelsIDListApp(int index, int value) {
    modelsIDListApp.insert(index, value);
  }

  bool _isAllModels = false;
  bool get isAllModels => _isAllModels;
  set isAllModels(bool value) {
    _isAllModels = value;
  }

  List<int> _categoriesIDListApp = [];
  List<int> get categoriesIDListApp => _categoriesIDListApp;
  set categoriesIDListApp(List<int> value) {
    _categoriesIDListApp = value;
  }

  void addToCategoriesIDListApp(int value) {
    categoriesIDListApp.add(value);
  }

  void removeFromCategoriesIDListApp(int value) {
    categoriesIDListApp.remove(value);
  }

  void removeAtIndexFromCategoriesIDListApp(int index) {
    categoriesIDListApp.removeAt(index);
  }

  void updateCategoriesIDListAppAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    categoriesIDListApp[index] = updateFn(_categoriesIDListApp[index]);
  }

  void insertAtIndexInCategoriesIDListApp(int index, int value) {
    categoriesIDListApp.insert(index, value);
  }

  bool _isAllCategories = false;
  bool get isAllCategories => _isAllCategories;
  set isAllCategories(bool value) {
    _isAllCategories = value;
  }

  String _notifType = '';
  String get notifType => _notifType;
  set notifType(String value) {
    _notifType = value;
  }

  String _notifCardId = '';
  String get notifCardId => _notifCardId;
  set notifCardId(String value) {
    _notifCardId = value;
  }

  String _notifButton = '';
  String get notifButton => _notifButton;
  set notifButton(String value) {
    _notifButton = value;
  }

  String _langCodeApp = '';
  String get langCodeApp => _langCodeApp;
  set langCodeApp(String value) {
    _langCodeApp = value;
    secureStorage.setString('ff_langCodeApp', value);
  }

  void deleteLangCodeApp() {
    secureStorage.delete(key: 'ff_langCodeApp');
  }

  String _newModelName = '';
  String get newModelName => _newModelName;
  set newModelName(String value) {
    _newModelName = value;
  }

  int _newModelId = 0;
  int get newModelId => _newModelId;
  set newModelId(int value) {
    _newModelId = value;
  }

  int _buildNumber = 0;
  int get buildNumber => _buildNumber;
  set buildNumber(int value) {
    _buildNumber = value;
    secureStorage.setInt('ff_buildNumber', value);
  }

  void deleteBuildNumber() {
    secureStorage.delete(key: 'ff_buildNumber');
  }

  String _userMaskApp = '+### (###) ###-##-##-##';
  String get userMaskApp => _userMaskApp;
  set userMaskApp(String value) {
    _userMaskApp = value;
    secureStorage.setString('ff_userMaskApp', value);
  }

  void deleteUserMaskApp() {
    secureStorage.delete(key: 'ff_userMaskApp');
  }

  String _userCountryApp = '';
  String get userCountryApp => _userCountryApp;
  set userCountryApp(String value) {
    _userCountryApp = value;
    secureStorage.setString('ff_userCountryApp', value);
  }

  void deleteUserCountryApp() {
    secureStorage.delete(key: 'ff_userCountryApp');
  }

  String _userCityApp = '';
  String get userCityApp => _userCityApp;
  set userCityApp(String value) {
    _userCityApp = value;
    secureStorage.setString('ff_userCityApp', value);
  }

  void deleteUserCityApp() {
    secureStorage.delete(key: 'ff_userCityApp');
  }

  String _userFlagApp = '';
  String get userFlagApp => _userFlagApp;
  set userFlagApp(String value) {
    _userFlagApp = value;
    secureStorage.setString('ff_userFlagApp', value);
  }

  void deleteUserFlagApp() {
    secureStorage.delete(key: 'ff_userFlagApp');
  }

  int _userCountryIDApp = 0;
  int get userCountryIDApp => _userCountryIDApp;
  set userCountryIDApp(int value) {
    _userCountryIDApp = value;
    secureStorage.setInt('ff_userCountryIDApp', value);
  }

  void deleteUserCountryIDApp() {
    secureStorage.delete(key: 'ff_userCountryIDApp');
  }

  int _userCityIDApp = 0;
  int get userCityIDApp => _userCityIDApp;
  set userCityIDApp(int value) {
    _userCityIDApp = value;
    secureStorage.setInt('ff_userCityIDApp', value);
  }

  void deleteUserCityIDApp() {
    secureStorage.delete(key: 'ff_userCityIDApp');
  }

  List<dynamic> _lastRealtimeMessageListJson = [];
  List<dynamic> get lastRealtimeMessageListJson => _lastRealtimeMessageListJson;
  set lastRealtimeMessageListJson(List<dynamic> value) {
    _lastRealtimeMessageListJson = value;
  }

  void addToLastRealtimeMessageListJson(dynamic value) {
    lastRealtimeMessageListJson.add(value);
  }

  void removeFromLastRealtimeMessageListJson(dynamic value) {
    lastRealtimeMessageListJson.remove(value);
  }

  void removeAtIndexFromLastRealtimeMessageListJson(int index) {
    lastRealtimeMessageListJson.removeAt(index);
  }

  void updateLastRealtimeMessageListJsonAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    lastRealtimeMessageListJson[index] =
        updateFn(_lastRealtimeMessageListJson[index]);
  }

  void insertAtIndexInLastRealtimeMessageListJson(int index, dynamic value) {
    lastRealtimeMessageListJson.insert(index, value);
  }

  List<dynamic> _chatMessagesLiveJson = [];
  List<dynamic> get chatMessagesLiveJson => _chatMessagesLiveJson;
  set chatMessagesLiveJson(List<dynamic> value) {
    _chatMessagesLiveJson = value;
  }

  void addToChatMessagesLiveJson(dynamic value) {
    chatMessagesLiveJson.add(value);
  }

  void removeFromChatMessagesLiveJson(dynamic value) {
    chatMessagesLiveJson.remove(value);
  }

  void removeAtIndexFromChatMessagesLiveJson(int index) {
    chatMessagesLiveJson.removeAt(index);
  }

  void updateChatMessagesLiveJsonAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    chatMessagesLiveJson[index] = updateFn(_chatMessagesLiveJson[index]);
  }

  void insertAtIndexInChatMessagesLiveJson(int index, dynamic value) {
    chatMessagesLiveJson.insert(index, value);
  }

  String _pendingNotificationType = '';
  String get pendingNotificationType => _pendingNotificationType;
  set pendingNotificationType(String value) {
    _pendingNotificationType = value;
  }

  int _pendingRequestId = 0;
  int get pendingRequestId => _pendingRequestId;
  set pendingRequestId(int value) {
    _pendingRequestId = value;
  }

  String _pendingRoute = '';
  String get pendingRoute => _pendingRoute;
  set pendingRoute(String value) {
    _pendingRoute = value;
  }

  bool _isAppOpenedFromPush = false;
  bool get isAppOpenedFromPush => _isAppOpenedFromPush;
  set isAppOpenedFromPush(bool value) {
    _isAppOpenedFromPush = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
