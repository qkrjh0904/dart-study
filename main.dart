import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  // 유저에게 어떤 타입을 낼 것인지 물어보는 질의 창
  print('가위 바위 보 중 하나를 정해서 입력해주세요.');
  final String userInput = stdin.readLineSync(encoding: utf8) ?? 'Error';

  print('userInput: $userInput');

  // 2. 컴퓨터가 낼 타입이 어떤것인지 결정하는 함수
  List<String> typeList = ['가위', '바위', '보'];
  String cpuInput = typeList[Random().nextInt(3)];

  print('cpuInput: $cpuInput');

  // 3. 유저의 타입과 컴퓨터 타입에 대한 결과를 계산할 함수
  getResult(userInput, cpuInput);
}

void getResult(String userInput, String cpuInput) {

  String lose = '졌습니다.';
  String win = '이겼습니다.';

  switch(userInput){
    case '가위':
      if(cpuInput == '가위'){
        print('비겼습니다.');
      }else if(cpuInput == '바위'){
        print(lose);
      }else{
        print(win);
      }
      break;
    case '바위':
      if(cpuInput == '가위'){
        print(win);
      }else if(cpuInput == '바위'){
        print('비겼습니다.');
      }else{
        print(lose);
      }
      break;
    case '보':
      if(cpuInput == '가위'){
        print(lose);
      }else if(cpuInput == '바위'){
        print(win);
      }else{
        print('비겼습니다.');
      }
      break;
    default:
      print('잘못된 입력입니다.');
  }
}
