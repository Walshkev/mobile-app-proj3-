import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'johndoe@example.com | 555-555-5555 | https://github.com/johndoe',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Work Experience',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            // used chat gpt to generate the following experiences
            SizedBox(height: 10),
            _buildExperience(
              'Software Engineer',
              'Tech Company',
              'Jan 2020 - Present',
              'New York, NY',
              'Developed and maintained web applications using Flutter and Dart.',
            ),
            _buildExperience(
              'Junior Developer',
              'Another Tech Company',
              'Jan 2018 - Dec 2019',
              'San Francisco, CA',
              'Assisted in the development of mobile applications using Flutter.',
            ),
            _buildExperience(
              'Intern',
              'Startup Company',
              'Jun 2017 - Dec 2017',
              'Los Angeles, CA',
              'Worked on various projects and gained experience in software development.',
            ),
            _buildExperience(
              'Freelance Developer',
              'Self-Employed',
              'Jan 2016 - May 2017',
              'Remote',
              'Developed custom software solutions for clients using various technologies.',
            ),
            _buildExperience(
              'Teaching Assistant',
              'University',
              'Sep 2015 - Dec 2015',
              'Boston, MA',
              'Assisted in teaching computer science courses and helped students with their projects.',
            ),
            _buildExperience(
              'Research Assistant',
              'Research Lab',
              'Jan 2015 - Aug 2015',
              'Chicago, IL',
              'Conducted research on machine learning algorithms and published papers.',
            ),
            _buildExperience(
              'Volunteer Developer',
              'Non-Profit Organization',
              'Jun 2014 - Dec 2014',
              'Seattle, WA',
              'Developed and maintained the organization\'s website and other software tools.',
              ),
              _buildExperience(
                'Project Manager',
                'Big Tech Company',
                'Jan 2013 - May 2014',
                'Austin, TX',
                'Managed a team of developers to deliver software projects on time and within budget.',
              ),
              _buildExperience(
                'Software Developer',
                'Medium Tech Company',
                'Jan 2012 - Dec 2012',
                'Denver, CO',
                'Developed and maintained internal tools and applications.',
              ),
              _buildExperience(
                'IT Support Specialist',
                'Small Business',
                'Jun 2011 - Dec 2011',
                'Miami, FL',
                'Provided technical support and troubleshooting for employees.',
              ),
              _buildExperience(
                'Web Developer',
                'Freelance',
                'Jan 2010 - May 2011',
                'Remote',
                'Designed and developed websites for various clients.',
              ),
              _buildExperience(
                'Data Analyst',
                'Finance Company',
                'Jun 2009 - Dec 2009',
                'Chicago, IL',
                'Analyzed financial data and created reports for management.',
              ),
              _buildExperience(
                'System Administrator',
                'Tech Startup',
                'Jan 2008 - May 2009',
                'San Diego, CA',
                'Maintained and managed company servers and network infrastructure.',
              ),
              _buildExperience(
                'Intern',
                'Government Agency',
                'Jun 2007 - Dec 2007',
                'Washington, D.C.',
                'Assisted in the development of government software applications.',
              ),
              _buildExperience(
                'Research Intern',
                'University Lab',
                'Jan 2006 - May 2007',
                'Boston, MA',
                'Conducted research on data mining techniques and published findings.',
              ),
              _buildExperience(
                'Volunteer IT Support',
                'Community Center',
                'Jun 2005 - Dec 2005',
                'Houston, TX',
                'Provided IT support and training for community members.',

              ),

            

            // Add more experiences as needed
          ],
        ),
      ),
    );
  }

  Widget _buildExperience(String title, String company, String dates, String location, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '$company | $dates | $location',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
