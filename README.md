User Guide: How to Use the Solution
------------
**Step 1: Open the Solution from GitHub**

Begin by navigating to the GitHub repository on your local machine. The solution can be
found at https://github.com/markvanriesen/RICT-project. To open the solution, you must click
on ‘Code’ followed by ‘Open with Visual Studio’.

**Step 2: Open the RICT solution, followed by the DslDefinition.dsl in Solution Explorer to View the Metamodel**

In the Solution Explorer, locate and open `DslDefinition.dsl` to examine the metamodel of
the solution.

**Step 3: Configure Multiple Startup Projects**

1. Select the solution “RICT”.
2. Right-click on the solution “RICT”.
3. Select Properties.
4. Choose Multiple Startup Projects.
5. Set all actions from "None" to Start.
6. Click Apply and then OK.
   
**Step 4: Run the Solution**

Either click Start or press F5 to run the solution. Error messages can be ignored.

**Step 5: Wait for Toolbox Initialization**

Wait patiently until the toolbox initializes. This might take a moment.

**Step 6: Create a Model**

● Open Sample.RICT: This file contains an example model.

● Open Test.RICT to create a model from scratch.

● Initialize the toolbox by going to View -> Toolbox.

**Step 7: Use the Toolbox Elements**

1. Start by dragging the impact levels into the model: systemic, enabling, and immediate.
2. In the properties of an element, assign a name to the impact level.
3. Drag the software architecture into the immediate level. Double-click on the element to
assign a name.
4. Drag concerns (Technical, Environmental, Social, Economic) to the corresponding impact
level. Double-click on the element to name it.

**Step 8: Connect Elements via Relations**

1. Connect software architecture to concerns using relations (undecided, positive, negative).
   
● These relations have "SA" at the end of their name.

● Click on the relation tool, then click on the software architecture, and finally on the concern to establish the connection.

2. Similarly, connect concerns using relations with "Concern" at the end of their name.
   
**Step 9: Explore the Model Structure**

In the RICT Explorer window, explore the tree structure of the model. Concerns are placed
in the impact level where they are initially positioned.

This user guide provides a step-by-step process for using the solution effectively. If you
encounter any issues or have further questions, refer back to this guide or consult the
solution documentation.

Enjoy using the solution for your modeling needs! 
