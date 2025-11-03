# Basic VHDL Course — README  
*Course by VHDLwhiz*  
This repository contains the VHDL source & test-bench files used in the **Basic VHDL Course** by VHDLwhiz.
Below you’ll find a description of each file, and for each lesson a link to the corresponding YouTube video in the playlist.

---

## Files and Lesson Descriptions  

| # | File | Description | YouTube Video |
|---|------|-------------|--------------|
| 1 | `T01_HelloWorldTb.vhd` | Introductory testbench: print "Hello World" in simulation to verify setup. | [How to create your first VHDL program: Hello World!](https://www.youtube.com/watch?v=h4ZXge1BE80)  |
| 2 | `T02_WaitForTb.vhd` | Demonstrates the `wait for` statement (i.e., delaying simulation time) in VHDL. | [How to delay time in VHDL: Wait For](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=2) |
| 3 | `T03_LoopTb.vhd` | Shows how to use a general `loop` construct and `exit` in a testbench. | [How to use Loop and Exit in VHDL](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=3) |
| 4 | `T04_ForLoopTb.vhd` | Demonstrates the `for`-loop: iterating a fixed number of times. | [How to use a For-Loop in VHDL](https://www.youtube.com/watch?v=OjIHfYkQUYA)  |
| 5 | `T05_WhileLoopTb.vhd` | Introduces the `while`-loop construct in VHDL testbench context. | [How to use a While-Loop in VHDL](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=5) |
| 6 | `T06_SignalTb.vhd` | Explains usage of `signal` declarations, assignments and simple signal behaviour. | [How a Signal is different from a Variable in VHDL](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=6) |
| 7 | `T07_WaitOnUntilTb.vhd` | Demonstrates `wait on` and `wait until` statements for sensitivity control. | [How to use Wait On and Wait Until in VHDL](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=7) |
| 8 | `T08_If_else_Tb.vhd` | Shows `if … elsif … else` branching in VHDL processes. | [How to use conditional statements in VHDL: If-Then-Elsif-Else](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=8) |
| 9 | `T09_SensitivityProcessList_Tb.vhd` | Discusses process sensitivity lists and how they impact simulation behaviour. | [How to create a process with a Sensitivity List in VHDL](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=9) |
|10 | `T10_StdLogic_Tb.vhd` | Introduces the `std_logic` type: signal value resolution, logic levels, etc. | [How to use the most common VHDL type: std_logic](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=10) |
|11 | `T11_StdLogicVector_Tb.vhd` | Demonstrates `std_logic_vector`: vector signals, operations and testbench usage. | [How to create a signal vector in VHDL: std_logic_vector](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=11) |
|12 | `T12_SignedUnsigned_Tb.vhd` | Covers `signed` and `unsigned` types (arithmetic on bit-vectors) and conversions. | [How to use Signed and Unsigned in VHDL](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=12) |
|13 | `T13_ConcurrentProcs_Tb.vhd` | Explores concurrent statements vs sequential processes in VHDL. | [How to create a Concurrent Statement in VHDL](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=13) |
|14 | `T14_CaseWhen_Tb.vhd` | Demonstrates `case … when` statements (multi-way branching) in VHDL. | [How to use a Case-When statement in VHDL](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=14) |
|15 | `T15_Mux.vhd` | Implements a basic 2-to-1 multiplexer (design module). | [How to use Port Map instantiation in VHDL](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=15) |
|16 | `T16_GenericMux.vhd` / `T16_GenericMux_Tb.vhd` | Parameterised (generic) multiplexer design + its testbench. Shows use of generics. | [How to use Constants and Generic Map in VHDL](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=16) |
|17 | `T17_ClockedProcess_Tb.vhd` | Introduces synchronous logic: clocked processes, rising_edge, flip-flops. | [How to create a Clocked Process in VHDL](https://www.youtube.com/watch?v=z6Biw6xai1E)  |
|18 | `T18_Timer.vhd` / `T18_Timer_Tb.vhd` | Builds a timer module using clocked logic, demonstrates simulation time vs real-time. | [How to create a Timer in VHDL](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=18) |
|19 | `T19_Procedure_Tb.vhd` | Introduces procedures (sub-programs) in VHDL: code reuse and modularity. | [How to use a Procedure in VHDL](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=19) |
|20 | `T20_FiniteStateMachine_Tb.vhd` | Demonstrates a Finite State Machine (FSM) design and testbench (e.g., traffic-lights). | [How to create a Finite-State Machine in VHDL](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=20) |
|21 | `T21_Function_Tb.vhd` | Introduces functions (pure) in VHDL: returning computed values, modular code. | [How to use a Function in VHDL](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=21) |
|22 | `T22_ImpureFunction_Tb.vhd` | Demonstrates impure functions in VHDL: usage, when required, and limitations. | [How to use an Impure Function in VHDL](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=22) |
|23 | `T23_ProcedureInProcess_Tb.vhd` | Shows how to use procedures *within* processes (nested usage, design patterns). | [How to use a Procedure in a Process in VHDL](https://www.youtube.com/playlist?list=PLIbRYKjjYOPkhpxnkQ0fwTXnmgsiCMcVV&index=23) |

---

## Additional/Support Files  

- `modelsim.ini` — Configuration file for the simulator (e.g., library mapping).  
- `vsim.wlf` — Waveform log file generated by simulation.  
- `Tasks_Tutorial.mpf` / `.cr.mti` — Project files for ModelSim (compile record, etc.).  
- `work/` directory — The working library directory created by ModelSim.  
- Backup files ending in `.bak` — Backups of source/testbench files (for versioning).  

---

## How to Run the Simulations  

1. Install a VHDL simulator (e.g., ModelSim or QuestaSim). 
2. Create or open a project, include all `.vhd` files.  
3. Compile all source modules and testbenches.  
4. Set the desired testbench (e.g., `T20_FiniteStateMachine_Tb.vhd`) as the top‐level entity.  
5. Run the simulation, view waveforms in the GUI, and ensure expected behaviour.  
6. Use the YouTube video links for each lesson as reference if you need guidance.  

---

## What’s Next  

Once you’ve completed all 23 lessons, you should have a solid grasp of the fundamentals of VHDL and simulation. The next steps recommended by VHDLwhiz:  
- Move from simulation to hardware: pick a low-cost FPGA board and synthesise your designs. 
- Explore the “FPGA and VHDL Fast-Track” course for hands-on hardware usage.

---

## Credits  
Course created by VHDLwhiz – see [vhdlwhiz.com](https://vhdlwhiz.com) for more. 

---

<h3 align="left">Connect with me:</h3>
<p align="left">
<a href="https://www.linkedin.com/in/mohamed-maged-1237981b4" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="https://www.linkedin.com/in/mohamed-maged-1237981b4" height="30" width="40" /></a>
<a href="https://www.youtube.com/channel/UCqFdD_fUftFl9dtfEshGGYg" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/youtube.svg" alt="@mohamedmaged7686" height="35" width="40" /></a>
<a href="https://mail.google.com/mail/?view=cm&fs=1&to=mohamed.maged.khalil1@gmail.com" target="blank"><img align="center" src="https://github.com/Eng-Mohamed-Maged/Eng-Mohamed-Maged/blob/main/gmail.svg" height="38" width="40" /></a>
</p>
