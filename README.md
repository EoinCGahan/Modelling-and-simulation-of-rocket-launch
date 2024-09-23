This project simulates the launch dynamics of a rocket using the Runge-Kutta 5th order method in MATLAB. The model is designed to solve the complex system of differential equations governing the rocket's motion while considering real-world physical effects.

The simulation is capable of producing two outputs:

Full simulation with visualizations: Runs the rocket launch simulation and produces a graphical output showing the trajectory, thrust vectoring, and other dynamic elements.
Numerical-only simulation: Runs the same simulation but outputs only numerical data without generating any visualizations.
Key Features of the Model
Aerodynamic Drag: Models drag forces on each rocket component and the moments these forces produce around the rocket's center of gravity.
Dynamic Center of Gravity: Continuously updates the center of gravity as the rocket burns fuel, which affects the balance and control dynamics.
Varying Air Density: Accounts for how air density decreases with altitude, impacting drag forces on the rocket.
Throttling for Max Q: Simulates the process of throttling down the rocket to avoid structural damage as it passes through the point of maximum dynamic pressure (Max Q).
Thrust Vector Control: Dynamically adjusts the angles of the rocket’s thrusters to maintain stability and correct its flight path.
