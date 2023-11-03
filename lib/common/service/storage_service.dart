import 'package:district_app/common/values/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {

  late final SharedPreferences _prefs;

  Future<StorageService> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }
  Future<String> getLayoutFromPreferences() async {
    return _prefs.getString(AppConstants.STORAGE_LAYOUT) ?? "list";

  }

  Future<bool> storeLayout( String key,String value) async {
    return await _prefs.setString(AppConstants.STORAGE_LAYOUT, value);
  }
}