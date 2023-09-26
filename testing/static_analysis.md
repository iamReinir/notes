# Static techniques

Oppose to **Dynamic testing** - testing with working code, **Static testing** involves examining the software work products. Dynamic testing can only be applied to code, wite Static testing can be used on both code and other documents.

- Reviews
- Static analysis

The use of static testing on software work products has various advantages:

- Static testing can start early in the life cycle, early feedback on quality issues can be established, e.g. an early validation of user requirements and not just late in the life cycle during acceptance testing.
- By detecting defects at an early stage, rework costs are most often relatively low and thus a cheap improvement of the quality of software products can be achived.
- Rework effort is subtantially reduced. Development productivity figures are likely to increase.
- The evaluation by a team has the additional advantage that there is an exchange of information between the participants.
- An increased awareness of quality issues.

## Review

## Static Analysis

- Static analysis is performed on requirements, design or code without actually executing the software artifact being examined.
- Static analysis is ideally performed before of formal reviews
- Static analysis is unrelated to dynamic properties of the requirements, design and code, such as test coverage.
- The goal of static analysis is to find defects, whether or not they may cause failures. As with reviews, static analysis finds defects rather than failures.

For static analysis there are many tools, and most of them focus on software code. Static analysis tools are typically used by developers before, and sometimes during, component and integration testing and by designers during software modeling. The tools can show not only structural attributes (code metrics), such as depth of nesting or cyclomatic number and check against coding standards, but also graphic depictions of control flow, data relationships and the number of distinct paths from one line of code to another.

### Coding standards

### Code metrics

When performing static analysis, information is usually calculated about structural attributes of the code like comment frequency, depth of nesting, cyclomatic complexity and line count of code.

Complexity metrics identifying high risk, complex areas.

**Cyclomatic complexity** is based on the number of decisions in a program.

#### Control flow

In computer science, control flow (or flow of control) is the order in which individual statements, instructions or function calls of an imperative program are executed or evaluated. The emphasis on explicit control flow distinguishes an imperative programming language from a declarative programming language.

The control flow structure addresses the sequence in which the instructions are executed. This aspect of structure reflects the iterations and loops in the program's design.

Control flow analysis can be used to identify unreachable code. In fact many of the code metrics relate to control flow structure e.g. number of nested levels or cyclomatic complexity.

#### Data flow

Data flow structure follows the trail of data items as it is accessed and modified by the code. Many times, the transactions applied to data are more complex than the instructions that implement them. Defect can be found such as referencing an variable with undefined value and unused variables.
