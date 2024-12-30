import 'package:flutter/material.dart';
import 'package:shopapp/components/shoppingcart_detail.dart';
import 'package:shopapp/components/shoppingcart_header.dart';
import 'package:shopapp/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 실행 화면에 디버그 표시 없앰
      theme: theme(),
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(),
          ShoppingCartDetail(), // 앱 완성 후 세로 높이가 맞지 않으면 Expanded 위젯 사용할 것
        ],
      ),
    );
  }

  AppBar _buildShoppingCartAppBar() {
    return AppBar(
      leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back)
      ),
      actions: [
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.shopping_cart),
        ),
        SizedBox(width: 16),
      ],
      elevation: 0.0,
    );
  }
}