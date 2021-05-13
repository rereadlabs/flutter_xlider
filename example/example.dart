import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _lowerValue = 50;
  double _upperValue = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 50, left: 50, right: 50),
            alignment: Alignment.centerLeft,
            child: FlutterSlider(
              values: [60, 160],
//              ignoreSteps: [
//                FlutterSliderIgnoreSteps(from: 120, to: 150),
//                FlutterSliderIgnoreSteps(from: 160, to: 190),
//              ],
              max: 200,
              min: 50,
              maximumDistance: 300,
              rangeSlider: true,
              rtl: true,
              handlerAnimation: const FlutterSliderHandlerAnimation(
                  curve: Curves.elasticOut,
                  reverseCurve: null,
                  duration: Duration(milliseconds: 700),
                  scale: 1.4),
              onDragging: (handlerIndex, lowerValue, upperValue) {
                _lowerValue = lowerValue as double;
                _upperValue = upperValue as double;
                setState(() {});
              },
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
              alignment: Alignment.centerLeft,
              child: FlutterSlider(
                values: [1000, 15000],
                rangeSlider: true,
//rtl: true,
                ignoreSteps: [
                  const FlutterSliderIgnoreSteps(from: 8000, to: 12000),
                  const FlutterSliderIgnoreSteps(from: 18000, to: 22000),
                ],
                max: 25000,
                min: 0,
                step: const FlutterSliderStep(step: 100),

                jump: true,

                trackBar: const FlutterSliderTrackBar(
                  activeTrackBarHeight: 5,
                ),
                tooltip: const FlutterSliderTooltip(
                  textStyle: TextStyle(fontSize: 17, color: Colors.lightBlue),
                ),
                handler: const FlutterSliderHandler(
                  decoration: BoxDecoration(),
                  child: Material(
                    type: MaterialType.canvas,
                    color: Colors.orange,
                    elevation: 10,
                    child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.adjust,
                          size: 25,
                        )),
                  ),
                ),
                rightHandler: const FlutterSliderHandler(
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.red,
                    size: 24,
                  ),
                ),
                disabled: false,

                onDragging: (handlerIndex, lowerValue, upperValue) {
                  _lowerValue = lowerValue as double;
                  _upperValue = upperValue as double;
                  setState(() {});
                },
              )),
          Container(
              margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
              alignment: Alignment.centerLeft,
              child: FlutterSlider(
                values: [3000, 17000],
                rangeSlider: true,
//rtl: true,

//                ignoreSteps: [
//                  FlutterSliderIgnoreSteps(from: 8000, to: 12000),
//                  FlutterSliderIgnoreSteps(from: 18000, to: 22000),
//                ],
                max: 25000,
                min: 0,
                step: const FlutterSliderStep(step: 100),
                jump: true,
                trackBar: const FlutterSliderTrackBar(
                  inactiveTrackBarHeight: 2,
                  activeTrackBarHeight: 3,
                ),

                disabled: false,

                handler: customHandler(Icons.chevron_right),
                rightHandler: customHandler(Icons.chevron_left),
                tooltip: const FlutterSliderTooltip(
                  leftPrefix: Icon(
                    Icons.attach_money,
                    size: 19,
                    color: Colors.black45,
                  ),
                  rightSuffix: Icon(
                    Icons.attach_money,
                    size: 19,
                    color: Colors.black45,
                  ),
                  textStyle: TextStyle(fontSize: 17, color: Colors.black45),
                ),

                onDragging: (handlerIndex, lowerValue, upperValue) {
                  _lowerValue = lowerValue as double;
                  _upperValue = upperValue as double;
                  setState(() {});
                },
              )),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            alignment: Alignment.centerLeft,
            child: FlutterSlider(
              key: const Key('3343'),
              values: [300000000, 1600000000],
              rangeSlider: true,
              tooltip: const FlutterSliderTooltip(
                alwaysShowTooltip: true,
              ),
              max: 2000000000,
              min: 0,
              step: const FlutterSliderStep(step: 20),
              jump: true,
              onDragging: (handlerIndex, lowerValue, upperValue) {
                _lowerValue = lowerValue as double;
                _upperValue = upperValue as double;
                setState(() {});
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50, left: 50, right: 50),
            alignment: Alignment.centerLeft,
            child: FlutterSlider(
              values: [30, 60],
              rangeSlider: true,
              max: 100,
              min: 0,
              visibleTouchArea: true,
              trackBar: FlutterSliderTrackBar(
                inactiveTrackBarHeight: 14,
                activeTrackBarHeight: 10,
                inactiveTrackBar: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12,
                  border: Border.all(width: 3, color: Colors.blue),
                ),
                activeTrackBar: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue.withOpacity(0.5)),
              ),
              onDragging: (handlerIndex, lowerValue, upperValue) {
                _lowerValue = lowerValue as double;
                _upperValue = upperValue as double;
                setState(() {});
              },
            ),
          ),

          /*Fixed Values*/
          Container(
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: FlutterSlider(
              jump: true,
              values: [10],
              fixedValues: [
                const FlutterSliderFixedValue(percent: 0, value: '1000'),
                const FlutterSliderFixedValue(percent: 10, value: '10K'),
                const FlutterSliderFixedValue(percent: 50, value: 50000),
                const FlutterSliderFixedValue(percent: 80, value: '80M'),
                const FlutterSliderFixedValue(percent: 100, value: '100B'),
              ],
              onDragging: (handlerIndex, lowerValue, upperValue) {
                _lowerValue = lowerValue as double;
                setState(() {});
              },
            ),
          ),

          /*Hatch Mark Example*/
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: FlutterSlider(
              handlerWidth: 15,
              hatchMark: FlutterSliderHatchMark(
                linesDistanceFromTrackBar: 5,
                density: 0.5,
                labels: [
                  FlutterSliderHatchMarkLabel(
                      percent: 0, label: const Text('Start')),
                  FlutterSliderHatchMarkLabel(
                      percent: 10, label: const Text('10,000')),
                  FlutterSliderHatchMarkLabel(
                      percent: 50, label: const Text('50 %')),
                  FlutterSliderHatchMarkLabel(
                      percent: 80, label: const Text('80,000')),
                  FlutterSliderHatchMarkLabel(
                      percent: 100, label: const Text('Finish')),
                ],
              ),
              jump: true,
              trackBar: const FlutterSliderTrackBar(),
              handler: FlutterSliderHandler(
                decoration: const BoxDecoration(),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              rightHandler: FlutterSliderHandler(
                decoration: const BoxDecoration(),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              values: [30000, 70000],
              visibleTouchArea: true,
              min: 0,
              max: 100000,
              touchSize: 15,
              rangeSlider: true,
              step: const FlutterSliderStep(step: 1000),
              onDragging: (handlerIndex, lowerValue, upperValue) {},
            ),
          ),
          const SizedBox(height: 50),
          Text('Lower Value: $_lowerValue'),
          const SizedBox(height: 25),
          Text('Upper Value: $_upperValue')
        ],
      ),
    );
  }

  FlutterSliderHandler customHandler(IconData icon) {
    return FlutterSliderHandler(
      decoration: const BoxDecoration(),
      child: Container(
        child: Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.3), shape: BoxShape.circle),
          child: Icon(
            icon,
            color: Colors.white,
            size: 23,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                spreadRadius: 0.05,
                blurRadius: 5,
                offset: const Offset(0, 1))
          ],
        ),
      ),
    );
  }
}
