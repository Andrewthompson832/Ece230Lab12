# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name Riley Cowan, Andrew Thompson

## Summary
In this lab, we learned how to design and implement state machines using both One Hot and Binary encoding. We also saw how each method affects complexity, performance, and FPGA resource usage.

## Lab Questions
### Compare and contrast One Hot and Binary encodings
One Hot encoding uses one flip-flop per state, making it simple and fast but resource-heavy. Binary encoding uses fewer flip-flops but requires more complex logic to decode states.

### Which method did your team find easier, and why?
We found One Hot encoding easier because each state maps directly to a flip-flop, making it simpler to design and debug. It required less complex logic compared to Binary encoding.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
One Hot is better when speed and simplicity matter and there are enough FPGA resources available. Binary is better for larger designs where conserving flip-flops is important.
