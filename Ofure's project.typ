#set page(
  paper: "a4",
  margin: (x:2cm, y:2cm)
)

#set text(
  font: "Times New Roman",
  size: 14pt,
  hyphenate: false,
)

#set par(
  justify: true,
  leading: 1.5em
)

#show heading: it => [
    #set text(14pt, weight: "bold")
    #block(upper(it.body))
]

#show figure.caption: it => [
    #set text(9pt, style: "italic")
    #v(8pt)
    #block([#it.supplement #it.counter.display(it.numbering): #it.body])
]
#align(center, text(16pt)[
  *INTELLIGENT SOFTWARE TOOL FOR SCHEDULING NURSES IN HOSPITALS: A COMPARATIVE STUDY OF  TWO ANT COLONY OPTIMISATION HYPER-HEURISTIC SCHEMES*
  \ \

  *BY*
  \ \

  *EHIREMHEN, OFURE FAVOUR*

  *(20CG028069)*
   \ \ 

  *A PROJECT SUBMITED TO THE DEPARTMENT OF COMPUTER AND INFORMATION SCIENCES, COLLEGE OF SCIENCE AND TECHNOLOGY, COVENANT UNIVERSITY OTA, OGUN STATE.*

\ \ 
  *IN PARTIAL FULFILMENT OF THE REQUIREMENTS FOR THE AWARD OF THE BACHELOR OF SCIENCE (HONOURS) DEGREE IN COMPUTER SCIENCE.*

\ \
  *..., 2024*
])
#pagebreak()

#align(center, [= CERTIFICATION])\
I hereby certify that this project, was carried out by Ehiremhen Ofure FAVOUR in the Department of Computer and Information Sciences, College of Science and Technology, Covenant University, Ogun State, Nigeria, under my supervision.

#pagebreak()

#align(center, [= DEDICATION])\
...

#pagebreak()

#align(center, [= ACKNOWLEDGEMENTS])\
...

#pagebreak()

#align(center, [
  = CHAPTER ONE
  \
  = INTRODUCTION
]) \

= 1.1 BACKGROUND INFORMATION
\
The healthcare industry, particularly the management of nursing staff in hospitals, has always been a critical and challenging domain. With the increasing demand for healthcare services, efficient scheduling of nurses has become a pressing issue. Properly scheduling the nursing staff has a great impact on the quality of health care (Oldenkamp, 1996), the recruitment of nursing personnel, the development of a nursing budgets and various other functions of the nursing service (Cheang et al., 2003). Historically, nurse scheduling has been a manual and time-consuming task, often leading to suboptimal schedules and resource allocation. The advent of intelligent software tools presents a promising solution to this long-standing problem.

\

Despite the critical role of nurse scheduling, various challenges persist within this domain. These challenges include the need to balance to satisfy various hard constraints such as legal requirements, staff preferences, and institutional regulations, and as many soft constraints as possible, such as minimal nurse demands, “day-off” requests, personal preferences, etc. Traditional scheduling methods often struggle to efficiently navigate these multifaceted constraints, resulting in suboptimal nurse schedules that can lead to decreased staff satisfaction, increased burnout, and ultimately, compromised patient care. Additionally, the ever-changing nature of healthcare environments exacerbates the complexity of nurse rostering, demanding adaptive and intelligent solutions capable of optimizing schedules in real-time.

\

Although the interest in intelligent scheduling tools is on the rise, there exists a research gap in the exploration and comparative analysis of specific optimization techniques, such as Ant Colony Optimisation (ACO) hyper-heuristic schemes, for nurse scheduling. While ACO has been applied to various optimization problems, its application to nurse scheduling remains relatively unexplored. This project aims to bridge this gap by proposing an intelligent software tool that utilizes two distinct ant colony optimization hyper-heuristic schemes for nurse scheduling. Drawing inspiration from successful applications of similar approaches in related domains, this proposed solution seeks to demonstrate its efficacy in handling the intricate constraints of nurse rostering and addressing the specific challenges within the nurse scheduling domain.

\

Over the years, various scheduling algorithms have been employed by researchers to solve this problem. These methods include Tabu Search (Burke, Kendall, & Soubeiga 2003), Variable Neighborhood Search (Bilgin et al., 2012), Simulated Annealing (Brusco & Jacobs, 1995), Ant Colony Optimization (Gutjahr, & Rauner, 2007), Branch-and-price Algorithm (Maenhout, & Vanhoucke, 2010), Harmony Search (Awadallah et al., 2013) and Scatter Search (Curtois & Berghe, 2010). A comprehensive analysis reveals that the existing works often fall short in effectively addressing the intricacies of nurse rostering problems, and whose main disadvantage lies in its high computational complexity which limits their application only to small size instances, and when attempted to be scaled, either cost too much computation, or have difficulty in constraint handling. Therefore, alternative optimization methods, namely heuristics and metaheuristics have been developed in order to find suboptimal solutions of good quality in a reasonable time. 
Existing works in this field have primarily focused on traditional scheduling methods or have explored single heuristic or metaheuristic approaches. The opportunity lies in the comparative evaluation of multiple ACO hyper-heuristic schemes, which has not been extensively addressed in the context of nurse scheduling. Methodologically, this study presents an opportunity to fill this gap by rigorously comparing the performance of distinct ACO hyper-heuristic schemes in the context of nurse scheduling.

\


The hypothesis of this study is that the comparative analysis of two ACO hyper-heuristic schemes will reveal significant differences in their effectiveness for nurse scheduling. This approach is significant as it aims to provide empirical evidence to support the selection of the most suitable ACO hyper-heuristic scheme for nurse scheduling, thereby improving the efficiency and fairness of the scheduling process. In summary, this research seeks to address the existing gaps in nurse scheduling methodologies and to contribute to the advancement of intelligent software tools for nurse scheduling, ultimately enhancing both staff satisfaction and the quality of patient care.

\

= 1.2 STATEMENT OF THE PROBLEM
\
The problem in the domain of nurse scheduling in hospitals is the inefficient and time-consuming manual scheduling process characterized by the challenging task of balancing legal regulations, staff preferences, and institutional constraints, which often leads to suboptimal schedules and resource allocation. This can result in decreased staff satisfaction, increased burnout, and ultimately, compromised patient care. The traditional scheduling methods have not been able to address the specific challenges within the nurse scheduling domain, and existing works have primarily focused on single heuristic or metaheuristic approaches. The overarching problem lies in the absence of a comprehensive understanding of the effectiveness of specific optimization techniques, such as Ant Colony Optimization (ACO) hyper-heuristic schemes, in addressing the nuanced complexities of nurse scheduling within the dynamic healthcare environment.

\

To address the identified research gap, this study proposes an innovative solution through a comparative analysis of ACO hyper-heuristic schemes. By leveraging insights gained from related domains and successful applications of similar approaches, the research aims to unveil the nuanced performance differences between the identified ACO hyper-heuristic schemes, providing empirical evidence to support the selection of the most suitable ACO hyper-heuristic scheme for nurse scheduling. The objective is to develop an intelligent software tool specifically tailored for nurse scheduling, enhancing adaptability and efficiency within hospital settings. Through this exploration, the study seeks to contribute valuable insights and advancements that can significantly improve patient care, staff satisfaction, and the overall operational efficiency of healthcare institutions.

\

= 1.3 AIM AND OBJECTIVES OF THE STUDY
\

The aim of this study is to develop an intelligent software tool to help solve the nurse scheduling problem using two ant colony optimization hyper-heuristic schemes and to compare their effectiveness. The objectives of this study include: 

+ Review of existing scheduling methods and optimization techniques, including ACO hyper-heuristic schemes, in the context of nurse scheduling.

+ To develop an intelligent software tool for nurse scheduling using two ACO hyper-heuristic schemes.

+ To evaluate the performance of the two ACO hyper-heuristic schemes.

+ To compare the results of the two ACO hyper-heuristic schemes and identify the most suitable scheme for nurse scheduling.


\

= 1.4 METHODOLOGY

\
The tools and techniques I intend on adopting to achieve the above objectives include:

+ A comprehensive review on existing literature related to nurse scheduling, optimization techniques, and ACO hyper-heuristic schemes. 

+ Developing the software tool using programming languages like Java to implement the selected ACO hyper-heuristic schemes. 

+ Implementing the developed tool in a simulated environment or a real-world healthcare setting and evaluating the performance of each scheme based on certain key metrics like fairness, resource allocation and optimization.

+ Employ statistical methods to compare the results obtained from the two ACO hyper-heuristic schemes, evaluating them using simulation and visualization tools like MATLAB or R to represent and compare the output, with the intention of providing a clear understanding of the performance variations and identifying the most suitable scheme for nurse scheduling.

\
 Fig 1.1 Objectives-Methodology mapping table
#table(
  columns: (.5fr, 2fr,2fr),
  inset: 15pt,
  align: horizon,
  [S/N],[*OBJECTIVES*], [*METHODOLOGY*],
  $1$,
  [
    Reviewing of already existing scheduling optimization techniques, including the Ant Colony optimization algorithm using hyper-heuristic schemes, in the context of nurse scheduling.
  ],
  [*Extensive Literature Review*\
  Review of literature on already existing system, algorithms and techniques related to nurse scheduling problems focusing on the Ant Colony algorithm in terms of hyper heuristic schemes.],
  $2$,
  [
    Development of an intelligent software tool for solving the nurse rostering problem.
  ],
  [*Software Development and Algorithm implementation*\
  Adoption of the JAVA programming language to develop the software tool implementing two hyper heuristics schemes based on two Ant Colony Algorithm variations for solving the nurse rostering problem.
  ],
  $3$,
  [
    Evaluation of the performance of the two implemented ACO hyper heuristic schemes
  ],
  [*Performance Evaluation*\
    Implementing the tool in a simulated environment or a real world scenario and evaluating the performance using certain key metrics.
  ],
  $4$,
  [Comparison of the hyper heuristics schemes and identifification of the most suitable for solving the problem.],
  [
  Utilizing statistical methods for performance comparison, the results will be visualized for enhanced comprehension and assessment. Tools such as MATLAB or R will be employed for visualization, facilitating the identification of the most suitable scheme.
  ]

)


\

= 1.5 SIGNIFICANCE OF THE STUDY

\
The significance of this study lies in its potential to revolutionize nurse scheduling practices within hospital management, offering substantial benefits to healthcare institutions, nursing staff, and ultimately, the quality of patient care. The study is important for the following reasons:

+ The study can help solve the inefficient and time-consuming manual scheduling process, which often leads to suboptimal schedules and resource allocation, ultimately affecting both staff satisfaction and patient care quality.
+ Healthcare managers and decision-makers stand to benefit from the study's recommendations and guidelines for implementing the intelligent software tool. The insights gained from the research can inform strategic decision-making and demonstrate the applicability of advanced scheduling technologies like ACO hyper-heuristic schemes in solving complex optimization problems, aiding in the adoption of these technologies and methodologies in various domains.

This research is also important in the sense that it will contribute to the advancement of knowledge in the field by comparing the performance of two ACO hyper-heuristic schemes since existing works in the field have primarily focused on traditional scheduling methods or single heuristic or optimization techniques.