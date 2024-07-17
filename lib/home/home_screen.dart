
import 'package:assignment/common_functions.dart';
import 'package:assignment/generated/assets.dart';
import 'package:assignment/string_constants.dart';
import 'package:assignment/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 21.0),
            Stack(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                    child: Image.asset(Assets.imagesHeaderBackground),
                  ),
                ),
                 Positioned.fill(
                  left: 13,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      hintChoosePattern,
                      style: headLine7TextStyleFontSize28(kColorCodeFFFFFF),
                    ),
                  ),
                ),
                Positioned.fill(
                  bottom: 10.0,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: 104,
                      child: LinearPercentIndicator(
                        barRadius: const Radius.circular(24),
                        progressColor: const Color(0xFFFFFFFF),
                        backgroundColor: const Color(0xFFD9D9D9),
                        percent: 0.4,
                        lineHeight: 2.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
            getHeightSpace_20,
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(Assets.imagesTextDesign),
                 Positioned(
                  left: 15,
                  child: Text(
                    hintCollections,
                      style: headLine5TextStyleFontSize15(kColorCode000000)
                  ),
                )
              ],
            ),
            getHeightSpace_20,
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: SizedBox(
                height: 110,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: collectionData.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(11)),
                          child: Image.asset(
                            collectionData[index].image!,
                            height: 110,
                            width: 91,
                          ),
                        ),
                        Container(
                          width: 75,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFFFFFFFF),
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(2)),
                          ),
                          child: Text(
                            collectionData[index].title!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 9, color: Colors.white),
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 2);
                  },
                ),
              ),
            ),
            getHeightSpace_30,
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(Assets.imagesTextDesign),
                 Positioned(
                  left: 15,
                  child:  Text(
                    hintRecentProjects,
                      style: headLine5TextStyleFontSize15(kColorCode000000)

                  ),
                )
              ],
            ),
            getHeightSpace_20,
            SizedBox(
              height: 100,
              child: PageView.builder(itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(600),
                            bottomRight: Radius.circular(600),
                          ),
                          child: Image.asset(Assets.imagesRecentProject),
                        ),
                        const Spacer(),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Luxury Living Room \n in Manhattan",
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              "A vibrant, multi-colored carpet featuring\neclectic patterns, adding warmth and\ncharacter to a lively family gathering space.",
                              style: TextStyle(fontSize: 8),
                            )
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      child: PageViewDotIndicator(
                        currentItem: 1,
                        count: 5,
                        unselectedColor: Colors.black26,
                        selectedColor:
                            const Color(0xFF020202).withOpacity(0.17),
                        duration: const Duration(milliseconds: 200),
                        boxShape: BoxShape.circle,
                        size: const Size(4, 4),
                        onItemClicked: (index) {},
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ],
                );
              }),
            ),
            getHeightSpace_30,
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(Assets.imagesTextDesign),
                 Positioned(
                  left: 15,
                  child: Text(
                    hintShopsToExplore,
                      style: headLine5TextStyleFontSize15(kColorCode000000)
                  ),
                )
              ],
            ),
            getHeightSpace_30,
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: SizedBox(
                height: 110,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: shopExploreData.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(11)),
                          child: Image.asset(
                            shopExploreData[index].image!,
                            height: 80,
                            width: 110,
                          ),
                        ),
                        Container(
                          width: 75,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFFFFFFFF),
                            ),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(2)),
                          ),
                          child: Text(
                            shopExploreData[index].title!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 9, color: Colors.white),
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 2);
                  },
                ),
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(Assets.imagesTextDesign),
                 Positioned(
                  left: 15,
                  child:  Text(
                    hintGuideToPlacement,
                    style: headLine5TextStyleFontSize15(kColorCode000000)
                  ),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: SizedBox(
                height: 250,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: guidePlacementData.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 200,
                          width: 120,
                          color: guidePlacementData[index].backGroundColorCode,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Image.asset(
                                  guidePlacementData[index].image!,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(guidePlacementData[index].title!, style: headLine5TextStyleFontSize15(kColorCodeFFFFFF)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(guidePlacementData[index].tips!, style: headLine5TextStyleFontSize6(kColorCodeFFFFFF)),
                              ),
                            ],
                          ),
                        ),

                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 2);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
