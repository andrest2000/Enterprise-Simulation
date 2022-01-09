# Enterprise-Simulation
The objective of this project is to simulate a theoretical magnetic shield for a spaceship, similar to the one used in the Enterprise in Star Trek. Considering that the enemy's weapons would fire "energy rays" composed by charged particles, sufficiently strong magnetic fields would deviate the trajectories of these particles to prevent their collisions with the spaceship and, thus, protecting it.
The whole physical study of the system is explained as follows:

The magnetic shield is created using small current loops, whose magnetic field can be studied using the theory of magnetic dipoles. Once the magnetic field is defined, we just need to calculate the trajectory of charged particles inside this magnetic field, which is simply solving the differential equation obtained by applying Newton's second law to the Lorentz force, given that magnetic field. The method used to solve this differential equation is fourth order Runge-Kutta method.

With this in mind, the MATLAB codes written for this purpose can be used to study the different scenarios in which such a magnetic shield could protect a hypothetical spaceship from charged particles.
