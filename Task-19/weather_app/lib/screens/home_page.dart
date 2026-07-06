import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:weather_app/models/weather_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.weatherModel});
  final WeatherModel weatherModel;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    var list = widget.weatherModel.forecastday[0].hours;
    return Scaffold(
      backgroundColor: HexColor('#96b0c1'),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          bottom: 20,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 20),
              width: double.infinity,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: HexColor('738491'), //56636a
              ),
              child: Text(
                "Today's Weather",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 15),
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              padding: EdgeInsets.all(15),
              width: double.infinity,
              height: isClicked ? 500 : 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: HexColor('56636a'),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.weatherModel.name,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "${widget.weatherModel.tempc}℃",
                    style: TextStyle(
                      fontSize: 65,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Image(
                        image: NetworkImage(
                          "https:${widget.weatherModel.mainIcon}",
                        ),
                        width: 40,
                        height: 40,
                      ),
                      Text(
                        widget.weatherModel.text,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isClicked = !isClicked;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(Icons.arrow_drop_down, color: Colors.white),
                            Text(
                              "See More",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${list[index].time.split(" ")[1].split(":")[0]}:00 ${index < 12 ? "AM" : "PM"}",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "${list[index].tempC}℃",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Image(
                            image: NetworkImage("https:${list[index].icon}"),
                            width: 60,
                            height: 60,
                          ),
                        ],
                      ),
                      separatorBuilder: (context, index) => Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 5,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                      itemCount: list.length,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 20),
              width: double.infinity,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: HexColor('738491'), //56636a
              ),
              child: Text(
                "Weather This Week",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 120,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: HexColor('56636a'), //56636a
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.weatherModel.forecastday[index].date,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Image(
                            image: NetworkImage(
                              "https:${widget.weatherModel.mainIcon}",
                            ),
                            width: 50,
                            height: 50,
                          ),
                          Text(
                            "${widget.weatherModel.forecastday[index].date}℃",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 12),
                  ],
                ),
                itemCount: widget.weatherModel.forecastday.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
