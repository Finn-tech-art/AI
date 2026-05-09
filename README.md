# Artificial Intelligence Task Repository

This repository is a collection of separate AI tasks rather than one single application. Each top-level folder represents a specific assignment, experiment, or problem-solving exercise. Together, they cover machine learning, search, constraint satisfaction, logic programming, and optimization.

Most of the work is presented as notebooks, so the repo reads like a practical lab book: load the data, define the problem, implement the method, and inspect the result.

## Repository Structure

| Folder | Task Area | What It Covers |
| --- | --- | --- |
| `MNIST-task1` | Machine Learning | Handwritten digit classification with TensorFlow on the MNIST dataset |
| `Constraint_Satisfaction-task2` | Constraint Satisfaction Problems | Map coloring for Australia and Nairobi sub-counties using explicit adjacency constraints |
| `N-QUEENS` | Local Search / Optimization | Hill-climbing solution and visualization for the N-Queens problem |
| `prolog` | Logic Programming | A Prolog family tree knowledge base with relationship inference rules |
| `search-optimization` | Search Algorithms | Breadth-First Search and Depth-First Search on a custom tree structure |

## What Each Task Is About

### `MNIST-task1`

This task is about building a simple neural network classifier for handwritten digits. It uses the standard MNIST dataset, which contains grayscale images of digits from 0 to 9.

What I have done in this folder:

- Loaded the MNIST dataset with TensorFlow.
- Inspected the training data shape to understand the dataset structure.
- Normalized the pixel values from `0-255` to `0-1`.
- Visualized a sample image with its label using Matplotlib.
- Converted the labels into one-hot encoded vectors.
- Built a `Sequential` model with `Flatten` and `Dense` layers.
- Compiled the model with the `adam` optimizer and `categorical_crossentropy` loss.
- Trained the model for 5 epochs.
- Evaluated the model on the test set and saved a notebook run showing about `97.55%` test accuracy.

Main file:

- `MNIST-task1/index.ipynb`

Dependencies:

- `tensorflow`
- `matplotlib`

### `Constraint_Satisfaction-task2`

This task is about solving map-coloring problems as constraint satisfaction problems. The idea is simple: neighboring regions cannot be assigned the same color. The notebook starts with a classic Australia map-coloring example and then extends the same reasoning to Nairobi sub-counties.

What I have done in this folder:

- Downloaded and used real geospatial boundary data for Australian states.
- Defined adjacency relationships as constraints between neighboring states.
- Solved the Australia map-coloring problem with `python-constraint`.
- Visualized the state adjacency graph with `networkx`.
- Produced a solved Australia map with valid region colors.
- Modeled Nairobi as a larger CSP with `17` sub-counties.
- Defined adjacency constraints for Nairobi sub-counties.
- Solved the Nairobi coloring problem using `4` colors.
- Included geographic visualization steps for the Nairobi result with `geopandas` and `matplotlib`.

This folder shows the symbolic AI side of the repository, where the focus is not learning from data but satisfying a set of formal rules.

Main file:

- `Constraint_Satisfaction-task2/index.ipynb`

Dependencies:

- `geopandas`
- `matplotlib`
- `python-constraint`
- `networkx`

### `N-QUEENS`

This task is about solving the N-Queens problem with hill climbing. The goal is to place `N` queens on a chessboard so that no two queens attack each other.

What I have done in this folder:

- Represented the board as one queen per column.
- Wrote helper functions to print the board and convert it to a matrix form.
- Implemented a conflict-count heuristic to measure how many queens attack each other.
- Implemented a hill-climbing search procedure.
- Added a Pygame visualization so the board can be displayed as the search runs.
- Included notebook experiments that measure success rates for different board sizes.

One useful detail in this notebook is that it does not hide the weakness of hill climbing. A saved run shows a failed search for `N=8`, and the later statistics also show mixed success rates. That makes the notebook a good demonstration of local optima and why random restarts or stronger strategies are often needed.

Main file:

- `N-QUEENS/n_queens_hill_climbing.ipynb`

Dependencies:

- `pygame`
- `numpy`
- `ipython`
- `jupyter`

### `prolog`

This folder is a logic programming task built in Prolog. Instead of training a model or traversing a search tree, the focus here is on facts and inference rules.

What I have done in this folder:

- Created family facts using `parent/2`.
- Added gender facts.
- Defined rules for `mother`, `father`, and `child`.
- Defined relationship rules for `sibling`, `grandfather`, `grandmother`, and `grandchild`.
- Defined extended family rules for `uncle`, `aunt`, and `cousin`.
- Added a folder-specific README explaining how to run the Prolog file with SWI-Prolog.

This task shows how relationships can be derived declaratively from a small knowledge base.

Main files:

- `prolog/family.pl`
- `prolog/README.md`

Requirements:

- SWI-Prolog `>= 9.0.0`
- VS Code and the Prolog extension are listed as the working environment in the folder requirements

### `search-optimization`

This folder focuses on classical search algorithms. Even though the folder name is broad, the current notebook specifically demonstrates Breadth-First Search and Depth-First Search on a custom tree.

What I have done in this folder:

- Built a custom `Node` class to represent a graph or tree structure.
- Created a small example tree manually.
- Visualized the tree with `networkx` and `matplotlib`.
- Implemented BFS using a queue with `collections.deque`.
- Implemented DFS using a stack.
- Included a path-search example toward a goal node.

This task is a straightforward foundation exercise in search, useful for understanding how uninformed traversal strategies behave before moving to more advanced search or optimization methods.

Main file:

- `search-optimization/BFS.ipynb`

Dependencies:

- `networkx`
- `matplotlib`
- Python collections are used in the notebook through the standard library `collections` module

## How To Run The Repository

Because each folder is its own task, there is no single installation command for the whole repo. The easiest way to use this repository is to open the folder you want and install that folder's requirements.

For the notebook-based tasks:

```bash
pip install -r <folder>/requirements.txt
jupyter notebook
```

For the Prolog task:

```prolog
swipl -s prolog/family.pl
```

## Summary

This repository documents hands-on work across several core AI topics:

- supervised learning with MNIST
- symbolic reasoning through constraint satisfaction
- local search with hill climbing
- declarative logic programming in Prolog
- classical graph search with BFS and DFS

The main strength of the repository is that each folder is focused on one idea and shows the actual implementation work for that idea, rather than only describing it in theory.
