
import 'package:flutter/material.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/OurTechnology.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/Scan.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/component/appbarcomp.dart';
import 'package:hcc_detector/hcc_detector/presentation/Screens/component/drawercomp.dart';

class LearnPage extends StatelessWidget {
   LearnPage({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:  drwercomp(scaffoldKey: _scaffoldKey,
        
        onTaphome: () {
             Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LearnPage(),
            ),
          );
        
      },
        onTapscan: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScanPage(),
            ),
          );
        },
        onTaptecho: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OurTechnologyPage(),
            ),
          );
        },
        onTaplearn: () {
       
        },
      ),
      key:_scaffoldKey ,
      backgroundColor: const Color(0xFFF0F1E8),
      body: LayoutBuilder(
        builder: (context, constraints) => 
         Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 80.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Container(
                    width: double.infinity,
                    height: constraints.maxHeight * 0.15,
                    padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * 0.03),
                    child: AppbarComponent(scaffoldKey: _scaffoldKey,
                
                    ),
                  ),
            
        
              const SizedBox(height: 70),
        
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hepatocellular carcinoma (HCC):',
                              style: TextStyle(
                                color: Color.fromARGB(255, 35, 76, 223),
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'is the most common type of primary liver cancer, arising from the liver’s parenchymal cells, known as hepatocytes. It is a major global health problem, accounting for a significant portion of cancer-related morbidity and mortality worldwide. The incidence of HCC varies geographically, with the highest rates observed in East Asia and sub-Saharan Africa, regions where chronic hepatitis B virus (HBV) infection is endemic. In contrast, in Western countries, the increasing prevalence of hepatitis C virus (HCV) infection and non-alcoholic fatty liver disease (NAFLD) have contributed to rising HCC rates.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Risk factors for HCC:',
                              style: TextStyle(
                                color: Color.fromARGB(255, 35, 76, 223),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'include chronic liver disease, particularly cirrhosis, which can result from chronic HBV and HCV infections, alcohol abuse, NAFLD, and genetic disorders such as hemochromatosis. Other risk factors include exposure to aflatoxins, diabetes, obesity, and metabolic syndrome.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                    Container(
                      width: 1,
                      color: const Color.fromARGB(255, 35, 76, 223),
                    ),
                  
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 50.0, right: 100.0),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'HCC often develops in the context of chronic liver inflammation and cirrhosis, which provide a fertile environment for malignant transformation. The disease is typically asymptomatic in its early stages, leading to late diagnosis and poor prognosis.\n\n Common symptoms at advanced stages include abdominal pain, weight loss, fatigue, jaundice, and liver enlargement.Diagnosis of HCC involves a combination of imaging techniques, such as ultrasound, computed tomography (CT), and magnetic resonance imaging (MRI), along with serum biomarkers like alpha-fetoprotein (AFP). Histological confirmation through liver biopsy is sometimes required.\n\nTreatment options for HCC depend on the stage of the disease and the underlying liver function. They include surgical resection, liver transplantation, local ablative therapies (e.g., radiofrequency ablation, microwave ablation), transarterial chemoembolization (TACE), systemic therapies (e.g., sorafenib, lenvatinib), and emerging immunotherapies. Despite advances in treatment, the overall prognosis for HCC remains poor, emphasizing the importance of early detection and preventive strategies such as vaccination for HBV and antiviral treatment for HBV and HCV infections.\n\nResearch into the molecular pathogenesis of HCC is ongoing, aiming to uncover novel therapeutic targets and improve patient outcomes. Public health initiatives focused on screening high-risk populations and reducing the prevalence of liver disease are crucial in the global fight against hepatocellular carcinoma.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(
                    left: 50.0,
                    bottom: 25.0), 
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(
                          context); 
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 16, 67, 175),
                          width: 2,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color.fromARGB(255, 16, 67, 175),
                        size: 30,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}