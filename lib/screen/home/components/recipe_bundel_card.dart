import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class RecipeBundelCard extends StatelessWidget {
  final RecipeBundelCard recipeBundel;
  final Function press;

  const RecipeBundelCard({Key key, this.recipeBundel, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          color: recipeBundel.color,
          borderRadius: BorderRadius.circular(defaultSize * 1.8),
        ),
        child: Row(
          children: [
            Expanded(
                child: Padding(padding: EdgeInsets.all(defaultSize * 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Text(
                        recipeBundel.title,
                        style: TextStyle(
                            fontSize: defaltSize * 2.2,
                            color: Colors.white
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis, // 잘린문자열 생략
                      ),
                      SizedBox(
                        height: defaultSize * 0.5,
                      ),
                      Text(
                        recipeBundel.description,
                        style: TextStyle(
                            color: Colors.white54
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Spacer(),
                      buildInfoRow(
                        defaltSize,
                        iconSrc: "assets/icons/pot.svg",
                        text: "${recipeBundel.recipe} Recipes",
                      ),
                      SizedBox(
                        height: defaultSize * 0.5,
                      ),
                      Row buildInfoRow(
                        defaultSize,
                        iconSrc: "assets/icons/chef.svg",
                        text: "${recipeBundel.chefs} Chefs",
                      ),
                      Spacer(),
                    ],
                  ),
                )
            ),
            SizedBox(
                width: defaultSize * 0.5
            ),
            AspectRatio(aspectRatio: 0.71, // 가로세로 비율, 화면 종횡비 설정
              child: Image.asset(
                recipeBundel.imageSrc,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildInfoRow(double defaultSize, {String iconSrc, String text}) {
    return Row(
      children: [
        SvgPicture.asset(iconSrc),
        SizedBox(
          width: defaultSize,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.white
          ),
        )
      ],
    );
  }
}

