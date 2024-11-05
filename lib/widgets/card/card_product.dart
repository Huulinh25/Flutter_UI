import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({
    super.key,
    this.imgLink,
    this.nameProduct = "Product name",
    this.price = "200.000",
  });
  final String? imgLink;
  final String nameProduct;
  final String? price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(10)), // Bo góc cho Container
      ),
      // width: 170,
      child: Column(
        mainAxisSize: MainAxisSize.min, // Chỉ sử dụng không gian cần thiết
        crossAxisAlignment: CrossAxisAlignment.start, // Căn trái
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12)
            ), // Bo góc trên cho ảnh
            child: Image.asset(
              imgLink ?? 'assets/images/products/SOIL_MIX.png',
              height: 150,
              width: double.infinity, // Chiếm hết chiều ngang
              fit: BoxFit.cover, // Đảm bảo ảnh phủ hết không gian
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding:
                const EdgeInsets.only(left: 16), // Khoảng cách từ lề trái
            child: Text(
              maxLines: 1, // Limits to 1 lines
              overflow: TextOverflow.ellipsis,
              nameProduct,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding:
                const EdgeInsets.only(left: 16, bottom: 10),
            child: Text(
              "$price VNĐ",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.black,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
