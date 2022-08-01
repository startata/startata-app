import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:startata/core/usecase/usecase.dart';
import 'package:startata/features/domain/domain.dart';
import 'package:startata/features/domain/usecases/get_persons_usecase.dart';
import 'package:startata/features/presentation/widgets/person_menu_drawer.dart';

import '../widgets/edit_content.dart';
import '../widgets/main_app_bar.dart';

GetIt getIt = GetIt.instance;

class MainScreen extends StatefulWidget {
  MainScreen();

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainScreen> {
  late GetPersonsUsecase usecase;

  @override
  void initState() {
    usecase = getIt<GetPersonsUsecase>();
    super.initState();
  }

  int _currentReport = 0;

  // List<bool> _reportsChecked = [];
  List<bool> _reportsChecked = List.generate(10, (i) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: FutureBuilder<List<PersonEntity>>(
        future: usecase.call().then(
              (value) => value,
              onError: (_) {},
            ),
        builder: (context, snapshot) {
          if (snapshot.data == null || snapshot.data!.isEmpty) {
            return Container(
              height: 20,
              width: 100,
              color: Colors.red,
            );
          }

          final _reports = List.generate(
            snapshot.data!.length,
            (index) =>
                ReportEntity(person: snapshot.data![index], descriptions: [
              ReportDescriptionEntity(
                date: DateTime.now().subtract(Duration(days: 1)),
                description:
                    '${index} ontem - Nunc sed quam ac turpis interdum congue nec a risus. Aliquam venenatis sapien ex, ut scelerisque nulla ultricies a. Vivamus porttitor dui neque, sagittis laoreet eros semper ut. Donec eu sagittis lectus. Pellentesque ut leo urna. Integer semper felis id hendrerit mattis. Fusce venenatis vel leo et eleifend. ',
              ),
              ReportDescriptionEntity(
                date: DateTime.now(),
                description:
                    '${index} hoje - Integer venenatis magna turpis, id efficitur nibh finibus in. Sed quis odio fermentum, pharetra purus nec, malesuada purus. Sed at semper turpis, in rutrum elit. Nam ullamcorper velit sit amet felis vulputate pretium. Nullam eget dignissim libero. Donec egestas lectus a orci feugiat fringilla. Fusce vulputate aliquam feugiat.  ',
              ),
            ]),
          );
          // _reportsChecked = List.generate(snapshot.data!.length, (i) => false);

          return Padding(
            padding: EdgeInsets.only(bottom: 64.0, left: 64.0, right: 64.0),
            child: Row(
              children: [
                PersonMenuDrawer(
                  persons: snapshot.data,
                  reportsChecked: _reportsChecked,
                  onTileTap: (index) => _onPersonPressed(context, index: index),
                ),
                EditContent(
                  report: _reports[_currentReport],
                  onFinishTap: () => _onCheckPressed(),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'gif do dia',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'cronômetro',
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'enviar tudo',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _onPersonPressed(BuildContext context, {int? index}) {
    setState(() {
      _currentReport = index ?? 0;
    });
  }

  void _onCheckPressed() {
    setState(() {
      _reportsChecked[_currentReport] = true;
    });
    print(_reportsChecked[_currentReport]);
    print(_reportsChecked);
  }
}
