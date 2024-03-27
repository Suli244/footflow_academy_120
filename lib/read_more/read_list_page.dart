import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/read_more/read_content.dart';
import 'package:shimmer/shimmer.dart';

class ReadListPage extends StatelessWidget {
  const ReadListPage(
      {super.key, required this.appBarTitle, required this.listModel});
  final String appBarTitle;
  final List<ReadModel> listModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          appBarTitle,
          style: TextStyle(
            fontSize: 24.h,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            mainAxisExtent: 180),
        itemBuilder: (context, index) => const ReadWidget(),
        itemCount: listModel.length,
      ),
    );
  }
}

class ReadWidget extends StatelessWidget {
  const ReadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: CachedNetworkImage(
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg/250px-Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg',
        width: MediaQuery.of(context).size.width,
        height: 180.h,
        fit: BoxFit.cover,
        placeholder: (context, url) => ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 180.h,
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade500,
              highlightColor: Colors.grey.shade200,
              child: Container(
                color: Colors.white,
              ),
            ),
          ),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
