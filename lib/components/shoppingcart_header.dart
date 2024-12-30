import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/constants.dart';

// 상태 변화가 있는 위젯이기 때문에 StatefulWidget 사용
// 앱이 실행된 후 상태를 통해 이미지 변경

class ShoppingCartHeader extends StatefulWidget {

  @override
  State<ShoppingCartHeader> createState() => _ShoppingCartHeaderState();
}

class _ShoppingCartHeaderState extends State<ShoppingCartHeader> {
  int selectedId = 0;

  List<String> selectedPic = [
    "assets/p1.jpeg",
    "assets/p2.jpeg",
    "assets/p3.jpeg",
    "assets/p4.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeaderPic(),
        _buildHeaderSelector(),
      ],
    );
  }

  Widget _buildHeaderPic() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(
        aspectRatio: 5 / 3,
        child: Image.asset(
          selectedPic[selectedId],
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildHeaderSelector() {
    return Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildHeaderSelectorButton(0, Icons.directions_bike),
            _buildHeaderSelectorButton(1, Icons.motorcycle),
            _buildHeaderSelectorButton(2, CupertinoIcons.car_detailed),
            _buildHeaderSelectorButton(3, CupertinoIcons.airplane),
          ],
        ),
      );
  }

  // 다른 화면에서도 재사용하려면 공통 컴포넌트 위젯으로 관리하는게 좋음
  // 하지만 이 경우 해당 화면에서만 재사용하기 때문에 함수로 만들었음
  Widget _buildHeaderSelectorButton(int id, IconData mIcon) {
    return Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: id == selectedId ? kAccentColor : kSecondaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              icon: Icon(mIcon, color: Colors.black),
              onPressed: (){
                // setState() : 상태(변수 값)을 변경하면 UI가 다시 그려짐
                setState(() {
                  selectedId = id;
                });
              },
            ),
          );
  }
}