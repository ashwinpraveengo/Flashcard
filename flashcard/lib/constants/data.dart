import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';





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
              question: r"\text{What are the multiplicative and additive identities of rational numbers?}",
              answer: r"\text{Additive identity: 0, Multiplicative identity: 1}",
            ),
            Flashcard(
              question: r"\text{Write the additive inverse of} \(\frac{19}{-6}\) \text{and} \(-\frac{2}{3}\)",
              answer: r"\text{Additive inverse of} \frac{19}{-6}\): \(\frac{19}{6}\), \text{Additive inverse of} \(-\frac{2}{3}\): \(\frac{2}{3}\)",
            ),
          ],
        ),
        Chapter(
          name: "Exponents And Powers",
          flashcards: [
            Flashcard(
              question: r"\text{Provide a general question about exponents and powers.}",
              answer: r"\text{Explore the concept of exponents and powers in mathematical operations.}",
            ),
            Flashcard(
              question: r"\text{Another general question about exponents and powers.}",
              answer: r"\text{Discuss the significance of exponents in real-world applications.}",
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
              question: r"\text{Explain the concepts of force and pressure.}",
              answer: r"\text{Force and pressure are fundamental concepts in physics, with force being a push or pull, and pressure being the force applied per unit area.}",
            ),
            Flashcard(
              question: r"\text{Define combustion and its importance.}",
              answer: r"\text{Combustion is a chemical process involving the reaction of a substance with oxygen, often accompanied by the release of heat and light. Discuss its significance in various contexts.}",
            ),
          ],
        ),
        Chapter(
          name: "Chemistry",
          flashcards: [
            Flashcard(
              question: r"\text{Describe the structure and function of the cell membrane.}",
              answer: r"\text{The cell membrane is a vital component of cell structure, regulating the passage of substances. Explain its composition and role in cellular processes.}",
            ),
            Flashcard(
              question: r"\text{Another question about a chemistry topic.}",
              answer: r"\text{Provide information about a specific aspect of chemistry.}",
            ),
          ],
        ),
        Chapter(
          name: "Biology",
          flashcards: [
            Flashcard(
              question: r"\text{Explore a topic related to biology.}",
              answer: r"\text{Discuss a specific biological concept or process.}",
            ),
            Flashcard(
              question: r"\text{Another biology-related question.}",
              answer: r"\text{Provide information about a particular aspect of biology.}",
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
              question: r"\text{Discuss the importance and management of resources.}",
              answer: r"\text{Explore how resources are crucial for human societies and the strategies for sustainable resource management.}",
            ),
            Flashcard(
              question: r"\text{Another question about resources.}",
              answer: r"\text{Provide information about a specific type of resource and its significance.}",
            ),
          ],
        ),
        Chapter(
          name: "Social development",
          flashcards: [
            Flashcard(
              question: r"\text{Explore a topic related to social development.}",
              answer: r"\text{Discuss the factors influencing social development and their impact on communities.}",
            ),
            Flashcard(
              question: r"\text{Another question about social development.}",
              answer: r"\text{Provide information about a specific aspect of social development.}",
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
              question: r"\text{What is coordinate geometry?}",
              answer: r"\text{Study of geometry using coordinates.}",
            ),
            Flashcard(
              question: r"\text{What are coordinates?}",
              answer: r"\text{A set of values defining a point in space.}",
            ),
          ],
        ),
        Chapter(
          name: "Mensuration",
          flashcards: [
            Flashcard(
              question: r"\text{What is mensuration?}",
              answer: r"\text{Measurement of geometric figures.}",
            ),
            Flashcard(
              question: r"\text{Give a mensuration formula.}",
              answer: r"\text{Area of a circle:} \(\pi r^2\).",
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
              question: r"\text{What is force?}",
              answer: r"\text{A push or pull on an object.}",
            ),
            Flashcard(
              question: r"\text{What is pressure?}",
              answer: r"\text{Force per unit area.}",
            ),
          ],
        ),
        Chapter(
          name: "Chemistry",
          flashcards: [
            Flashcard(
              question: r"\text{What is a chemical reaction?}",
              answer: r"\text{Process where substances change into new ones.}",
            ),
            Flashcard(
              question: r"\text{What is an acid?}",
              answer: r"\text{A substance with a pH less than 7.}",
            ),
          ],
        ),
        Chapter(
          name: "Biology",
          flashcards: [
            Flashcard(
              question: r"\text{What is a cell?}",
              answer: r"\text{Basic unit of life.}",
            ),
            Flashcard(
              question: r"\text{What is photosynthesis?}",
              answer: r"\text{Process by which plants make food.}",
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
              question: r"\text{What is population growth?}",
              answer: r"\text{Increase in the number of people.}",
            ),
            Flashcard(
              question: r"\text{What is demography?}",
              answer: r"\text{Study of population statistics.}",
            ),
          ],
        ),
        Chapter(
          name: "Food Security",
          flashcards: [
            Flashcard(
              question: r"\text{What is food security?}",
              answer: r"\text{Access to safe, sufficient food.}",
            ),
            Flashcard(
              question: r"\text{Why is food security important?}",
              answer: r"\text{Ensures nutrition and well-being.}",
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
              question: r"\text{What is trigonometry?}",
              answer: r"\text{Study of triangles and angles.}",
            ),
            Flashcard(
              question: r"\text{What is a trigonometric ratio?}",
              answer: r"\text{Ratio of sides in a right triangle.}",
            ),
          ],
        ),
        Chapter(
          name: "Statistics",
          flashcards: [
            Flashcard(
              question: r"\text{What is statistics?}",
              answer: r"\text{Science of data collection and analysis.}",
            ),
            Flashcard(
              question: r"\text{What is the mean?}",
              answer: r"\text{Average of a set of values.}",
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
              question: r"\text{What is energy?}",
              answer: r"\text{Capacity to do work.}",
            ),
            Flashcard(
              question: r"\text{What is motion?}",
              answer: r"\text{Change in position over time.}",
            ),
          ],
        ),
        Chapter(
          name: "Chemistry",
          flashcards: [
            Flashcard(
              question: r"\text{What is an element?}",
              answer: r"\text{A pure substance with only one type of atom.}",
            ),
            Flashcard(
              question: r"\text{What is a compound?}",
              answer: r"\text{A substance formed from two or more elements.}",
            ),
          ],
        ),
        Chapter(
          name: "Biology",
          flashcards: [
            Flashcard(
              question: r"\text{What is DNA?}",
              answer: r"\text{Carrier of genetic information.}",
            ),
            Flashcard(
              question: r"\text{What is evolution?}",
              answer: r"\text{Change in species over time.}",
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
              question: r"\text{What is migration?}",
              answer: r"\text{Movement of people from one place to another.}",
            ),
            Flashcard(
              question: r"\text{What is birth rate?}",
              answer: r"\text{Number of births per 1,000 people per year.}",
            ),
          ],
        ),
        Chapter(
          name: "Food Security",
          flashcards: [
            Flashcard(
              question: r"\text{What is malnutrition?}",
              answer: r"\text{Lack of proper nutrition.}",
            ),
            Flashcard(
              question: r"\text{What is food scarcity?}",
              answer: r"\text{Insufficient supply of food.}",
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
              question: r"\text{What does the heart do?}",
              answer: r"\text{Pumps blood, supplying oxygen and nutrients.}",
            ),
            Flashcard(
              question: r"\text{What is the brain's role?}",
              answer: r"\text{Controls bodily functions and processes.}",
            ),
          ],
        ),
        Chapter(
          name: "Genetics",
          flashcards: [
            Flashcard(
              question: r"\text{What is a genetic mutation?}",
              answer: r"\text{Change in DNA sequence affecting traits.}",
            ),
            Flashcard(
              question: r"\text{What is genetic inheritance?}",
              answer: r"\text{Passing of traits from parents to offspring.}",
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
              question: r"\text{What are the stages of cellular respiration?}",
              answer: r"\text{Glycolysis, Krebs cycle, oxidative phosphorylation.}",
            ),
            Flashcard(
              question: r"\text{What is ATP?}",
              answer: r"\text{Energy currency of the cell.}",
            ),
          ],
        ),
        Chapter(
          name: "Enzymes",
          flashcards: [
            Flashcard(
              question: r"\text{What are enzymes?}",
              answer: r"\text{Biological catalysts speeding up reactions.}",
            ),
            Flashcard(
              question: r"\text{What affects enzyme activity?}",
              answer: r"\text{Temperature, pH, substrate concentration.}",
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
              question: r"\text{What are microbial diseases?}",
              answer: r"\text{Diseases caused by microorganisms.}",
            ),
            Flashcard(
              question: r"\text{What is antibiotic resistance?}",
              answer: r"\text{Microorganisms' resistance to antibiotics.}",
            ),
          ],
        ),
        Chapter(
          name: "Immunology",
          flashcards: [
            Flashcard(
              question: r"\text{What is the immune system?}",
              answer: r"\text{System including antibodies and white blood cells.}",
            ),
            Flashcard(
              question: r"\text{What is vaccination?}",
              answer: r"\text{Stimulating immunity to prevent diseases.}",
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
              question: r"\text{What are Newton's laws?}",
              answer: r"\text{Three laws of motion describing forces and motion.}",
            ),
            Flashcard(
              question: r"\text{What is work and energy?}",
              answer: r"\text{Work is force applied over distance; energy is its capacity.}",
            ),
          ],
        ),
        Chapter(
          name: "Optics",
          flashcards: [
            Flashcard(
              question: r"\text{What are the laws of reflection?}",
              answer: r"\text{Angle of incidence equals angle of reflection.}",
            ),
            Flashcard(
              question: r"\text{What is total internal reflection?}",
              answer: r"\text{Light reflects completely inside a medium.}",
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
              question: r"\text{What are matrix operations?}",
              answer: r"\text{Addition, multiplication, determinants of matrices.}",
            ),
            Flashcard(
              question: r"\text{What are eigenvalues and eigenvectors?}",
              answer: r"\text{Values and vectors related to linear transformations.}",
            ),
          ],
        ),
        Chapter(
          name: "Differential Equations",
          flashcards: [
            Flashcard(
              question: r"\text{What are ordinary differential equations?}",
              answer: r"\text{Equations involving functions and their derivatives.}",
            ),
            Flashcard(
              question: r"\text{What are solution techniques for differential equations?}",
              answer: r"\text{Separation of variables, integrating factors.}",
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
              question: r"\text{What are linked lists?}",
              answer: r"\text{Data structures with nodes pointing to each other.}",
            ),
            Flashcard(
              question: r"\text{What are binary trees?}",
              answer: r"\text{Tree structures with nodes having at most two children.}",
            ),
          ],
        ),
        Chapter(
          name: "Algorithms",
          flashcards: [
            Flashcard(
              question: r"\text{What are sorting algorithms?}",
              answer: r"\text{Methods to arrange data in order.}",
            ),
            Flashcard(
              question: r"\text{What is dynamic programming?}",
              answer: r"\text{Technique for solving complex problems by breaking them down.}",
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
              question: r"\text{What is the accounting equation?}",
              answer: r"\text{Assets = Liabilities + Equity.}",
            ),
            Flashcard(
              question: r"\text{What is accrual accounting?}",
              answer: r"\text{Recognizes revenue and expenses when incurred.}",
            ),
          ],
        ),
        Chapter(
          name: "Cost Accounting",
          flashcards: [
            Flashcard(
              question: r"\text{What is cost?}",
              answer: r"\text{Expenses related to producing goods or services.}",
            ),
            Flashcard(
              question: r"\text{What are cost accounting methods?}",
              answer: r"\text{Job costing and process costing.}",
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
              question: r"\text{What makes a successful entrepreneur?}",
              answer: r"\text{Qualities like innovation and risk-taking.}",
            ),
            Flashcard(
              question: r"\text{What is business planning?}",
              answer: r"\text{Steps for market analysis and financial planning.}",
            ),
          ],
        ),
        Chapter(
          name: "Marketing Management",
          flashcards: [
            Flashcard(
              question: r"\text{What is the marketing mix?}",
              answer: r"\text{Product, price, place, promotion.}",
            ),
            Flashcard(
              question: r"\text{What is market segmentation?}",
              answer: r"\text{Dividing a market into distinct groups.}",
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
              question: r"\text{What is supply and demand?}",
              answer: r"\text{Principles affecting market equilibrium.}",
            ),
            Flashcard(
              question: r"\text{What is elasticity of demand?}",
              answer: r"\text{Sensitivity of demand to price changes.}",
            ),
          ],
        ),
        Chapter(
          name: "Macroeconomics",
          flashcards: [
            Flashcard(
              question: r"\text{What is GDP?}",
              answer: r"\text{Gross Domestic Product: total economic output.}",
            ),
            Flashcard(
              question: r"\text{What is fiscal policy?}",
              answer: r"\text{Government spending and taxation strategies.}",
            ),
          ],
        ),
      ],
    ),
  ],
),


];



