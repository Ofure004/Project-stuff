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

 Although the interest in intelligent scheduling tools is on the rise, there exists a research gap in the exploration and comparative analysis of specific optimization techniques, such as Ant Colony Optimisation (ACO) hyper-heuristic schemes, for nurse scheduling. While ACO has been applied to various optimization problems, its application to nurse scheduling remains relatively unexplored. This project aims to bridge this gap by proposing an intelligent software tool that utilizes two distinct ant colony optimization hyper-heuristic schemes for nurse scheduling. Drawing inspiration from successful applications of similar approaches in related domains, this proposed solution seeks to demonstrate its efficacy in handling the intricate constraints of nurse rostering and addressing the specific challenges within the nurse scheduling domain

\

Over the years, various scheduling algorithms have been employed by researchers to solve this problem. These methods include Tabu Search (Burke, Kendall, & Soubeiga 2003), Variable Neighborhood Search (Bilgin et al., 2012), Simulated Annealing (Brusco & Jacobs, 1995), Ant Colony Optimization (Gutjahr, & Rauner, 2007), Branch-and-price Algorithm (Maenhout, & Vanhoucke, 2010), Harmony Search (Awadallah et al., 2013) and Scatter Search (Curtois & Berghe, 2010). A comprehensive analysis reveals that the existing works often fall short in effectively addressing the intricacies of nurse rostering problems, and whose main disadvantage lies in its high computational complexity which limits their application only to small size instances, and when attempted to be scaled, either cost too much computation, or have difficulty in constraint handling. Therefore, alternative optimization methods, namely heuristics and metaheuristics have been developed in order to find suboptimal solutions of good quality in a reasonable time. 
Existing works in this field have primarily focused on traditional scheduling methods or have explored single heuristic or metaheuristic approaches. The opportunity lies in the comparative evaluation of multiple ACO hyper-heuristic schemes, which has not been extensively addressed in the context of nurse scheduling. Methodologically, this study presents an opportunity to fill this gap by rigorously comparing the performance of distinct ACO hyper-heuristic schemes in the context of nurse scheduling.


\


The hypothesis of this study is that the comparative analysis of two ACO hyper-heuristic schemes will reveal significant differences in their effectiveness for nurse scheduling. This approach is significant as it aims to provide empirical evidence to support the selection of the most suitable ACO hyper-heuristic scheme for nurse scheduling, thereby improving the efficiency and fairness of the scheduling process. In summary, this research seeks to address the existing gaps in nurse scheduling methodologies and to contribute to the advancement of intelligent software tools for nurse scheduling, ultimately enhancing both staff satisfaction and the quality of patient care.




