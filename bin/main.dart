import 'helper.dart';

// ignore: constant_identifier_names
const String numbers1KeyConst = 'numbers1';
const String numbers2KeyConst = 'numbers2';
void main(List<String> arguments) {
  List<int> numbers1 = List.generate(20, (index) => index);
  List<int> numbers2 = List.generate(20, (index) => index + 20);

  DataValveState dataValveState = DataValveState();
  dataValveState.setBatchSize(6);
  dataValveState.addData(DataKey(key: numbers1KeyConst, data: numbers1));
  dataValveState.addData(DataKey(key: numbers2KeyConst, data: numbers2));
  for (int i = 0; i < 6; i++) {
    var numbers1batch = dataValveState.getNextBatch(numbers1KeyConst);
    var numbers2batch = dataValveState.getNextBatch(numbers2KeyConst);
    print('done');
  }
}
