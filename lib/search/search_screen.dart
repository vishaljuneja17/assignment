import 'package:assignment/common_functions.dart';
import 'package:assignment/search/search_view.dart';
import 'package:assignment/string_constants.dart';
import 'package:assignment/style/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _searchView(context)),
    );
  }

  Widget _searchView(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: CupertinoSearchTextField(
            controller: searchController,
            placeholder: hintSearch,
            decoration: BoxDecoration(
              border: Border.all(
                color: kColorCode000000,
                width: 1,
              ),
              color: kColorCodeFFFFFF,
              borderRadius: BorderRadius.circular(15),
            ),
            itemColor: kColorCode000000,
            prefixInsets: const EdgeInsets.symmetric(horizontal: 10),
            suffixInsets: const EdgeInsets.symmetric(horizontal: 10),
            prefixIcon:
                const Icon(CupertinoIcons.search, color: kColorCode000000),
            suffixIcon: const Icon(CupertinoIcons.clear_circled),
            onChanged: (value) {
              if (value.isNotEmpty) {
              } else {}
            },
            onSubmitted: (value) {},
            autocorrect: true,
            style: headLine3TextStyleFontSize14(kColorCode000000),
          ),
        ),
        getHeightSpace_15,
        Expanded(
            child: GridView.builder(
                itemCount: searchData.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 180,
                    mainAxisExtent: 180,
                    childAspectRatio: 1,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 5),
                itemBuilder: (BuildContext ctx, index) {
                  return SearchView(
                    assetsUrl: searchData[index].image!,
                    title: searchData[index].title!,
                    points: searchData[index].price!,
                    measurement: searchData[index].measurement!,
                  );
                }))
      ],
    );
  }
}
