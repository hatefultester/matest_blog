part of '../about_me_page.dart';

class _Skill {
  final String title;
  final double value;
  final String description;

  _Skill({
    required this.title,
    required this.value,
    required this.description,
  });
}

List<_Skill> _skillsList = [
  _Skill(
    title: 'Getx',
    description:
        'I used Getx for state management, routing, dependency injection, and localization in several my projects and I am very familiar with Obx state management.',
    value: 0.85,
  ),
  _Skill(
    description:
        'I have used Provider for state management in my first Flutter game. I am familiar with ChangeNotifierProvider and basics how to handle cross app state using provider.',
    title: 'Provider',
    value: 0.7,
  ),
  _Skill(
    description:
        'I have used Riverpod for my recent projects. I prefer its simplicity over provider and Getx.',
    title: 'Riverpod',
    value: 0.75,
  ),
  _Skill(
    description:
        'I am familiar with Bloc architecture and I tried some dummy projects with this state management library.',
    title: 'Bloc',
    value: 0.4,
  ),
  _Skill(
    description:
        'I use Hive for local database in my recent projects, I prefer its simplicity and auto-generation.',
    title: 'Hive',
    value: 0.77,
  ),
  _Skill(
    description:
        'For most of my apps I used simple shared preferences for storing simple data like user settings, user data, etc.',
    title: 'Shared prefs',
    value: 0.82,
  ),
  _Skill(
    description:
        'I am familiar with Sqlite from my past work experience. I have never used Sqlite in my personal projects.',
    title: 'Sqlite',
    value: 0.30,
  ),
  _Skill(
    description:
        'I use flutter secure storage to store user sensitive data like user token, user id, etc.',
    title: 'Secure storage',
    value: 0.81,
  ),
  _Skill(
    description:
        'I am familiar with Firebase Auth, Firebase Firestore, Firebase Storage, Firebase Cloud Messaging, Firebase Analytics, Firebase Crashlytics, Firebase Performance Monitoring.',
    title: 'Firebase',
    value: 0.85,
  ),
  _Skill(
    title: 'http',
    value: 0.95,
    description:
        'I have used in the past http package for my projects. I am familiar with http requests, error handling, and data parsing.',
  ),
  _Skill(
    title: 'Dio',
    value: 0.85,
    description:
        'I have used Dio for my recent projects. I prefer its simplicity over http package.',
  ),
  _Skill(
    title: 'Dartz',
    value: 0.85,
    description:
        'I have used Dartz for my recent projects. I use it to handle error state properly.',
  )
];

class _AboutMeDev extends StatelessWidget {
  const _AboutMeDev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: FlutterLogo(),
                            ),
                            Text('Me and Flutter',
                                style:
                                    FluentTheme.of(context).typography.title),
                          ],
                        ),
                      ),
                      Text("""
As a passionate Flutter developer, I am captivated by its ability to create efficient multi-platform solutions. Its emphasis on clean architecture ensures maintainable, scalable, and robust applications. Flutter is more than a framework. It's my digital canvas. 
                          """,
                          textAlign: TextAlign.justify,
                          style: FluentTheme.of(context).typography.bodyLarge),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(8.0),
                    color: FluentTheme.of(context).activeColor,
                    height: 300,
                    width: 2,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Knowledge',
                            style: FluentTheme.of(context).typography.subtitle),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Wrap(
                          children: [
                            for (int i = 0; i < _skillsList.length; i++)
                              Tooltip(
                                message: _skillsList[i].description,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FluentTheme.of(context).cardColor,
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                  ),
                                  margin: const EdgeInsets.all(
                                    8.0,
                                  ),
                                  padding: const EdgeInsets.all(
                                    4.0,
                                  ),
                                  width: 110,
                                  height: 110,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ProgressRing(
                                          value: _skillsList[i].value * 100,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          _skillsList[i].title,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
