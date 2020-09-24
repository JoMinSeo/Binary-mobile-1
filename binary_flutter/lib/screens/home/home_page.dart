import 'package:binary_flutter/constants/constants.dart';
import 'package:binary_flutter/provider/dog_provider.dart';
import 'package:binary_flutter/services/sizes/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/sizes/sizeConfig.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Consumer<DogProvider>(
      builder: (ctx, item, _) => Column(
        children: [
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Positioned(
                child: Container(
                  color: kPink,
                  width: SizeConfig.screenWidth,
                  height: getProportionateScreenHeight(200),
                ),
              ),
              Positioned(
                child: CircleAvatar(
                  radius: 42.0,
                  backgroundImage: AssetImage(
                    'assets/images/colde.jpg',
                  ),
                ),
                left: getProportionateScreenWidth(50),
                top: getProportionateScreenHeight(46),
              ),
              Positioned(
                child: getDogData(
                    item.dogs[item.selected].dogName,
                    item.dogs[item.selected].breed,
                    item.dogs[item.selected].bloodType),
                right: getProportionateScreenWidth(80),
                top: getProportionateScreenHeight(50),
              ),
              Positioned(
                child: Container(
                  width: getProportionateScreenWidth(SizeConfig.screenWidth),
                  child: Image.asset('assets/images/mainimage.png'),
                ),
                top: getProportionateScreenHeight(120),
                left: -20,
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(200),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, int index) {
                  return Card(
                    margin: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20),
                        vertical: getProportionateScreenHeight(10)),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: getProportionateScreenHeight(10),
                                horizontal: getProportionateScreenWidth(10)),
                            child: Icon(
                              Icons.looks_one,
                              color: kPink,
                              size: 32,
                            ),
                          ),
                          Container(
                              height: getProportionateScreenHeight(60),
                              width: getProportionateScreenWidth(1),
                              color: kPink),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(
                                    left: getProportionateScreenHeight(10),
                                    top: getProportionateScreenWidth(8)),
                                child: Text(
                                  "2020.07.06 병원예약",
                                  style: kNanumBold.copyWith(fontSize: 20),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, bottom: 8),
                                child: Text(
                                  "병원 예약",
                                  style: kNanumBold.copyWith(fontSize: 16),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getDogData(String dogName, String dogBreed, String dogBloodType) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dogName,
            style: kNanumExtraBold.copyWith(fontSize: 24, color: kWhite),
          ),
          SizedBox(height: getProportionateScreenHeight(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dogBreed,
                    style: kNanumBold.copyWith(fontSize: 16, color: kWhite),
                  ),
                  SizedBox(height: getProportionateScreenHeight(5)),
                  Text(
                    "견종",
                    style: kNanumLight.copyWith(fontSize: 12, color: kWhite),
                  ),
                ],
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "DEA $dogBloodType",
                    style: kNanumBold.copyWith(fontSize: 16, color: kWhite),
                  ),
                  SizedBox(height: getProportionateScreenHeight(5)),
                  Text(
                    "혈액형",
                    style: kNanumLight.copyWith(fontSize: 12, color: kWhite),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
