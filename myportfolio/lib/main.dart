import 'package:flutter/material.dart';

void main() {
  runApp(MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

// =========================
// HOME PAGE
// =========================

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Eso, Asiel Eran A. ( IT - 307 )',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              Text(
                'Bachelor of Science in Information Technology',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),

              SizedBox(height: 5),

              Text(
                'Global Reciprocal Colleges',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),

              SizedBox(height: 40),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutScreen(),
                    ),
                  );
                },
                child: Text('ABOUT ME'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// =========================
// ABOUT ME
// =========================

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                'About Me',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 25),

              Text(
                'Hello! My name is Eso, Asiel Eran A. - IT 307',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),

              SizedBox(height: 10),

              Text(
                'I am a Bachelor of Science in Information Technology',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),

              SizedBox(height: 10),

              Text(
                'student at Global Reciprocal Colleges.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),

              SizedBox(height: 40),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SkillsScreen(),
                    ),
                  );
                },
                child: Text('MY SKILLS'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// =========================
// SKILLS
// =========================

class SkillsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Skills'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                'My Skills',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 30),

             SkillItem(
              skill: 'HTML / CSS',
              ),

             SkillItem(
              skill: 'JavaScript',
              ),

             SkillItem(
              skill: 'Database Management',
              ),

             SkillItem(
              skill: 'Flutter Development',
              ),

             SkillItem(
              skill: 'Python Programming',
              ),

              SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProjectsScreen(),
                    ),
                  );
                },
                child: Text('MY PROJECT'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// =========================
// SKILL ITEM
// =========================

class SkillItem extends StatelessWidget {
  final String skill;

  SkillItem({
    required this.skill,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        maxWidth: 400,
      ),
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        skill,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}

// =========================
// PROJECTS
// =========================

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Projects'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                'SysArch Project',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 30),

              Container(
                width: double.infinity,
                constraints: BoxConstraints(
                  maxWidth: 450,
                ),
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      'OJT Tracking & Monitoring System',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 15),

                    Text(
                      'The OJT Tracking and Monitoring System is a centralized '
                      'platform designed to efficiently manage, monitor, and '
                      'track students\' on-the-job training activities, '
                      'attendance, requirements, and progress.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactScreen(),
                    ),
                  );
                },
                child: Text('CONTACT ME'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// =========================
// CONTACT
// =========================

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Me'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                'Contact Me',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 30),

              ContactItem(
                label: 'Facebook',
                value: 'Eranallasqt',
              ),

              ContactItem(
                label: 'Contact Number',
                value: '0912 4565 175',
              ),

              ContactItem(
                label: 'Email',
                value: 'kiondensadacutie@gmail.com',
              ),

              SizedBox(height: 40),

              ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(
                    context,
                    (route) => route.isFirst,
                  );
                },
                child: Text('BACK TO HOMEPAGE'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// =========================
// CONTACT ITEM
// =========================

class ContactItem extends StatelessWidget {
  final String label;
  final String value;

  ContactItem({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        maxWidth: 450,
      ),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 130,
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Expanded(
            child: Text(
              value,
            ),
          ),
        ],
      ),
    );
  }
}