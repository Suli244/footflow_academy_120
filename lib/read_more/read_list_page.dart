import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footflow_academy_120/core/fa_colors.dart';
import 'package:footflow_academy_120/read_more/read_content.dart';
import 'package:footflow_academy_120/read_more/read_detaile.dart';
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
        leading: const BackButton(
          color: Colors.black,
        ),
        title: Text(
          appBarTitle,
          style: TextStyle(
            fontSize: 24.h,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: GridView.builder(
          padding: EdgeInsets.symmetric(
            horizontal: 24.r,
            vertical: 16.r,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              mainAxisExtent: 180),
          itemBuilder: (context, index) => ReadWidget(
            model: listModel[index],
          ),
          itemCount: listModel.length,
        ),
      ),
    );
  }
}

class ReadWidget extends StatelessWidget {
  const ReadWidget({
    super.key,
    required this.model,
  });
  final ReadModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ReadDetaile(model: model),
          ),
        );
      },
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              imageUrl: model.image,
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
          ),
          Container(
            margin: EdgeInsets.all(8.r),
            padding: EdgeInsets.symmetric(horizontal: 4.r),
            width: MediaQuery.of(context).size.width,
            height: 32.h,
            decoration: BoxDecoration(
              color: FaColors.blue003870.withOpacity(0.6),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                model.name,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 12.h,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
