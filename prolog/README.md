# Family Tree Logic Project 

This project is a family tree knowledge base built using **Prolog**, a logic programming language. Unlike imperative languages (like Python or C++) where you provide step-by-step instructions, Prolog is **declarative**. You define a set of facts and rules, and the "engine" uses logical inference to answer questions.

## The Logic of the Tree 

In this project, we move from simple facts to complex derived relationships.

### 1. Facts (The Foundation)
We start with basic truths that cannot be broken down further:
*   **Parents:** Defining who the biological parents are (e.g., `parent(abraham, issac).`).
*   **Genders:** Defining individuals as `male` or `female`.

### 2. Rules (The Inference)
The power of this project lies in the rules that define "who is who to who" based on the facts above:
*   **Grandparents:** A person who is the parent of your parent.
*   **Siblings:** People who share the same parent.
*   **Uncles/Aunts:** The brothers or sisters of your parents.
*   **Cousins:** The children of your parents' siblings.

## How to Run the Program

1.  **Install SWI-Prolog:** Ensure the `swipl` executable is in your system path.
2.  **Load the File:** Open your terminal in the project folder and type:
    ```prolog
    swipl -s family.pl
3. Then ask a question:
    ```prolog
    ?- grandfather(abraham, Who).