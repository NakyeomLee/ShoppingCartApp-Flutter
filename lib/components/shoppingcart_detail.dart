import 'package:flutter/material.dart';

// Stack : 여러 위젯을 겹치려는 경우에 사용
// Positioned : 여러 위젯이 겹쳐 있을 때 하위 위젯의 위치를 제어해야하는 경우에 사용 (Stack과 함께 사용)

class ShoppingCartDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailRatingAndReviewCount(),
            _buildDetailColorOptions(),
            _buildDetailButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRatingAndReviewCount() {
    return SizedBox();
  }

  Widget _buildDetailColorOptions() {
    return SizedBox();
  }

  Widget _buildDetailButton(BuildContext context) {
    return SizedBox();
  }
}