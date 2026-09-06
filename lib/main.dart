import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vardhan Portfolio',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        scaffoldBackgroundColor: const Color(0xFFF7F8FC),
      ),
      home: const HomePage(),
    );
  }
}

// ==================== HOME PAGE ====================

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Portfolio',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isMobile = constraints.maxWidth < 700;

              return Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1100),
                  child: Padding(
                    padding: EdgeInsets.all(isMobile ? 24 : 50),
                    child: Column(
                      children: [
                        const SizedBox(height: 30),

                        const ProfileAvatar(),

                        const SizedBox(height: 30),

                        Text(
                          'Vardhan',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displaySmall
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),

                        const SizedBox(height: 15),

                        const Text(
                          '3rd Year CSE-AIML Student',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 17, color: Colors.black54),
                        ),

                        const SizedBox(height: 8),

                        const Text(
                          'C.R.Rao Advanced Institute of Mathematics, '
                          'Statistics and Computer Science (AIMSCS)',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),

                        const SizedBox(height: 8),

                        const Text(
                          'Hyderabad, Telangana',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),

                        const SizedBox(height: 30),

                        const Text(
                          'I am a Computer Science and Engineering student '
                          'specializing in Artificial Intelligence and '
                          'Machine Learning. I am interested in building '
                          'intelligent applications and learning modern '
                          'technologies.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, height: 1.6),
                        ),

                        const SizedBox(height: 35),

                        Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 15,
                          runSpacing: 15,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AboutPage(),
                                  ),
                                );
                              },
                              icon: const Icon(Icons.person),
                              label: const Text('About Me'),
                            ),
                            OutlinedButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ProjectsPage(),
                                  ),
                                );
                              },
                              icon: const Icon(Icons.code),
                              label: const Text('Projects'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

// ==================== PROFILE AVATAR ====================

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.indigo.shade100,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withValues(alpha: 0.08),
          ),
        ],
      ),
      child: const CircleAvatar(
        radius: 105,
        backgroundColor: Colors.white,
        child: Icon(Icons.person, size: 100, color: Colors.indigo),
      ),
    );
  }
}

// ==================== ABOUT PAGE ====================

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Me',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1100),
                  child: Padding(
                    padding: EdgeInsets.all(
                      constraints.maxWidth < 600 ? 20 : 40,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const PageTitle(icon: Icons.person, title: 'About Me'),

                        const SizedBox(height: 20),

                        const InfoCard(
                          title: 'Personal Information',
                          icon: Icons.account_circle,
                          child: Text(
                            'I am Vardhan, a 3rd-year Computer Science '
                            'and Engineering student specializing in '
                            'Artificial Intelligence and Machine Learning '
                            'at C.R.Rao Advanced Institute of Mathematics, '
                            'Statistics and Computer Science (AIMSCS), '
                            'Hyderabad.',
                            style: TextStyle(fontSize: 16, height: 1.6),
                          ),
                        ),

                        const SizedBox(height: 25),

                        const InfoCard(
                          title: 'Programming Languages',
                          icon: Icons.code,
                          child: SkillWrap(skills: ['Python', 'C', 'Java']),
                        ),

                        const SizedBox(height: 25),

                        const InfoCard(
                          title: 'Technologies & Frameworks',
                          icon: Icons.build,
                          child: SkillWrap(
                            skills: [
                              'Flutter',
                              'Dart',
                              'Machine Learning',
                              'Git',
                              'GitHub',
                            ],
                          ),
                        ),

                        const SizedBox(height: 25),

                        const InfoCard(
                          title: 'Areas of Interest',
                          icon: Icons.lightbulb,
                          child: SkillWrap(
                            skills: [
                              'Artificial Intelligence',
                              'Machine Learning',
                              'App Development',
                              'Data Science',
                            ],
                          ),
                        ),

                        const SizedBox(height: 25),

                        const InfoCard(
                          title: 'Career Goal',
                          icon: Icons.flag,
                          child: Text(
                            'My goal is to become an AI/ML Engineer '
                            'and build practical intelligent applications '
                            'using Artificial Intelligence and Machine '
                            'Learning.',
                            style: TextStyle(fontSize: 16, height: 1.6),
                          ),
                        ),

                        const SizedBox(height: 35),

                        Center(
                          child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.home),
                            label: const Text('Back to Home'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

// ==================== PROJECTS PAGE ====================

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      const Project(
        name: 'IIITH Labs and Projects',
        description:
            'A collection of laboratory work and projects '
            'available in the GitHub repository.',
        technologies: ['Python', 'AI/ML'],
        icon: Icons.psychology,
      ),
      const Project(
        name: 'Complete AMS Project - MERN Stack',
        description:
            'An AMS project repository using technologies '
            'from the MERN stack.',
        technologies: ['MERN Stack', 'JavaScript'],
        icon: Icons.web,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Projects',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: LayoutBuilder(
            builder: (context, constraints) {
              int columns = 1;

              if (constraints.maxWidth >= 900) {
                columns = 3;
              } else if (constraints.maxWidth >= 600) {
                columns = 2;
              }

              return Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1150),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const PageTitle(icon: Icons.folder, title: 'My Projects'),

                      const SizedBox(height: 10),

                      const Text(
                        'Projects from my GitHub profile.',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),

                      const SizedBox(height: 25),

                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: projects.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: columns,
                          crossAxisSpacing: 18,
                          mainAxisSpacing: 18,
                          childAspectRatio: columns == 1 ? 1.5 : 1.0,
                        ),
                        itemBuilder: (context, index) {
                          return ProjectCard(project: projects[index]);
                        },
                      ),

                      const SizedBox(height: 35),

                      Center(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.home),
                          label: const Text('Back to Home'),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

// ==================== PAGE TITLE ====================

class PageTitle extends StatelessWidget {
  final IconData icon;
  final String title;

  const PageTitle({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.indigo, size: 30),
        const SizedBox(width: 10),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

// ==================== INFO CARD ====================

class InfoCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget child;

  const InfoCard({
    super.key,
    required this.title,
    required this.icon,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.indigo),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            child,
          ],
        ),
      ),
    );
  }
}

// ==================== SKILLS ====================

class SkillWrap extends StatelessWidget {
  final List<String> skills;

  const SkillWrap({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: skills.map((skill) {
        return Chip(
          avatar: const Icon(
            Icons.check_circle,
            size: 18,
            color: Colors.indigo,
          ),
          label: Text(skill),
        );
      }).toList(),
    );
  }
}

// ==================== PROJECT MODEL ====================

class Project {
  final String name;
  final String description;
  final List<String> technologies;
  final IconData icon;

  const Project({
    required this.name,
    required this.description,
    required this.technologies,
    required this.icon,
  });
}

// ==================== PROJECT CARD ====================

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(project.icon, color: Colors.indigo, size: 30),
            ),

            const SizedBox(height: 18),

            Text(
              project.name,
              style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: Text(
                project.description,
                style: const TextStyle(height: 1.5, color: Colors.black54),
              ),
            ),

            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: project.technologies
                  .map(
                    (technology) => Chip(
                      label: Text(
                        technology,
                        style: const TextStyle(fontSize: 12),
                      ),
                      visualDensity: VisualDensity.compact,
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
