class Class {
  String name;
  List<Subject> subjects;

  Class({required this.name, required this.subjects});
}

class Subject {
  String name;
  List<Chapter> chapters;

  Subject({required this.name, required this.chapters});
}

class Chapter {
  String name;
  List<Flashcard> flashcards;

  Chapter({required this.name, required this.flashcards});
}

class Flashcard {
  String question;
  String answer;

  Flashcard({required this.question, required this.answer});
}

List<Class> classes = [
  Class(
      name: "Class 8",
      subjects: [
          Subject(
              name: "Maths",
              chapters: [
                  Chapter(
                      name: "Rational Numbers",
                      flashcards: [
                          Flashcard(
                              question: r"What are the multiplicative and additive identities of rational numbers?",
                              answer: r"Additive identity: 0, Multiplicative identity: 1"
                          ),
                          Flashcard(
                              question: r"Write the additive inverse of \( \frac{19}{-6} \) and \( -\frac{2}{3} \)",
                              answer: r"Additive inverse of \( \frac{19}{-6} \): \( \frac{19}{6} \), Additive inverse of \( -\frac{2}{3} \): \( \frac{2}{3} \)"
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Exponents And Powers",
                      flashcards: [
                          Flashcard(
                              question: r"Provide a general question about exponents and powers.",
                              answer: r"Explore the concept of exponents and powers in mathematical operations."
                          ),
                          Flashcard(
                              question: r"Another general question about exponents and powers.",
                              answer: r"Discuss the significance of exponents in real-world applications."
                          ),
                      ],
                  ),
              ],
          ),
          Subject(
              name: "Science",
              chapters: [
                  Chapter(
                      name: "Physics",
                      flashcards: [
                          Flashcard(
                              question: r"Explain the concepts of force and pressure.",
                              answer: r"Force and pressure are fundamental concepts in physics, with force being a push or pull, and pressure being the force applied per unit area."
                          ),
                          Flashcard(
                              question: r"Define combustion and its importance.",
                              answer: r"Combustion is a chemical process involving the reaction of a substance with oxygen, often accompanied by the release of heat and light. Discuss its significance in various contexts."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Chemistry",
                      flashcards: [
                          Flashcard(
                              question: r"Describe the structure and function of the cell membrane.",
                              answer: r"The cell membrane is a vital component of cell structure, regulating the passage of substances. Explain its composition and role in cellular processes."
                          ),
                          Flashcard(
                              question: r"Another question about a chemistry topic.",
                              answer: r"Provide information about a specific aspect of chemistry."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Biology",
                      flashcards: [
                          Flashcard(
                              question: r"Explore a topic related to biology.",
                              answer: r"Discuss a specific biological concept or process."
                          ),
                          Flashcard(
                              question: r"Another biology-related question.",
                              answer: r"Provide information about a particular aspect of biology."
                          ),
                      ],
                  ),
              ],
          ),
          Subject(
              name: "Social Science",
              chapters: [
                  Chapter(
                      name: "Resources",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss the importance and management of resources.",
                              answer: r"Explore how resources are crucial for human societies and the strategies for sustainable resource management."
                          ),
                          Flashcard(
                              question: r"Another question about resources.",
                              answer: r"Provide information about a specific type of resource and its significance."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Social development",
                      flashcards: [
                          Flashcard(
                              question: r"Explore a topic related to social development.",
                              answer: r"Discuss the factors influencing social development and their impact on communities."
                          ),
                          Flashcard(
                              question: r"Another question about social development.",
                              answer: r"Provide information about a specific aspect of social development."
                          ),
                      ],
                  ),
              ],
          ),
      ],
  ),
  Class(
      name: "Class 9",
      subjects: [
          Subject(
              name: "Maths",
              chapters: [
                  Chapter(
                      name: "Coordinate Geometry",
                      flashcards: [
                          Flashcard(
                              question: r"Provide a general question about coordinate geometry.",
                              answer: r"Discuss the fundamental principles of coordinate geometry and its applications."
                          ),
                          Flashcard(
                              question: r"Another question about coordinate geometry.",
                              answer: r"Explore the relationship between coordinates and geometric shapes in a coordinate plane."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Mensuration",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss a concept related to mensuration.",
                              answer: r"Explore a specific aspect of mensuration and its practical implications."
                          ),
                          Flashcard(
                              question: r"Another question about mensuration.",
                              answer: r"Provide information about a formula or concept in mensuration."
                          ),
                      ],
                  ),
              ],
          ),
          Subject(
              name: "Science",
              chapters: [
                  Chapter(
                      name: "Physics",
                      flashcards: [
                          Flashcard(
                              question: r"Explore a physics-related topic.",
                              answer: r"Discuss a specific concept or principle in physics."
                          ),
                          Flashcard(
                              question: r"Another question about physics.",
                              answer: r"Provide information about a phenomenon or principle in physics."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Chemistry",
                      flashcards: [
                          Flashcard(
                              question: r"Explore a topic related to chemistry.",
                              answer: r"Discuss a specific chemical reaction or concept in chemistry."
                          ),
                          Flashcard(
                              question: r"Another question about chemistry.",
                              answer: r"Provide information about a chemical process or principle."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Biology",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss a topic related to biology.",
                              answer: r"Explore a specific biological concept or process."
                          ),
                          Flashcard(
                              question: r"Another biology-related question.",
                              answer: r"Provide information about a particular aspect of biology."
                          ),
                      ],
                  ),
              ],
          ),
          Subject(
              name: "Social Science",
              chapters: [
                  Chapter(
                      name: "Population",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss the factors influencing population dynamics.",
                              answer: r"Explore the factors affecting population growth and decline and their social implications."
                          ),
                          Flashcard(
                              question: r"Another question about population.",
                              answer: r"Provide information about a specific demographic trend or issue."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Food Security",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss the concept of food security.",
                              answer: r"Explore the importance of food security and strategies for ensuring access to sufficient, safe, and nutritious food."
                          ),
                          Flashcard(
                              question: r"Another question about food security.",
                              answer: r"Provide information about a specific aspect of food security and its global significance."
                          ),
                      ],
                  ),
              ],
          ),
      ],
  ),
  Class(
      name: "Class 10",
      subjects: [
          Subject(
              name: "Maths",
              chapters: [
                  Chapter(
                      name: "Introduction to Trigonometry",
                      flashcards: [
                          Flashcard(
                              question: r"Provide a general question about trigonometry.",
                              answer: r"Discuss the fundamental principles of trigonometry and its applications in geometry and real-world scenarios."
                          ),
                          Flashcard(
                              question: r"Another question about trigonometry.",
                              answer: r"Explore the relationship between angles, sides, and trigonometric ratios in right-angled triangles."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Statistics",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss a concept related to statistics.",
                              answer: r"Explore a specific aspect of statistics and its applications in data analysis and interpretation."
                          ),
                          Flashcard(
                              question: r"Another question about statistics.",
                              answer: r"Provide information about a statistical measure or concept and its significance."
                          ),
                      ],
                  ),
              ],
          ),
          Subject(
              name: "Science",
              chapters: [
                  Chapter(
                      name: "Physics",
                      flashcards: [
                          Flashcard(
                              question: r"Explore a physics-related topic.",
                              answer: r"Discuss a specific concept or principle in physics."
                          ),
                          Flashcard(
                              question: r"Another question about physics.",
                              answer: r"Provide information about a phenomenon or principle in physics."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Chemistry",
                      flashcards: [
                          Flashcard(
                              question: r"Explore a topic related to chemistry.",
                              answer: r"Discuss a specific chemical reaction or concept in chemistry."
                          ),
                          Flashcard(
                              question: r"Another question about chemistry.",
                              answer: r"Provide information about a chemical process or principle."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Biology",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss a topic related to biology.",
                              answer: r"Explore a specific biological concept or process."
                          ),
                          Flashcard(
                              question: r"Another biology-related question.",
                              answer: r"Provide information about a particular aspect of biology."
                          ),
                      ],
                  ),
              ],
          ),
          Subject(
              name: "Social Science",
              chapters: [
                  Chapter(
                      name: "Population",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss the factors influencing population dynamics.",
                              answer: r"Explore the factors affecting population growth and decline and their social implications."
                          ),
                          Flashcard(
                              question: r"Another question about population.",
                              answer: r"Provide information about a specific demographic trend or issue."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Food Security",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss the concept of food security.",
                              answer: r"Explore the importance of food security and strategies for ensuring access to sufficient, safe, and nutritious food."
                          ),
                          Flashcard(
                              question: r"Another question about food security.",
                              answer: r"Provide information about a specific aspect of food security and its global significance."
                          ),
                      ],
                  ),
              ],
          ),
      ],
  ),
  Class(
      name: "Medical",
      subjects: [
          Subject(
              name: "Biology",
              chapters: [
                  Chapter(
                      name: "Human Anatomy",
                      flashcards: [
                          Flashcard(
                              question: r"Explain the function of the heart.",
                              answer: r"The heart pumps blood throughout the body, supplying oxygen and nutrients to cells and removing waste products."
                          ),
                          Flashcard(
                              question: r"Discuss the structure and function of the human brain.",
                              answer: r"Explore the anatomy of the brain and its role in controlling various bodily functions."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Genetics",
                      flashcards: [
                          Flashcard(
                              question: r"Define and explain the process of genetic mutation.",
                              answer: r"Genetic mutation is a change in the DNA sequence. Discuss its types and potential effects on organisms."
                          ),
                          Flashcard(
                              question: r"Explore the concept of genetic inheritance.",
                              answer: r"Discuss how traits are passed from one generation to the next through genetic inheritance."
                          ),
                      ],
                  ),
              ],
          ),
          Subject(
              name: "Biochemistry",
              chapters: [
                  Chapter(
                      name: "Cellular Respiration",
                      flashcards: [
                          Flashcard(
                              question: r"Explain the stages of cellular respiration.",
                              answer: r"Discuss glycolysis, the Krebs cycle, and oxidative phosphorylation in cellular respiration."
                          ),
                          Flashcard(
                              question: r"Discuss the importance of ATP in cellular processes.",
                              answer: r"ATP is the energy currency of the cell. Explore its role in various cellular activities."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Enzymes",
                      flashcards: [
                          Flashcard(
                              question: r"Define enzymes and their role in biological reactions.",
                              answer: r"Enzymes are biological catalysts. Discuss how they speed up chemical reactions in living organisms."
                          ),
                          Flashcard(
                              question: r"Explain factors affecting enzyme activity.",
                              answer: r"Discuss temperature, pH, and substrate concentration as factors influencing enzyme function."
                          ),
                      ],
                  ),
              ],
          ),
          Subject(
              name: "Microbiology",
              chapters: [
                  Chapter(
                      name: "Microbial Diseases",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss common microbial diseases and their causative agents.",
                              answer: r"Explore diseases caused by bacteria, viruses, and other microorganisms, and their impact on human health."
                          ),
                          Flashcard(
                              question: r"Explain the concept of antibiotic resistance.",
                              answer: r"Discuss how antibiotic resistance develops in microorganisms and its implications for healthcare."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Immunology",
                      flashcards: [
                          Flashcard(
                              question: r"Define the immune system and its components.",
                              answer: r"Discuss the roles of the immune system, including antibodies, white blood cells, and immunological memory."
                          ),
                          Flashcard(
                              question: r"Discuss the process of vaccination and its importance.",
                              answer: r"Explain how vaccines stimulate the immune system to protect against diseases and their role in public health."
                          ),
                      ],
                  ),
              ],
          ),
      ],
  ),

  Class(
      name: "Engineering",
      subjects: [
          Subject(
              name: "Physics",
              chapters: [
                  Chapter(
                      name: "Mechanics",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss Newton's laws of motion.",
                              answer: r"Explain Newton's three laws of motion and their significance in classical mechanics."
                          ),
                          Flashcard(
                              question: r"Explain the concept of work and energy.",
                              answer: r"Define work and energy and discuss their relationship, including kinetic and potential energy."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Optics",
                      flashcards: [
                          Flashcard(
                              question: r"Define and explain the laws of reflection.",
                              answer: r"Discuss the principles of reflection and the laws governing the reflection of light."
                          ),
                          Flashcard(
                              question: r"Discuss the phenomenon of total internal reflection.",
                              answer: r"Explain total internal reflection and its applications in optics."
                          ),
                      ],
                  ),
              ],
          ),
          Subject(
              name: "Mathematics",
              chapters: [
                  Chapter(
                      name: "Linear Algebra",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss matrix operations and determinants.",
                              answer: r"Explore matrix addition, multiplication, determinants, and their applications in linear algebra."
                          ),
                          Flashcard(
                              question: r"Define eigenvalues and eigenvectors.",
                              answer: r"Discuss eigenvalues and eigenvectors and their significance in linear transformations."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Differential Equations",
                      flashcards: [
                          Flashcard(
                              question: r"Explain the concept of ordinary differential equations.",
                              answer: r"Define ordinary differential equations and discuss their applications in modeling dynamic systems."
                          ),
                          Flashcard(
                              question: r"Discuss the solution techniques for differential equations.",
                              answer: r"Explore methods for solving differential equations, including separation of variables and integrating factors."
                          ),
                      ],
                  ),
              ],
          ),
          Subject(
              name: "Computer Science",
              chapters: [
                  Chapter(
                      name: "Data Structures",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss the concept of linked lists.",
                              answer: r"Explain linked lists as a data structure and their advantages and disadvantages."
                          ),
                          Flashcard(
                              question: r"Define and explain binary trees.",
                              answer: r"Define binary trees and discuss their properties and applications in computer science."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Algorithms",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss sorting algorithms.",
                              answer: r"Explore different sorting algorithms such as bubble sort, quicksort, and merge sort."
                          ),
                          Flashcard(
                              question: r"Define and discuss dynamic programming.",
                              answer: r"Explain the concept of dynamic programming and its applications in algorithm design."
                          ),
                      ],
                  ),
              ],
          ),
      ],
  ),

  Class(
      name: "Commerce",
      subjects: [
          Subject(
              name: "Accountancy",
              chapters: [
                  Chapter(
                      name: "Financial Accounting",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss the accounting equation.",
                              answer: r"Define the accounting equation and explain its components: assets, liabilities, and equity."
                          ),
                          Flashcard(
                              question: r"Explain the concept of accrual accounting.",
                              answer: r"Discuss accrual accounting and its contrast with cash accounting, emphasizing revenue and expense recognition."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Cost Accounting",
                      flashcards: [
                          Flashcard(
                              question: r"Define and discuss the concept of cost.",
                              answer: r"Explore different types of costs, including fixed costs, variable costs, and direct and indirect costs."
                          ),
                          Flashcard(
                              question: r"Discuss methods of cost accounting.",
                              answer: r"Explain job costing and process costing as methods of cost accounting and their applications in businesses."
                          ),
                      ],
                  ),
              ],
          ),
          Subject(
              name: "Business Studies",
              chapters: [
                  Chapter(
                      name: "Entrepreneurship",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss the characteristics of successful entrepreneurs.",
                              answer: r"Explore the qualities and traits that contribute to the success of entrepreneurs in business."
                          ),
                          Flashcard(
                              question: r"Explain the process of business planning.",
                              answer: r"Discuss the steps involved in business planning, including market analysis, financial planning, and risk assessment."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Marketing Management",
                      flashcards: [
                          Flashcard(
                              question: r"Define the marketing mix.",
                              answer: r"Explain the elements of the marketing mix: product, price, place, and promotion, and their role in marketing strategy."
                          ),
                          Flashcard(
                              question: r"Discuss market segmentation and targeting.",
                              answer: r"Explore the concepts of market segmentation and targeting in marketing management."
                          ),
                      ],
                  ),
              ],
          ),
          Subject(
              name: "Economics",
              chapters: [
                  Chapter(
                      name: "Microeconomics",
                      flashcards: [
                          Flashcard(
                              question: r"Define and discuss the concept of supply and demand.",
                              answer: r"Explore the economic principles of supply and demand and their impact on market equilibrium."
                          ),
                          Flashcard(
                              question: r"Discuss elasticity of demand.",
                              answer: r"Define and explain the concept of elasticity of demand and its importance in pricing strategies."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Macroeconomics",
                      flashcards: [
                          Flashcard(
                              question: r"Explain GDP and its components.",
                              answer: r"Define Gross Domestic Product (GDP) and discuss its components: consumption, investment, government spending, and net exports."
                          ),
                          Flashcard(
                              question: r"Discuss fiscal policy in macroeconomics.",
                              answer: r"Explore the role of fiscal policy in macroeconomics, including government spending and taxation."
                          ),
                      ],
                  ),
              ],
          ),
      ],
  ),

  Class(
      name: "NEET",
      subjects: [
          Subject(
              name: "Physics",
              chapters: [
                  Chapter(
                      name: "Mechanics",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss Newton's laws of motion.",
                              answer: r"Explain Newton's three laws of motion and their significance in classical mechanics."
                          ),
                          Flashcard(
                              question: r"Explain the concept of work and energy.",
                              answer: r"Define work and energy and discuss their relationship, including kinetic and potential energy."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Optics",
                      flashcards: [
                          Flashcard(
                              question: r"Define and explain the laws of reflection.",
                              answer: r"Discuss the principles of reflection and the laws governing the reflection of light."
                          ),
                          Flashcard(
                              question: r"Discuss the phenomenon of total internal reflection.",
                              answer: r"Explain total internal reflection and its applications in optics."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Electrostatics",
                      flashcards: [
                          Flashcard(
                              question: r"Define and discuss Coulomb's law.",
                              answer: r"Explain Coulomb's law and its application in calculating the electrostatic force between charged particles."
                          ),
                          Flashcard(
                              question: r"Discuss the concept of electric potential.",
                              answer: r"Define electric potential and explain its relationship with electric field and work done."
                          ),
                      ],
                  ),
              ],
          ),
          Subject(
              name: "Chemistry",
              chapters: [
                  Chapter(
                      name: "Organic Chemistry",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss the concept of isomerism in organic compounds.",
                              answer: r"Define and explain structural isomerism and stereoisomerism in organic chemistry."
                          ),
                          Flashcard(
                              question: r"Discuss the classification of organic compounds.",
                              answer: r"Explore the classification of organic compounds based on functional groups and their properties."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Chemical Kinetics",
                      flashcards: [
                          Flashcard(
                              question: r"Define chemical kinetics and reaction rate.",
                              answer: r"Discuss the study of chemical kinetics and the factors affecting the rate of chemical reactions."
                          ),
                          Flashcard(
                              question: r"Explain the concept of reaction mechanisms.",
                              answer: r"Define reaction mechanisms and discuss the steps involved in complex chemical reactions."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Thermodynamics",
                      flashcards: [
                          Flashcard(
                              question: r"Define and discuss the laws of thermodynamics.",
                              answer: r"Explain the laws of thermodynamics, including the first law (law of energy conservation) and the second law (law of entropy)."
                          ),
                          Flashcard(
                              question: r"Discuss the concept of enthalpy.",
                              answer: r"Define enthalpy and explain its significance in thermodynamic processes."
                          ),
                      ],
                  ),
              ],
          ),
          Subject(
              name: "Biology",
              chapters: [
                  Chapter(
                      name: "Genetics",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss Mendel's laws of inheritance.",
                              answer: r"Explain Mendel's laws, including the law of segregation and the law of independent assortment."
                          ),
                          Flashcard(
                              question: r"Explore genetic disorders.",
                              answer: r"Discuss common genetic disorders and their causes, symptoms, and inheritance patterns."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Human Physiology",
                      flashcards: [
                          Flashcard(
                              question: r"Explain the functioning of the human nervous system.",
                              answer: r"Discuss the structure and functions of the central nervous system, peripheral nervous system, and autonomic nervous system."
                          ),
                          Flashcard(
                              question: r"Explore the process of respiration in humans.",
                              answer: r"Define respiration and discuss the mechanisms of external and internal respiration in humans."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Ecology",
                      flashcards: [
                          Flashcard(
                              question: r"Define and discuss ecological concepts.",
                              answer: r"Explore ecological concepts such as ecosystems, food chains, and biodiversity."
                          ),
                          Flashcard(
                              question: r"Discuss human impact on the environment.",
                              answer: r"Examine the effects of human activities on the environment, including pollution, deforestation, and climate change."
                          ),
                      ],
                  ),
              ],
          ),
      ],
  ),

  Class(
      name: "JEE",
      subjects: [
          Subject(
              name: "Mathematics",
              chapters: [
                  Chapter(
                      name: "Calculus",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss the concept of limits in calculus.",
                              answer: r"A limit is the value that a function or sequence approaches as the input or index approaches some value."
                          ),
                          Flashcard(
                              question: r"Explore a specific application of calculus in real-world scenarios.",
                              answer: r"Discuss how calculus is applied to solve problems in various fields such as physics, engineering, or economics."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Algebra",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss a fundamental concept in algebra.",
                              answer: r"Explore a specific algebraic concept and its applications in mathematical problem-solving."
                          ),
                          Flashcard(
                              question: r"Explore the applications of algebra in geometry.",
                              answer: r"Discuss how algebraic principles are used to solve geometric problems and prove theorems."
                          ),
                      ],
                  ),
              ],
          ),
          Subject(
              name: "Physics",
              chapters: [
                  Chapter(
                      name: "Mechanics",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss the laws of motion in classical mechanics.",
                              answer: r"Explore Newton's laws of motion and their applications in understanding the motion of objects."
                          ),
                          Flashcard(
                              question: r"Explore the concept of work and energy in classical mechanics.",
                              answer: r"Discuss how the concepts of work and energy are used to analyze the motion of objects under the influence of forces."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Electromagnetism",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss the principles of electromagnetism.",
                              answer: r"Explore the fundamental principles of electromagnetism, including Coulomb's law and Gauss's law."
                          ),
                          Flashcard(
                              question: r"Explore the concept of electromagnetic induction.",
                              answer: r"Discuss Faraday's law of electromagnetic induction and its applications in generating electric currents."
                          ),
                      ],
                  ),
              ],
          ),
          Subject(
              name: "Chemistry",
              chapters: [
                  Chapter(
                      name: "Organic Chemistry",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss the structure and properties of organic compounds.",
                              answer: r"Explore the basic principles of organic chemistry, including the structure of organic compounds and their properties."
                          ),
                          Flashcard(
                              question: r"Discuss the reactions of alkanes and alkenes.",
                              answer: r"Explore the reactions of alkanes and alkenes, including combustion, addition reactions, and polymerization."
                          ),
                      ],
                  ),
                  Chapter(
                      name: "Physical Chemistry",
                      flashcards: [
                          Flashcard(
                              question: r"Discuss the laws of thermodynamics.",
                              answer: r"Explore the laws of thermodynamics, including the first law (conservation of energy) and the second law (entropy)."
                          ),
                          Flashcard(
                              question: r"Discuss the concept of chemical equilibrium.",
                              answer: r"Explore the concept of chemical equilibrium and how it is established in reversible reactions."
                          ),
                      ],
                  ),
              ],
          ),
      ],
  ),

];



