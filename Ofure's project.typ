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
The 21st century 