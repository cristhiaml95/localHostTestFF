import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _navOpen = prefs.getBool('ff_navOpen') ?? _navOpen;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _navOpen = false;
  bool get navOpen => _navOpen;
  set navOpen(bool value) {
    _navOpen = value;
    prefs.setBool('ff_navOpen', value);
  }

  List<String> _idsFromBarcodes = [];
  List<String> get idsFromBarcodes => _idsFromBarcodes;
  set idsFromBarcodes(List<String> value) {
    _idsFromBarcodes = value;
  }

  void addToIdsFromBarcodes(String value) {
    _idsFromBarcodes.add(value);
  }

  void removeFromIdsFromBarcodes(String value) {
    _idsFromBarcodes.remove(value);
  }

  void removeAtIndexFromIdsFromBarcodes(int index) {
    _idsFromBarcodes.removeAt(index);
  }

  void updateIdsFromBarcodesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _idsFromBarcodes[index] = updateFn(_idsFromBarcodes[index]);
  }

  void insertAtIndexInIdsFromBarcodes(int index, String value) {
    _idsFromBarcodes.insert(index, value);
  }

  List<String> _emptyList = [];
  List<String> get emptyList => _emptyList;
  set emptyList(List<String> value) {
    _emptyList = value;
  }

  void addToEmptyList(String value) {
    _emptyList.add(value);
  }

  void removeFromEmptyList(String value) {
    _emptyList.remove(value);
  }

  void removeAtIndexFromEmptyList(int index) {
    _emptyList.removeAt(index);
  }

  void updateEmptyListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _emptyList[index] = updateFn(_emptyList[index]);
  }

  void insertAtIndexInEmptyList(int index, String value) {
    _emptyList.insert(index, value);
  }

  List<String> _orderNos = [];
  List<String> get orderNos => _orderNos;
  set orderNos(List<String> value) {
    _orderNos = value;
  }

  void addToOrderNos(String value) {
    _orderNos.add(value);
  }

  void removeFromOrderNos(String value) {
    _orderNos.remove(value);
  }

  void removeAtIndexFromOrderNos(int index) {
    _orderNos.removeAt(index);
  }

  void updateOrderNosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _orderNos[index] = updateFn(_orderNos[index]);
  }

  void insertAtIndexInOrderNos(int index, String value) {
    _orderNos.insert(index, value);
  }

  List<String> _licences = [];
  List<String> get licences => _licences;
  set licences(List<String> value) {
    _licences = value;
  }

  void addToLicences(String value) {
    _licences.add(value);
  }

  void removeFromLicences(String value) {
    _licences.remove(value);
  }

  void removeAtIndexFromLicences(int index) {
    _licences.removeAt(index);
  }

  void updateLicencesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _licences[index] = updateFn(_licences[index]);
  }

  void insertAtIndexInLicences(int index, String value) {
    _licences.insert(index, value);
  }

  List<String> _uniRefNos = [];
  List<String> get uniRefNos => _uniRefNos;
  set uniRefNos(List<String> value) {
    _uniRefNos = value;
  }

  void addToUniRefNos(String value) {
    _uniRefNos.add(value);
  }

  void removeFromUniRefNos(String value) {
    _uniRefNos.remove(value);
  }

  void removeAtIndexFromUniRefNos(int index) {
    _uniRefNos.removeAt(index);
  }

  void updateUniRefNosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _uniRefNos[index] = updateFn(_uniRefNos[index]);
  }

  void insertAtIndexInUniRefNos(int index, String value) {
    _uniRefNos.insert(index, value);
  }

  List<String> _fmsRefs = [];
  List<String> get fmsRefs => _fmsRefs;
  set fmsRefs(List<String> value) {
    _fmsRefs = value;
  }

  void addToFmsRefs(String value) {
    _fmsRefs.add(value);
  }

  void removeFromFmsRefs(String value) {
    _fmsRefs.remove(value);
  }

  void removeAtIndexFromFmsRefs(int index) {
    _fmsRefs.removeAt(index);
  }

  void updateFmsRefsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _fmsRefs[index] = updateFn(_fmsRefs[index]);
  }

  void insertAtIndexInFmsRefs(int index, String value) {
    _fmsRefs.insert(index, value);
  }

  List<String> _loadRefDvhs = [];
  List<String> get loadRefDvhs => _loadRefDvhs;
  set loadRefDvhs(List<String> value) {
    _loadRefDvhs = value;
  }

  void addToLoadRefDvhs(String value) {
    _loadRefDvhs.add(value);
  }

  void removeFromLoadRefDvhs(String value) {
    _loadRefDvhs.remove(value);
  }

  void removeAtIndexFromLoadRefDvhs(int index) {
    _loadRefDvhs.removeAt(index);
  }

  void updateLoadRefDvhsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _loadRefDvhs[index] = updateFn(_loadRefDvhs[index]);
  }

  void insertAtIndexInLoadRefDvhs(int index, String value) {
    _loadRefDvhs.insert(index, value);
  }

  List<String> _intCustoms = [];
  List<String> get intCustoms => _intCustoms;
  set intCustoms(List<String> value) {
    _intCustoms = value;
  }

  void addToIntCustoms(String value) {
    _intCustoms.add(value);
  }

  void removeFromIntCustoms(String value) {
    _intCustoms.remove(value);
  }

  void removeAtIndexFromIntCustoms(int index) {
    _intCustoms.removeAt(index);
  }

  void updateIntCustomsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _intCustoms[index] = updateFn(_intCustoms[index]);
  }

  void insertAtIndexInIntCustoms(int index, String value) {
    _intCustoms.insert(index, value);
  }

  List<String> _containers = [];
  List<String> get containers => _containers;
  set containers(List<String> value) {
    _containers = value;
  }

  void addToContainers(String value) {
    _containers.add(value);
  }

  void removeFromContainers(String value) {
    _containers.remove(value);
  }

  void removeAtIndexFromContainers(int index) {
    _containers.removeAt(index);
  }

  void updateContainersAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _containers[index] = updateFn(_containers[index]);
  }

  void insertAtIndexInContainers(int index, String value) {
    _containers.insert(index, value);
  }

  List<String> _clientsList = [];
  List<String> get clientsList => _clientsList;
  set clientsList(List<String> value) {
    _clientsList = value;
  }

  void addToClientsList(String value) {
    _clientsList.add(value);
  }

  void removeFromClientsList(String value) {
    _clientsList.remove(value);
  }

  void removeAtIndexFromClientsList(int index) {
    _clientsList.removeAt(index);
  }

  void updateClientsListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _clientsList[index] = updateFn(_clientsList[index]);
  }

  void insertAtIndexInClientsList(int index, String value) {
    _clientsList.insert(index, value);
  }

  List<String> _warehouseList = [];
  List<String> get warehouseList => _warehouseList;
  set warehouseList(List<String> value) {
    _warehouseList = value;
  }

  void addToWarehouseList(String value) {
    _warehouseList.add(value);
  }

  void removeFromWarehouseList(String value) {
    _warehouseList.remove(value);
  }

  void removeAtIndexFromWarehouseList(int index) {
    _warehouseList.removeAt(index);
  }

  void updateWarehouseListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _warehouseList[index] = updateFn(_warehouseList[index]);
  }

  void insertAtIndexInWarehouseList(int index, String value) {
    _warehouseList.insert(index, value);
  }

  List<String> _customList = [];
  List<String> get customList => _customList;
  set customList(List<String> value) {
    _customList = value;
  }

  void addToCustomList(String value) {
    _customList.add(value);
  }

  void removeFromCustomList(String value) {
    _customList.remove(value);
  }

  void removeAtIndexFromCustomList(int index) {
    _customList.removeAt(index);
  }

  void updateCustomListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _customList[index] = updateFn(_customList[index]);
  }

  void insertAtIndexInCustomList(int index, String value) {
    _customList.insert(index, value);
  }

  List<String> _goodsList = [];
  List<String> get goodsList => _goodsList;
  set goodsList(List<String> value) {
    _goodsList = value;
  }

  void addToGoodsList(String value) {
    _goodsList.add(value);
  }

  void removeFromGoodsList(String value) {
    _goodsList.remove(value);
  }

  void removeAtIndexFromGoodsList(int index) {
    _goodsList.removeAt(index);
  }

  void updateGoodsListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _goodsList[index] = updateFn(_goodsList[index]);
  }

  void insertAtIndexInGoodsList(int index, String value) {
    _goodsList.insert(index, value);
  }

  List<String> _goodDescriptionList = [];
  List<String> get goodDescriptionList => _goodDescriptionList;
  set goodDescriptionList(List<String> value) {
    _goodDescriptionList = value;
  }

  void addToGoodDescriptionList(String value) {
    _goodDescriptionList.add(value);
  }

  void removeFromGoodDescriptionList(String value) {
    _goodDescriptionList.remove(value);
  }

  void removeAtIndexFromGoodDescriptionList(int index) {
    _goodDescriptionList.removeAt(index);
  }

  void updateGoodDescriptionListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _goodDescriptionList[index] = updateFn(_goodDescriptionList[index]);
  }

  void insertAtIndexInGoodDescriptionList(int index, String value) {
    _goodDescriptionList.insert(index, value);
  }

  List<String> _userList = [];
  List<String> get userList => _userList;
  set userList(List<String> value) {
    _userList = value;
  }

  void addToUserList(String value) {
    _userList.add(value);
  }

  void removeFromUserList(String value) {
    _userList.remove(value);
  }

  void removeAtIndexFromUserList(int index) {
    _userList.removeAt(index);
  }

  void updateUserListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _userList[index] = updateFn(_userList[index]);
  }

  void insertAtIndexInUserList(int index, String value) {
    _userList.insert(index, value);
  }

  List<String> _barcodesList = [];
  List<String> get barcodesList => _barcodesList;
  set barcodesList(List<String> value) {
    _barcodesList = value;
  }

  void addToBarcodesList(String value) {
    _barcodesList.add(value);
  }

  void removeFromBarcodesList(String value) {
    _barcodesList.remove(value);
  }

  void removeAtIndexFromBarcodesList(int index) {
    _barcodesList.removeAt(index);
  }

  void updateBarcodesListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _barcodesList[index] = updateFn(_barcodesList[index]);
  }

  void insertAtIndexInBarcodesList(int index, String value) {
    _barcodesList.insert(index, value);
  }

  List<String> _palletPositions = [];
  List<String> get palletPositions => _palletPositions;
  set palletPositions(List<String> value) {
    _palletPositions = value;
  }

  void addToPalletPositions(String value) {
    _palletPositions.add(value);
  }

  void removeFromPalletPositions(String value) {
    _palletPositions.remove(value);
  }

  void removeAtIndexFromPalletPositions(int index) {
    _palletPositions.removeAt(index);
  }

  void updatePalletPositionsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _palletPositions[index] = updateFn(_palletPositions[index]);
  }

  void insertAtIndexInPalletPositions(int index, String value) {
    _palletPositions.insert(index, value);
  }

  List<UsersTypeStruct> _users = [];
  List<UsersTypeStruct> get users => _users;
  set users(List<UsersTypeStruct> value) {
    _users = value;
  }

  void addToUsers(UsersTypeStruct value) {
    _users.add(value);
  }

  void removeFromUsers(UsersTypeStruct value) {
    _users.remove(value);
  }

  void removeAtIndexFromUsers(int index) {
    _users.removeAt(index);
  }

  void updateUsersAtIndex(
    int index,
    UsersTypeStruct Function(UsersTypeStruct) updateFn,
  ) {
    _users[index] = updateFn(_users[index]);
  }

  void insertAtIndexInUsers(int index, UsersTypeStruct value) {
    _users.insert(index, value);
  }

  final _tablesManager =
      FutureRequestManager<List<VistaOrderLevelExtendedRow>>();
  Future<List<VistaOrderLevelExtendedRow>> tables({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<VistaOrderLevelExtendedRow>> Function() requestFn,
  }) =>
      _tablesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTablesCache() => _tablesManager.clear();
  void clearTablesCacheKey(String? uniqueKey) =>
      _tablesManager.clearRequest(uniqueKey);

  final _clientsManager = FutureRequestManager<List<ClientsRow>>();
  Future<List<ClientsRow>> clients({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ClientsRow>> Function() requestFn,
  }) =>
      _clientsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearClientsCache() => _clientsManager.clear();
  void clearClientsCacheKey(String? uniqueKey) =>
      _clientsManager.clearRequest(uniqueKey);

  final _warehousesManager = FutureRequestManager<List<WarehousesRow>>();
  Future<List<WarehousesRow>> warehouses({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<WarehousesRow>> Function() requestFn,
  }) =>
      _warehousesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearWarehousesCache() => _warehousesManager.clear();
  void clearWarehousesCacheKey(String? uniqueKey) =>
      _warehousesManager.clearRequest(uniqueKey);

  final _customsManager = FutureRequestManager<List<CustomsRow>>();
  Future<List<CustomsRow>> customs({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<CustomsRow>> Function() requestFn,
  }) =>
      _customsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCustomsCache() => _customsManager.clear();
  void clearCustomsCacheKey(String? uniqueKey) =>
      _customsManager.clearRequest(uniqueKey);

  final _goodsManager = FutureRequestManager<List<GoodsRow>>();
  Future<List<GoodsRow>> goods({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<GoodsRow>> Function() requestFn,
  }) =>
      _goodsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearGoodsCache() => _goodsManager.clear();
  void clearGoodsCacheKey(String? uniqueKey) =>
      _goodsManager.clearRequest(uniqueKey);

  final _goodDescriptionManager =
      FutureRequestManager<List<GoodDescriptionsRow>>();
  Future<List<GoodDescriptionsRow>> goodDescription({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<GoodDescriptionsRow>> Function() requestFn,
  }) =>
      _goodDescriptionManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearGoodDescriptionCache() => _goodDescriptionManager.clear();
  void clearGoodDescriptionCacheKey(String? uniqueKey) =>
      _goodDescriptionManager.clearRequest(uniqueKey);

  final _packagingsManager = FutureRequestManager<List<PackagingRow>>();
  Future<List<PackagingRow>> packagings({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<PackagingRow>> Function() requestFn,
  }) =>
      _packagingsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearPackagingsCache() => _packagingsManager.clear();
  void clearPackagingsCacheKey(String? uniqueKey) =>
      _packagingsManager.clearRequest(uniqueKey);

  final _manipulationsManager = FutureRequestManager<List<ManipulationsRow>>();
  Future<List<ManipulationsRow>> manipulations({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ManipulationsRow>> Function() requestFn,
  }) =>
      _manipulationsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearManipulationsCache() => _manipulationsManager.clear();
  void clearManipulationsCacheKey(String? uniqueKey) =>
      _manipulationsManager.clearRequest(uniqueKey);

  final _loadingGatesManager = FutureRequestManager<List<LoadingGatesRow>>();
  Future<List<LoadingGatesRow>> loadingGates({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<LoadingGatesRow>> Function() requestFn,
  }) =>
      _loadingGatesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearLoadingGatesCache() => _loadingGatesManager.clear();
  void clearLoadingGatesCacheKey(String? uniqueKey) =>
      _loadingGatesManager.clearRequest(uniqueKey);

  final _detailsViewManager = FutureRequestManager<List<DetailsViewRow>>();
  Future<List<DetailsViewRow>> detailsView({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<DetailsViewRow>> Function() requestFn,
  }) =>
      _detailsViewManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearDetailsViewCache() => _detailsViewManager.clear();
  void clearDetailsViewCacheKey(String? uniqueKey) =>
      _detailsViewManager.clearRequest(uniqueKey);

  final _warehousePositionsManager =
      FutureRequestManager<List<WarehousePositionsRow>>();
  Future<List<WarehousePositionsRow>> warehousePositions({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<WarehousePositionsRow>> Function() requestFn,
  }) =>
      _warehousePositionsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearWarehousePositionsCache() => _warehousePositionsManager.clear();
  void clearWarehousePositionsCacheKey(String? uniqueKey) =>
      _warehousePositionsManager.clearRequest(uniqueKey);

  final _users2Manager = FutureRequestManager<List<UsersRow>>();
  Future<List<UsersRow>> users2({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UsersRow>> Function() requestFn,
  }) =>
      _users2Manager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUsers2Cache() => _users2Manager.clear();
  void clearUsers2CacheKey(String? uniqueKey) =>
      _users2Manager.clearRequest(uniqueKey);
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
