// ignore_for_file: unused_field, prefer_final_fields

class UserInfo {
  
  String _name = '';
  int _coin = 0;
  int _numberOfHint = 0;
  int _level = 0;

  @override
  String toString() {
    // TODO: implement toString
    return " Name: $_name\n Coin: $_coin\n Hint: $_numberOfHint\n Level: $_level";
  }

}
