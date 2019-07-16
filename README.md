# Parallel-NEC
Parallelized Version of Numerical Electromagnetics Code

The parallelized version of NEC given here is as per [1] where the two most time-consuming
steps in evaluating the response of a structure, viz., (i) computation of the interaction matrix
elements, and (ii) solution of the resultant matrix equation have been efficiently parallelized.
The subroutines responsible for LU decomposition (FACTR) and solution of matrix equation
(SOLVE) have been revised to work in a parallel environment.
This version distributes the interaction matrix among the available processors and the matrix
elements are locally and individually calculated by their respective processors. The final
system of linear equations is also solved using a parallel version of the Gauss-Doolittle
algorithm. In this way, the combined processing power and memory of several processors
working together as a cluster can be efficiently utilized. The code can automatically detect
the number of processors and hence exploit the available memory and computing resources.
The parallelized code is designed to run on distributed memory parallel supercomputers and
it can work on any system/cluster supporting conventional message passing parallel
environments such as MPI (Message Passing Interface) and PVM (Parallel Virtual Machine).
Since it is completely based on the original NEC code, the input files need not be changed
and the output format remains the same too.
