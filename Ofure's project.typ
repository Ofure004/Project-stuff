#set page(
  paper: "a4",
  margin: (x:2cm, y:2cm)
)

#set text(
  font: "Times New Roman",
  size: 12pt,
  hyphenate: false,
)

#set par(
  leading: 1.5em,
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

#set par(
   justify: true,
)

#set page(
  numbering : "i"
)

#align(center, [= CERTIFICATION])\
I hereby certify that this project, was carried out by Ehiremhen Ofure FAVOUR in the Department of Computer and Information Sciences, College of Science and Technology, Covenant University, Ogun State, Nigeria, under my supervision.

#pagebreak()

#align(center, [= DEDICATION])\
...

#pagebreak()

#align(center, [= ACKNOWLEDGEMENTS])\
...

#pagebreak(weak:true)

#set page(
  numbering : "1"
)

#counter(page).update(1)

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

*Although the interest in intelligent scheduling tools is on the rise, there exists a research gap in the exploration and comparative analysis of specific optimization techniques, such as Ant Colony Optimisation (ACO) hyper-heuristic schemes, for nurse scheduling. While ACO has been applied to various optimization problems, its application to nurse scheduling remains relatively unexplored. This project aims to bridge this gap by proposing an intelligent software tool that utilizes two distinct ant colony optimization hyper-heuristic schemes for nurse scheduling. Drawing inspiration from successful applications of similar approaches in related domains, this proposed solution seeks to demonstrate its efficacy in handling the intricate constraints of nurse rostering and addressing the specific challenges within the nurse scheduling domain.*(change to statement of problem)

\

Over the years, various scheduling algorithms have been employed by researchers to solve this problem. These methods include Tabu Search (Burke, Kendall, & Soubeiga 2003), Variable Neighborhood Search (Bilgin et al., 2012), Simulated Annealing (Brusco & Jacobs, 1995), Ant Colony Optimization (Gutjahr, & Rauner, 2007), Branch-and-price Algorithm (Maenhout, & Vanhoucke, 2010), Harmony Search (Awadallah et al., 2013) and Scatter Search (Curtois & Berghe, 2010). A comprehensive analysis reveals that the existing works often fall short in effectively addressing the intricacies of nurse rostering problems, and whose main disadvantage lies in its high computational complexity which limits their application only to small size instances, and when attempted to be scaled, either cost too much computation, or have difficulty in constraint handling. Therefore, alternative optimization methods, namely heuristics and metaheuristics have been developed in order to find suboptimal solutions of good quality in a reasonable time. 
Existing works in this field have primarily focused on traditional scheduling methods or have explored single heuristic or metaheuristic approaches. The opportunity lies in the comparative evaluation of multiple ACO hyper-heuristic schemes, which has not been extensively addressed in the context of nurse scheduling. Methodologically, this study presents an opportunity to fill this gap by rigorously comparing the performance of distinct ACO hyper-heuristic schemes in the context of nurse scheduling.

\


The hypothesis of this study is that the comparative analysis of two ACO hyper-heuristic schemes will reveal significant differences in their effectiveness for nurse scheduling. This approach is significant as it aims to provide empirical evidence to support the selection of the most suitable ACO hyper-heuristic scheme for nurse scheduling, thereby improving the efficiency and fairness of the scheduling process. In summary, this research seeks to address the existing gaps in nurse scheduling methodologies and to contribute to the advancement of intelligent software tools for nurse scheduling, ultimately enhancing both staff satisfaction and the quality of patient care.

\

= 1.2 STATEMENT OF THE PROBLEM
\

Although the interest in intelligent scheduling tools is on the rise, there exists a research gap in the exploration and comparative analysis of specific optimization techniques, such as Ant Colony Optimisation (ACO) hyper-heuristic schemes, for nurse scheduling. While ACO has been applied to various optimization problems, its application to nurse scheduling remains relatively unexplored. This project aims to bridge this gap by proposing an intelligent software tool that utilizes two distinct ant colony optimization hyper-heuristic schemes for nurse scheduling. Drawing inspiration from successful applications of similar approaches in related domains, this proposed solution seeks to demonstrate its efficacy in handling the intricate constraints of nurse rostering and addressing the specific challenges within the nurse scheduling domain.

\

To address the identified research gap, this study proposes an innovative solution through a comparative analysis of ACO hyper-heuristic schemes. By leveraging insights gained from related domains and successful applications of similar approaches, the research aims to unveil the nuanced performance differences between the identified ACO hyper-heuristic schemes, providing empirical evidence to support the selection of the most suitable ACO hyper-heuristic scheme for nurse scheduling. The objective is to develop an intelligent software tool specifically tailored for nurse scheduling, leveraging two different variations of the Ant Colony Optimization algorithm, in order to juxtapose the results gotten from both of them and prove which is best suited for the problem, thereby enhancing adaptability and efficiency within hospital settings. Through this exploration, the study seeks to contribute valuable insights and advancements that can significantly improve patient care, staff satisfaction, and the overall operational efficiency of healthcare institutions.

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
#pagebreak()


#align(center, [
  = CHAPTER TWO
  \
  = LITERATURE REVIEW
]) \

== 2.1 PREAMBLE
\
As the demand for quality healthcare services continues to rise, the need for intelligent software tools to streamline and optimize nurse scheduling processes becomes increasingly evident. 

\

This chapter delves into a comprehensive exploration of existing literature, theories, and methodologies relevant to nurse scheduling, with a specific focus on the application of Ant Colony Optimization (ACO) hyper-heuristic schemes. Through a comparative study of two ACO hyper-heuristic schemes, this research aims to advance scheduling practices in healthcare. By meticulously reviewing scholarly works, this chapter identifies gaps, challenges, and opportunities in nurse scheduling, paving the way for empirical investigation and evaluation of an intelligent software tool. 

\

== 2.2 REVIEW OF THE NURSE ROSTERING PROBLEM
\
The Nurse Rostering Problem (NRP), also known as the Nurse Scheduling Problem (NSP), was formally introduced in its current form in 1976 through parallel publications by Miller et al. and Warner (Chong et al., 2022). This problem involves assigning shifts and holidays to nurses while considering their individual preferences and constraints, along with the hospital's requirements. Various constraints, both hard and soft, shape the scheduling process, with hard constraints leading to invalid schedules if not met. Soft constraints, on the other hand, influence the quality of solutions without rendering them invalid. Coverage requirements, like, nurse demand per day, per skill, or per shift, are normally considered as hard constraints, while constraints that involve time requirements are usually regarded as soft constraints. Usually, nursing officers spend a substantial amount of time developing rosters especially when there are many staff requests, and where even more time can be consumed in handling ad-hoc changes to current duty rosters. Because of tedious and time-consuming manual scheduling, and for various other reasons, the nurse rostering problem (NRP) or the nurse scheduling problem (NSP) has attracted much research attention (Cheang, Li, Lim, & Rodriguez, 2003).

\

Nurse Rostering Problems is a complex combinatorial optimisation problem, under the variant of staff scheduling problems and is known to be NP-hard, indicating its computational challenge. This means that there are many thousands of possible schedules, and the staff members may even be unable to determine whether or not there exists a solution at all. As the number of nurses, days in the schedule, and constraints increase, the NRP experiences a combinatorial explosion that makes it challenging to produce an optimal solution (Nasiri and Rahvar, 2017).

\

Hospitals typically operate with three distinct work shifts—day, evening, and night—each spanning 7-9 hours, depending on local regulations. For instance, some hospitals implement three equal time spans of 8 hours for each shift, while others have shifts of 7, 8 and 9 hours, adjusting workload distribution throughout the day. Various local rules and policies, such as minimum nurse staffing requirements per shift, limits on daily and weekly work hours, and specific skill requirements, serve as constraints. The primary objective is to devise a cost-effective nurse-to-shift assignment that adheres to these constraints, encompassing both hard and soft constraints. Hard constraints are non-negotiable conditions that must be satisfied for a feasible solution, whereas soft constraints, although not mandatory, incur penalties if violated. Given their incorporation as costs within the objective function, we predominantly prioritize addressing hard constraints over soft constraints. In real world nurse rostering settings, the problems are nearly always overconstrained, so, it is unlikely to find a single schedule that perfectly adheres to all of them. An objective function helps us choose the schedule that comes closest to achieving our desired outcomes and is usually based upon some criteria set by the hospital mamagement. Hospitals usually seek to optimize specific types of objective functions when solving the NSP. For instance, objective functions related to staff satisfaction and balanced workload have received major attention in recent years. The most common staff satisfaction objective functions are typically related to the maximization of nurses’ preferences, where each preference of a single nurse can be related to desirable working shifts and days off during the planning horizon (Otero et al., 2023).

\

The mechanisms and performance of the existing solution methodologies applied to the benchmark and real world NRPs can be classified into six categories namely heuristics,metaheuristics, hyperheuristics, mathematical optimization, matheuristics and hybrid approaches. Metaheuristics are the most common choice in addressing NRPs (Chong et al., 2022). Many heuristic approaches were straightforward automation of manual practices, which have been widely studied and documented (Jelinek & Kavois, 1992).

\

== 2.3 DEFINTION OF RELATED TERMS

\ 


- Roster: A roster is a plan or arrangement detailing the scheduling of nurses to particular shifts, considering numerous requirements and considerations. They may be subject to some constraints. It is the end product of an attempt to solve the Nurse Rostering Problem. Rosters typically include details such as the planning period (e.g., 28 days), shift types (day shift and night shift), the number of nurses involved, and specific shift timings (e.g., day shift from 07:00 to 15:00 and night shift from 15:00 to 23:00) (Václavík, Šůcha, & Hanzálek, 2016).
\

- Staffing: Staffing is essentially the allocation of nursing personnel to various shifts within a healthcare facility. It is a very critical component as it directly impacts patient care quality, staff satisfaction, and operational efficiency. Hospitals need to be staffed 24 hours a day over seven days a week (Simić, Simić, Milutinović, & Djordjević, 2014). It is usually based on various factors such as skill levels, qualifications, preferences, and constraints. Effective nurse staffing in hospitals goes beyond simply filling shifts, it's a strategic process that considers multiple factors to ensure optimal patient care, nurse satisfaction, and efficient resource allocation.
\

- Shifts: These are specific work periods assigned to nurses in a hospital. They refer to the designated periods of time during which nurses are scheduled to work.It coincides with peak patient activity and administrative tasks.There are commonly three different nursing shift schedules; day shift, evening shift and night shift. Day shifts typically spans the hours of early morning to late afternoon, allowing nurses to work during regular business hours. They vary from 8 to 12 hours, typically running from early morning to late afternoon. This could mean working three 12-hour shifts or four 10-hour shifts per week, depending on the schedule (“Understanding the Different Types of Nursing Shifts | CareerStaff,” 2022). Evening shifts cover the later part of the day, occuring in the late afternoon or early evening and extending into the night. It is usually an 8-hour shift, Mondays to Fridays between 3-5pm, specific times can vary based on the facility. Nurses on these shifts handle patient care during the day-to-night transition, including admissions, discharges, and ongoing needs. Night shifts handle patient care through the night, typically starting around 11 pm and ending around 7 am. There are also 12-hour shifts, which are between 7pm-7am ensure continuous monitoring and care, especially in critical situations.These shifts are crucial in critical care units like intensive care where patients require constant monitoring.
\

- Planning Period: This refers to the timeframe for which a nurse staffing schedule is created. It refers to the period of time nurses are assigned to specific shifts. It may be daily, weekly, monthly, quarterly, or annually, depending on the specific needs of the organization or project.
\


- Constraints: Constraints refer to the rules and limitations that must be considered when creating nurse schedules. They ensure that the schedules are feasible, fair, efficient, and and legally compliant. They can abe broadly categorized into two main types; Soft and Hard constraints.
\


- Scheduling : Scheduling refers to the process of assigning specific shifts to individual nurses over a specified period, typically covering days, weeks, or months,  while meeting established constraints and requirements. Its goal is to create effective schedules that ensure adequate coverage, meet operational demands, and take into consideration variables like nurse preferences, skills, and availability in addition to limitations like necessary staffing levels, restrictions on the number of consecutive workdays, and a fair distribution of the workload. Effective scheduling in nurse rostering plays a vital role in ensuring a well-functioning healthcare system by promoting nurse satisfaction and patient safety.
\



== 2.4 REVIEW OF RELEVANT CONCEPTS
\

=== 2.4.1 #underline[*HYPERHEURISTICS*]
\

According to Cowling et. al(2001), hyperheuristics can be defined as an approach that operates at a higher level of abstraction than metaheuristics and manages the choice of which low-level heuristic method should be applied at any given time, depending upon the characteristics of the region of the solution space currently under exploration. The implementation of hyperheuristics search within a search space of heuristics as opposed to heuristics and meta heuristics that search within a search space of problem solutions. They are, as one can say, a "heuristic which chooses heuristics"(Soubeiga, 2003).
\

They aim at solving hard computational search by working on a set of heuristics to automate the process of selecting, combining, generating or adapting several simpler heuristics (or components of such heuristics). When using hyperheuristic, we are attempting to find the right method or sequence of heuristics in a given situation rather than trying to solve a problem directly. Instead, it selects at each step of the solution process the most promising simple low-level heuristic (or combination of heuristics) which is potentially able to im- prove the solution. On the other hand, if there is no improvement, i.e., a locally optimal solution is found, the hyperheuristic diversifies the search to another area of the solution space by selecting appropriate heuristics from the given set (Chakhlevitch & Cowling, 2008). Hyperheuristics aim at reducing the amount of domain knowledge in the search methodology, such that they can function without the need for in-depth understanding of specific low-level heuristics or the intricate workings of the problem's objective function, except for the outcome it produces. Their emphasis is on grasping the direction of the optimization process (maximization or minimization) and evaluating the values of one or more objective functions.(Chakhlevitch & Cowling, 2008).

\

=== 2.4.2 #underline[*METAHEURISTICS*]
\
According to Almufti et al.(2023), Metaheuristics refer to a higher level of heuristics that function as "master strategies that direct and modify other heuristics to produce solutions beyond those that are typically generated in a quest for local optimality". They attempt to find the best solution out of all possible solutions of an optimization problem. 

Metaheuristics can often find good solutions with less computational effort than optimization algorithms, iterative methods, or simple heuristics (Blum & Roli, 2003). They are especially used for solving sophisticated optimization problems like NP-Hard problems. Metaheuristics don't make sure that the optimal solution for a problem is given, it conducts a partial search on the solution space, and the evaluation of the results is based on a set of defined variables or an objective function. Metaheuristics may frequently identify good solutions in combinatorial optimization with less computing work than optimization algorithms, iterative techniques, or basic heuristics since they search through a vast range of viable alternatives. Because of this, they are effective strategies for solving optimization issue (Sadeeq etal., 2021). They are classified into three; Local Search Metaheuristics(Simulated Annealing, Tabu Search, Viable Neighbourhood search), Constructive Metaheuristics (Ant Colony Optimization, Large Neighbourhood search), Population Based Metaheuristic(Evolutionary Algorithms). 
\

=== 2.4.2 #underline[*ANT COLONY OPTIMIZATION *]
\

First proposed by Dorigo(1992), the Ant Colony Optimization algorithm is an umbrella term for a set of related constructive metaheuristics that imitate the foraging patterns of ants to generate solutions. Artificial ants are used to find optimal solutions to optimization problems. The algorithm is based on how real ants could manage to establish shortest path routes from their colony to feeding sources and back(Dorigo, Maniezzo, & Colorni, 1996). The domain of application of ACO algorithms is vast. In principle, ACO can be applied to anydiscrete optimization problem for which some solution construction mechanism can be conceived(Dorigo & Stützle, 2010).  

The Ant Colony Algorithm is a pheromone-based algorithm. This means, it is based upon real ants laying down pheromones to lead other ants to the nearest food source, the shorter the path is, the stronger the intensity of the phermone trail,and the more attractive the trail becomes, hence, the shorter and more optimal the path is. The process is characterized by a positive feedback loop, where the probability with which an ant chooses a path increases with the number of ants that previously chose the same path(Dorigo, Maniezzo, & Colorni, 1996). The first ACO algorithm to be proposed was AS(Ant System) by Dorigo(1996), and since then, multiple variations have been developed, like the Ant Colony System(Dorigo & Gambardella, 1997), Elitist Ant System(Sorin et al., 2008), Max-Min Ant System(Stutzle & Hooz, 2000), Rank-Based Ant System(ASrank), Parallelant Colony optimization, Continuous Orthogonal Ant Colony, Recursive Ant Colony Optimization(Gupta, Gupta, Arora, & Shankar, 2012). This paper will be focusing on just two of these variations. It will be comparing the performance of the Ant System and the Ant Colony System on the Nurse Rostering Problem.

=== 2.4.2 #underline[*ANT COLONY SYSTEM*]
\
This is a prominent variation of the ACO algorithm family. Proposed by Dorigo and Gambardella(1997), it builds upon the core principles of ACO while introducing specific enhancements to improve performance. It is built upon its predecessor, the ant system, but it differs from it in three main aspects :
(i) the state transition rule provides a direct way to balance between exploration of new edges and exploitation of a priori and accumulated knowledge about the problem
(ii)the global updating rule is applied only to edges
which belong to the best ant tour
(iii) while ants construct a solution, a local pheromone-updating rule (local updating rule, for short) is applied to change the phermone level of the edges they are selecting (Dorigo and Gambardella,1997). The role of the local updating rule is to change the attractiveness of edges dynamically, so that when ants use an edge, it becomes slightly less appealing because some of its pheromone is lost. This helps ants utilize pheromone information better. Without local updating, ants would tend to explore only a small area around the best previous tour. The edge selection favours the shortest edges with the largest amount of pheromones, and only the ant that has the shortest tour at the end of each iteration is allowed to update the pheromone.

=== 2.4.2 #underline[*ANT SYSTEM*]
\
This is the first ACO algorithm to be proposed by Dorigo(1996). It is the foundational algorithm within the ACO family. It is the one upon which other variations of ACOs are built upon. It embodies the core principles of ACO like the artificial ants, which are based upon real ants, that explore the solution space of the optimization problem; pheromone trails, which lead the ants towards the more promising paths and helps determine which path is the shortest and more optimal route; stochastic or probablity-based decisions, which are influenced by pheromones and other factors, and the updating of these phermone trails based on the performance of all the ants that complete the tour. Although ant system was useful for discovering good or
optimal solutions for small TSP’s (up to 30 cities), the time required to find such results made it infeasible for larger problems(Dorigo and Gambardella,1997), this is why improvement on this algorithm was necessary, which gave rise to the variations of ACOs we have today.
 
\


== 2.5 MODEL DESCRIPTION









#pagebreak()

\

#align(center, [
  = References
]) \

Duka, E. (2015). NURSE SCHEDULING PROBLEM. European Scientific Journal, 2, 1857–7881. Retrieved from https://eujournal.org/index.php/esj/article/download/6481/6221.

Glass, C. A., & Knight, R. A. (2010). The nurse rostering problem: A critical appraisal of the problem structure. European Journal of Operational Research, 202(2), 379–389. https://doi.org/10.1016/j.ejor.2009.05.046.

Burke, E. K., De Causmaecker, P., Berghe, G. V., & Van Landeghem, H. (2004). The State of the Art of Nurse Rostering. Journal of Scheduling, 7(6), 441–499. https://doi.org/10.1023/b:josh.0000046076.75950.0b

Václavík, R., Šůcha, P., & Hanzálek, Z. (2016). Roster evaluation based on classifiers for the nurse rostering problem. Journal of Heuristics, 22(5), 667–697. https://doi.org/10.1007/s10732-016-9314-9

Jelinek, R. C., & Kavois, J. A. (1992). Nurse staffing and scheduling: past solutions and future directions. PubMed, 3(4), 75–82.

Simić, D., Simić, S., Milutinović, D., & Djordjević, J. (2014). CHALLENGES FOR NURSE ROSTERING PROBLEM AND OPPORTUNITIES IN HOSPITAL LOGISTICS. JOURNAL of MEDICAL INFORMATICS & TECHNOLOGIES, 23(1642-6037).

Understanding the Different Types of Nursing Shifts | CareerStaff. (2022, January 25). Retrieved from CareerStaff Unlimited website: https://www.careerstaff.com/clinician-life-blog/nursing/understanding-different-nursing-shifts/

Cowling, P., Kendall, G., Soubeiga, E.: A hyperheuristic approach to scheduling a sales summit. In: Burke, E., Erben, W. (eds.) PATAT 2000. LNCS, vol. 2079, pp. 176–190. Springer, Heidelberg (2001)

Soubeiga, E.: Development and application of hyperheuristics to personnel scheduling. PhD Thesis, Department of Computer Science, University of Nottingham, UK (2003)

Chakhlevitch, K., & Cowling, P. (2008). Hyperheuristics: Recent Developments. In C. Cotta, M. Sevaux, & K. Sörensen (Eds.), Adaptive and Multilevel Metaheuristics (pp. 3–29). Berlin, Heidelberg: Springer Berlin Heidelberg. https://doi.org/10.1007/9783540794387_1

E. K. Burke, G. Kendall, and E. Soubeiga, "A tabu-search hyperheuristic for timetabling and rostering," Journal of Heuristics, vol. 9, pp. 451-470, 2003.

B. Bilgin, P. De Causmaecker, B. Rossie, and G. V. Berghe, "Local search neighbourhoods for dealing with a novel nurse rostering model," Annals of Operations Research, vol. 194, pp. 33-57, 2012.

M. J. Brusco and L. W. Jacobs, "Cost analysis of alternative formulations for personnel scheduling in continuously operating organizations," European Journal of Operational Research, vol. 86, pp. 249-261, 1995.

W. J. Gutjahr and M. S. Rauner, "An ACO algorithm for a dynamic regional nurse-scheduling problem in Austria," Computers & Operations Research, vol. 34, pp. 642-666, 2007.

B. Maenhout and M. Vanhoucke, "Branching strategies in a branchand-price approach for a multiple objective nurse scheduling problem," Journal of Scheduling, vol. 13, pp. 77-93, 2010.

M. A. Awadallah, A. T. Khader, M. A. Al-Betar, and A. L. a. Bolaji, "Global best Harmony Search with a new pitch adjustment designed for Nurse Rostering," Journal of King Saud University-Computer and Information Sciences, vol. 25, pp. 145-162, 2013.

M. A. Awadallah, A. T. Khader, M. A. Al-Betar, and A. L. a. Bolaji, "Harmony search with greedy shuffle for nurse rostering," International Journal of Natural Computing Research (IJNCR), vol. 3, pp. 22-42, 2012

E. K. Burke, T. Curtois, R. Qu, and G. V. Berghe, "A scatter search methodology for the nurse rostering problem," Journal of the Operational Research Society, vol. 61, pp. 1667-1679, 2010

B. Cheang, H. Li, A. Lim, and B. Rodrigues, "Nurse rostering problems––a bibliographic survey," European Journal of Operational Research, vol. 151, pp. 447-460, 2003.

J.H. Oldenkamp, Quality in Fives: On the Analysis, Operationalization and Application of Nursing Schedule Quality, University of Groningen, 1996.


Almufti, S. M., Awaz Ahmad Shaban, Rasan Ismael Ali, & Dela, J. A. (2023). Overview of Metaheuristic Algorithms. Polaris Global Journal of Scholarly Research and Trends, 2(2), 10–32. https://doi.org/10.58429/pgjsrt.v2n2a144

Blum, C., & Roli, A. (2003). Metaheuristics in combinatorial optimization. ACM Computing Surveys, 35(3), 268–308. https://doi.org/10.1145/937503.937505

Sadeeq, H. T., Abdulazeez, A. M., Kako, N. A., Zebari, D. A., & Zeebaree, D. Q. (2021). A New Hybrid Methodfor Global Optimization Based on the Bird Mating Optimizer and the Differential Evolution. 2021 7thInternational Engineering Conference “Research & Innovation amid Global Pandemic" (IEC), 54–60.https://doi.org/10.1109/IEC52205.2021.9476147 

Dorigo, M., Maniezzo, V., & Colorni, A. (1996). Ant system: optimization by a colony of cooperating agents. IEEE Transactions on Systems, Man and Cybernetics, Part B (Cybernetics), 26(1), 29–41. https://doi.org/10.1109/3477.484436

Dorigo, M., & Stützle, T. (2010). Ant Colony Optimization: Overview and Recent Advances. Handbook of Metaheuristics, (781-3794), 227–263. https://doi.org/10.1007/978-1-4419-1665-5_8

Dorigo, M., & Gambardella, L. M. (1997). Ant colony system: a cooperative learning approach to the traveling salesman problem. IEEE Transactions on Evolutionary Computation, 1(1), 53–66. https://doi.org/10.1109/4235.585892

T. Stützle et H.H. Hoos, MAX MIN Ant System, Future Generation Computer Systems, volume 16, pages 889-914, 2000

Gupta, D. K., Gupta, J. P., Arora, Y., & Shankar, U. (2012). Recursive ant colony optimization: a new technique for the estimation of function parameters from geophysical field data. Near Surface Geophysics, 11(3), 325–340. https://doi.org/10.3997/1873-0604.2012062