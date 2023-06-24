#import "template.typ": *
#import "result.typ": result_page
#import "colors.typ": *
#import "division_abstract.typ" : abstract_page
#import "problem_title.typ" : problem_text
#import "description.typ" : descriptions
#import "details.typ" : *

#set page(flipped: true)

#show: project.with(
  title: "230622 모의대회 해설",
  authors: (
    "AlKon 2023",
  ),
  logo: "images/balloon.png"
)

#result_page()

#for (div_num, problems, d) in (
  ("3", div3_problems, div3_descriptions), 
  ("2", div2_problems, div2_descriptions), 
  ("1", div1_problems, div1_descriptions)) {
    
  abstract_page(
    division: div_num,
    problems: problems
  )
  
  for p in problems.enumerate() {
    let (idx, problem) = p
    let (number, title, diff, tier, tag) = problem
    problem_text(div_num + number, title, tag)
    descriptions(d.at(idx))
  }
}