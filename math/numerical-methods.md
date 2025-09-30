---
# yaml-language-server: $schema=schemas/page.schema.json
Object type:
    - Page
Creation date: "2025-09-29T23:42:47Z"
Created by:
    - Contesini
Emoji: "\U0001F4DC"
id: bafyreihmaakw6poqqdutd3vbqs2dugs7lui2bzhjscnxibbfoj5xdds7ly
---
# Numerical Methods   
Numerical methods are essential computational tools designed to approximate solutions to mathematical problems that are analytically intractable. They form the backbone of modern scientific and engineering computation such as solving differential equations, optimization problems, and integral evaluations. This essay presents a comprehensive overview of prominent numerical methods, focusing particularly on ordinary differential equation (ODE) solvers, their underlying principles, derivations with pseudo-code, typical applications, inherent defects, and concrete examples using Python3 written with SOLID principles and 2-space indentation.   
 --- 
## Euler Method   
## Principle   
Euler's method approximates the solution of an ODE by using the derivative's value at the current point to predict the next point, effectively applying a forward finite difference.   
## Derivation (Pseudo-code)   
```
Given ODE: dy/dt = f(t, y), y(t0) = y0
Step size: h
For n in 0 to N-1
  y[n+1] = y[n] + h * f(t[n], y[n])
  t[n+1] = t[n] + h
EndFor


```
## Application   
Simple initial value problems where low accuracy is acceptable.   
## Defects   
- Low accuracy (first order).   
- Numerical instability for stiff equations.   
- Error accumulates rapidly with large step sizes.   
   
## Python Example   
```
class EulerMethod:
  def __init__(self, f, y0, t0=0.0, h=0.1):
    self.f = f
    self.y = y0
    self.t = t0
    self.h = h

  def step(self):
    self.y += self.h * self.f(self.t, self.y)
    self.t += self.h
    return self.t, self.y

  def solve(self, steps):
    results = []
    for _ in range(steps):
      results.append(self.step())
    return results

# Usage example
def f(t, y):
  return -2 * y  # example ODE dy/dt = -2y

solver = EulerMethod(f=f, y0=1.0, h=0.1)
solution = solver.solve(100)


```
 --- 
## Modified Euler Method (Heun's Method)   
## Principle   
A predictor-corrector method improving Euler’s by averaging the slopes at the beginning and predicted end of the step, increasing accuracy to second order.   
## Derivation (Pseudo-code)   
```
Given ODE: dy/dt = f(t, y), y(t0) = y0
Step size: h
For n in 0 to N-1
  y_predict = y[n] + h * f(t[n], y[n])
  y[n+1] = y[n] + (h/2) * (f(t[n], y[n]) + f(t[n+1], y_predict))
  t[n+1] = t[n] + h
EndFor


```
## Application   
Problems demanding better accuracy than Euler but minimal complexity.   
## Defects   
- More computational cost than Euler.   
- Still not efficient for very stiff problems.   
   
## Python Example   
```
class ModifiedEulerMethod:
  def __init__(self, f, y0, t0=0.0, h=0.1):
    self.f = f
    self.y = y0
    self.t = t0
    self.h = h

  def step(self):
    y_predict = self.y + self.h * self.f(self.t, self.y)
    self.y += (self.h / 2) * (self.f(self.t, self.y) + self.f(self.t + self.h, y_predict))
    self.t += self.h
    return self.t, self.y

  def solve(self, steps):
    results = []
    for _ in range(steps):
      results.append(self.step())
    return results


```
 --- 
## Crank-Nicolson Method   
### Principle   
A second-order implicit method mainly used to numerically solve partial differential equations (PDEs), averaging the function between the current and next time steps; stable and time-reversible.   
### Derivation (Pseudo-code) for ODE:   
```
Given ODE: dy/dt = f(t, y)
Implicit scheme:
y[n+1] = y[n] + (h/2) * (f(t[n], y[n]) + f(t[n+1], y[n+1]))
Solve for y[n+1] implicitly (may involve algebraic solver or iteration)


```
### Application   
Stable solutions of parabolic PDEs (heat equation), stiff ODEs requiring implicit integration.   
### Defects   
- Requires implicit solution at each step (solving algebraic equations).   
- More computationally intensive.   
   
### Python Example (using fixed-point iteration for implicit solve)   
```
class CrankNicolsonMethod:
  def __init__(self, f, y0, t0=0.0, h=0.1, tol=1e-6, max_iter=100):
    self.f = f
    self.y = y0
    self.t = t0
    self.h = h
    self.tol = tol
    self.max_iter = max_iter

  def step(self):
    t_next = self.t + self.h
    y_next = self.y  # initial guess

    for _ in range(self.max_iter):
      y_new = self.y + (self.h / 2) * (self.f(self.t, self.y) + self.f(t_next, y_next))
      if abs(y_new - y_next) < self.tol:
        y_next = y_new
        break
      y_next = y_new

    self.y = y_next
    self.t = t_next
    return self.t, self.y

  def solve(self, steps):
    results = []
    for _ in range(steps):
      results.append(self.step())
    return results


```
 --- 
## Leap-Frog Method   
### Principle   
A second-order explicit method for ODEs, it calculates the next state using the state two time steps before and the derivative at the intermediate step; commonly used for time-dependent wave equations.   
### Derivation (Pseudo-code)   
```
Initialize y[0], y[1] using another method such as Euler
For n in 1 to N-1
  y[n+1] = y[n-1] + 2 * h * f(t[n], y[n])
EndFor


```
### Application   
Time integration in computational fluid dynamics and wave propagation.   
### Defects   
- Needs special initialization.   
- Not self-starting.   
- Numerical oscillations can occur if step too large.   
   
### Python Example   
```
class LeapFrogMethod:
  def __init__(self, f, y0, t0=0.0, h=0.1):
    self.f = f
    self.h = h
    self.t_values = [t0]
    self.y_values = [y0]
    # Initialize second value using Euler for starting
    y1 = y0 + h * f(t0, y0)
    self.y_values.append(y1)
    self.t_values.append(t0 + h)

  def step(self):
    n = len(self.y_values) - 1
    t_next = self.t_values[n] + self.h
    y_next = self.y_values[n-1] + 2 * self.h * self.f(self.t_values[n], self.y_values[n])
    self.t_values.append(t_next)
    self.y_values.append(y_next)
    return t_next, y_next

  def solve(self, steps):
    results = []
    for _ in range(steps):
      results.append(self.step())
    return results


```
 --- 
## Runge-Kutta Family of Methods   
### Principle   
Runge-Kutta methods compute multiple intermediate slopes to produce higher order accuracy without requiring higher derivatives.   
### Common Methods   
- RK2 (Midpoint): 2nd order   
- RK4: classical 4th order method widely used   
   
### RK4 Derivation (Pseudo-code)   
```
Given dy/dt = f(t,y)
k1 = h * f(t[n], y[n])
k2 = h * f(t[n] + h/2, y[n] + k1/2)
k3 = h * f(t[n] + h/2, y[n] + k2/2)
k4 = h * f(t[n] + h, y[n] + k3)
y[n+1] = y[n] + (1/6)*(k1 + 2*k2 + 2*k3 + k4)
t[n+1] = t[n] + h


```
### Application   
General-purpose ODE solving with good accuracy and stability for moderate stiffness.   
### Defects   
- More function evaluations per step.   
- Can be computationally expensive for complex systems.   
   
### Python Example (RK4)   
```
class RungeKutta4Method:
  def __init__(self, f, y0, t0=0.0, h=0.1):
    self.f = f
    self.y = y0
    self.t = t0
    self.h = h

  def step(self):
    h = self.h
    t = self.t
    y = self.y
    k1 = h * self.f(t, y)
    k2 = h * self.f(t + h/2, y + k1/2)
    k3 = h * self.f(t + h/2, y + k2/2)
    k4 = h * self.f(t + h, y + k3)
    self.y += (k1 + 2*k2 + 2*k3 + k4) / 6
    self.t += h
    return self.t, self.y

  def solve(self, steps):
    results = []
    for _ in range(steps):
      results.append(self.step())
    return results

```
 --- 
## Adams Methods (Overview)   
### Principle   
Multistep methods utilizing previous points' derivatives to predict the next value. Adams-Bashforth is explicit; Adams-Moulton is implicit.   
### Order of Accuracy   
Varies depending on the number of steps (higher order with more steps).   
### Application   
Efficient for smooth problems where derivative history is available.   
### Defects   
Requires starting values; implicit versions need solving algebraic equations.   
### Brief Pseudo-code (Adams-Bashforth 2-step explicit)   
```
Initialize y[0], y[1] with another method like RK4
For n = 1 to N-1:
    y[n+1] = y[n] + h * (3/2 * f(t[n], y[n]) - 1/2 * f(t[n-1], y[n-1]))


```
 --- 
## Backward Differentiation Formulas (BDF) (Overview)   
### Principle   
Implicit multistep methods designed for stiff problems based on backward differences.   
### Derivation   
\`\`\`text   
   
\`\`\`   
### Order of Accuracy   
Varies up to 6th order.   
### Application   
Solving stiff ODE systems in engineering and physics.   
### Defects   
Requires solving nonlinear systems at each step.   
\`\`\`python3   
   
\`\`\`   
 --- 
## Symplectic Methods (Overview)   
### Principle   
Preserve the geometric structure of Hamiltonian systems, thus conserving quantities like energy over long simulations.   
### Derivation   
\`\`\`text   
   
\`\`\`   
### Order of Accuracy   
Varies with method; often second order for simple Verlet integrator.   
### Application   
Hamiltonian mechanics, celestial mechanics, molecular dynamics.   
### Defects   
Specialized applicability and requires knowledge of system structure.   
### Example   
\`\`\`ptyhon3   
   
\`\`\`   
 --- 
Backward Differentiation Formulas (BDF): Implicit methods for stiff ODEs.   
Symplectic Integrators: Preserve geometric properties in Hamiltonian systems (e.g., Verlet integration).   
Finite Difference Methods for PDEs: Including FTCS, Lax-Friedrichs, Lax-Wendroff for hyperbolic PDEs.   
Monte Carlo Methods: Stochastic simulation for integrals and PDEs.   
Spectral Methods: High-accuracy solvers using basis functions like Fourier or Chebyshev polynomials.   
 --- 
## Stiff Equation   
A stiff equation is a type of differential equation that poses significant challenges for numerical solution methods. Specifically, it is characterized by the fact that certain numerical solvers become unstable unless they use extremely small step sizes, even in regions where the true solution changes slowly and smoothly.   
Key characteristics of stiff equations include:   
- They contain components that vary on widely different time scales some parts of the solution change very rapidly while others vary slowly.   
- The stiffness phenomenon is due to the differential system itself rather than its exact solution, as different formulations with the same solution may or may not be stiff.   
- Stiff systems often have eigenvalues with large negative real parts that cause some solution components to decay rapidly.   
- Stability demands rather than accuracy requirements constrain the maximum step size in numerical solvers, forcing very small steps for explicit methods.   
   
Implications:   
- Explicit methods such as the simple Euler method require impractically small step sizes to maintain stability.   
- Implicit methods like backward differentiation formulas (BDF) and Crank-Nicolson are preferred because they handle stiffness more efficiently.   
- Stiff equations commonly arise in fields like chemical kinetics, control theory, electrical circuits, and biological systems where fast and slow dynamics coexist.   
   
A classic example of a stiff differential equation is:   
$\frac{dy}{dt}=−30y$,   $y(0)=13$   
The exact solution is:   
$y(t)=13e^{−30t}$   
This equation is stiff because the solution decays very quickly (due to the large negative coefficient $-30$). When solved using explicit Euler's method with a step size $h=0.1$, the method becomes unstable unless the step size is smaller than about $\frac{1}{15}≈0.0667$.   
In other words, even though the solution settles quickly into a slow variation regime, Euler's method requires very small step sizes to maintain numerical stability because of the rapid transient decay. This kind of behavior is typical of stiff equations.   
 --- 
### Python example illustrating stiffness with Euler:   
```

def f(t, y):
  return -30 * y

class EulerMethod:
  def __init__(self, f, y0, t0=0.0, h=0.1):
    self.f = f
    self.y = y0
    self.t = t0
    self.h = h

  def step(self):
    self.y += self.h * self.f(self.t, self.y)
    self.t += self.h
    return self.t, self.y

  def solve(self, steps):
    results = []
    for _ in range(steps):
      results.append(self.step())
    return results

solver = EulerMethod(f, y0=1/3, h=0.1)
result = solver.solve(50)

```
This simple Euler method example will quickly show numerical instability at $h=0.1$, whereas a smaller step size or an implicit method is required to solve it stably.   
 --- 
## Sympletic Integrators   
A symplectic Integrator generally refers to a system described by Hamiltonian mechanics, where the evolution preserves a geometric structure called the symplectic form. Symplectic integrators are specialized numerical methods designed to solve these problems.   
In more detail:   
- Symplectic integrators are numerical schemes for integrating Hamiltonian systems, i.e., systems governed by Hamilton's equations involving position coordinates qq and momentum coordinates $p$.   
- These integrators preserve the symplectic $2$-form $dp∧dq$, which geometrically means they conserve "phase space volume" or area-preserving transformations.   
- Because of this conservation, symplectic integration methods better preserve important physical invariants such as energy over long times compared to general numerical methods that do not maintain these structures.   
- Common applications include simulations in celestial mechanics, molecular dynamics, plasma physics, accelerator physics, and other nonlinear dynamics.   
- Typical numerical methods like Euler or classical Runge-Kutta are not symplectic and may show energy drift or dissipation in long-term simulations.   
- Symplectic methods are particularly suited for mechanical problems with Hamiltonian structure, providing stable and physically accurate long-time integration.   
   
Thus, symplectic integrator are those involving Hamiltonian dynamics where preserving the symplectic geometry of the phase space is essential, and symplectic integrators are the preferred numerical approach for solving them   
This example uses the velocity Verlet method, a popular second-order symplectic integrator.   
Hamiltonian system for a simple harmonic oscillator:   
$H(p,q)=\frac{p^2}{2m}+\frac{1}{2}kq^2$   
with equations of motion:   
$\dot{q}=\frac{∂H}{∂p}=\frac{p}{m}$  $\dot{p}=−\frac{∂H}{∂q}=−kq$   
## Velocity Verlet Symplectic Integrator Python Example   
```

class VelocityVerlet:
  def __init__(self, mass, k, q0, p0, h):
    self.m = mass
    self.k = k
    self.q = q0  # position
    self.p = p0  # momentum
    self.h = h

  def step(self):
    # Calculate acceleration
    a = -self.k * self.q / self.m

    # Update position half step
    q_half = self.q + 0.5 * self.h * self.p / self.m

    # Update momentum full step
    self.p += self.h * (-self.k * q_half)

    # Update position another half step
    self.q = q_half + 0.5 * self.h * self.p / self.m

    return self.q, self.p

  def solve(self, steps):
    trajectory = []
    for _ in range(steps):
      trajectory.append(self.step())
    return trajectory

# Example usage:
mass = 1.0
spring_const = 1.0
initial_q = 1.0
initial_p = 0.0
time_step = 0.1

solver = VelocityVerlet(mass, spring_const, initial_q, initial_p, time_step)
result = solver.solve(100)


```
 --- 
This method preserves the symplectic structure of the Hamiltonian flow, conserving energy better over long times compared to non-symplectic methods like explicit Euler or classical Runge-Kutta. It is widely used in molecular dynamics and celestial mechanics for this reason.   
## Störmer-Verlet (Position-Only Form)   
## Principle   
The Störmer-Verlet (position-only) integrator is a symplectic method for second-order differential equations, updating position using current and previous positions plus the current acceleration. Velocity is derived only as needed by finite differences.   
## Derivation   
For Newton’s equation x¨=a(x)x¨=a(x):   
Pseudocode:   
```

text
Given x0 (initial position), v0 (initial velocity), h (time step)
x1 = x0 + v0*h + 0.5*a(x0)*h^2

For n = 1, 2, ...
  x_next = 2*x_n - x_{n-1} + a(x_n)*h^2
End
(Optional) Velocity: v_n ≈ (x_{n+1} - x_{n-1})/(2*h)


```
## Application   
Simulating molecular dynamics, celestial mechanics, or any system described by Hamiltonian dynamics with conservative forces when only positions need updating.   
## Defects   
- Initial step needs special initialization using Taylor expansion.   
- Does not directly track velocity (may be inconvenient for velocity-dependent forces).   
- Accuracy only second order in positions.   
   
## Python Example   
```
class StormerVerlet:
  def __init__(self, a_func, x0, v0, h):
    self.a = a_func
    self.h = h
    self.x_prev = x0
    self.x = x0 + v0 * h + 0.5 * self.a(x0) * h ** 2  # Initialize x1
    self.n = 1

  def step(self):
    x_next = 2 * self.x - self.x_prev + self.a(self.x) * self.h ** 2
    self.x_prev, self.x = self.x, x_next
    self.n += 1
    return x_next

  def estimate_velocity(self):
    # Optional: finite difference
    return (self.x - self.x_prev) / self.h

  def solve(self, steps):
    xs = [self.x_prev, self.x]
    for _ in range(steps - 1):
      xs.append(self.step())
    return xs

# Example: Simple Harmonic Oscillator: a(x) = -x
a = lambda x: -x
solver = StormerVerlet(a, x0=1.0, v0=0.0, h=0.1)
trajectory = solver.solve(100)


```
 --- 
## Velocity Verlet (Störmer-Verlet With Velocities)   
## Principle   
An extension of the position-only Verlet, Velocity Verlet updates both position and velocity explicitly, which is helpful when forces depend on velocity (e.g., damping).   
## Derivation (Pseudocode)   
```
Given x0, v0, a0, h
For n = 0, ...
  x_{n+1} = x_n + v_n*h + 0.5*a_n*h^2
  a_{n+1} = a(x_{n+1})
  v_{n+1} = v_n + 0.5*(a_n + a_{n+1})*h
End


```
## Application   
- Needed for molecular dynamics with friction or other velocity-dependent forces.   
- General higher-accuracy symplectic integration with explicit velocity.   
   
## Defects   
- Slightly more complex update.   
- Still only second-order, though usually sufficient.   
   
## Python Example   
```
class VelocityVerlet:
  def __init__(self, a_func, x0, v0, h):
    self.a_func = a_func
    self.h = h
    self.x = x0
    self.v = v0
    self.a = self.a_func(x0)

  def step(self):
    x_new = self.x + self.v * self.h + 0.5 * self.a * self.h ** 2
    a_new = self.a_func(x_new)
    v_new = self.v + 0.5 * (self.a + a_new) * self.h
    self.x, self.v, self.a = x_new, v_new, a_new
    return x_new, v_new

  def solve(self, steps):
    states = [(self.x, self.v)]
    for _ in range(steps):
      states.append(self.step())
    return states

# Example: Simple Harmonic Oscillator: a(x) = -x
a = lambda x: -x
solver = VelocityVerlet(a, x0=1.0, v0=0.0, h=0.1)
states = solver.solve(100)


```
 --- 
Both methods are widely used in physics simulations and are symplectic, meaning they preserve the underlying geometry and energy behavior of Hamiltonian systems over long time periods   
 --- 
## Beeman's Algorithm   
### Principle   
Beeman’s method is a symplectic multistep integrator designed for numerically solving Newton’s equations of motion, particularly in molecular dynamics and systems dominated by position-dependent forces. It improves the estimate of velocity at each step compared with Verlet-type algorithms and is especially accurate for integrating trajectories over long times.[https://en.wikipedia.org/wiki/Beeman's\_algorithm](https://en.wikipedia.org/wiki/Beeman's_algorithm)   
 --- 
### Derivation (Formula and Pseudocode)   
Given acceleration a(t)a(t) as a function of position (and possibly velocity):   
- Position update:
xn+1=xn+vnΔt+16[4an−an−1]Δt2xn+1=xn+vnΔt+61[4an−an−1]Δt2   
- Velocity update:
vn+1=vn+16[2an+1+5an−an−1]Δtvn+1=vn+61[2an+1+5an−an−1]Δt   
   
**Pseudocode:**   
```

text
Given x0, v0, a0, a_{-1}, Δt

For n = 0, 1, ...
  x_{n+1} = x_n + v_n * Δt + (1/6) * (4*a_n - a_{n-1}) * Δt^2
  a_{n+1} = compute_acceleration(x_{n+1})
  v_{n+1} = v_n + (1/6) * (2*a_{n+1} + 5*a_n - a_{n-1}) * Δt
End


```
 --- 
## Application   
- Molecular dynamics simulations   
- Celestial mechanics   
- Any Hamiltonian/energy-conserving dynamic system needing high-accuracy velocity updates   
 --- 
   
## Defects   
- Requires storing accelerations at two previous steps (increases memory requirements)   
- Not self-starting: the first step must use another method, such as Velocity Verlet, to produce an initial a−1a−1   
- More computationally expensive per step than basic Verlet   
- If forces depend on velocity, must use a predictor-corrector variant   
 --- 
   
## Python Example   
```

python
class BeemanIntegrator:
  def __init__(self, acc_func, x0, v0, h):
    self.a_func = acc_func
    self.h = h
    self.x = x0
    self.v = v0
    self.a = self.a_func(self.x)
    # Bootstrap: initial previous acceleration; could use Euler, zero, or small h Velocity Verlet
    self.a_prev = self.a_func(self.x - self.v * h)

  def step(self):
    # Predict position
    x_next = self.x + self.v * self.h + (1/6) * (4 * self.a - self.a_prev) * self.h**2
    # Predict acceleration at new position
    a_next = self.a_func(x_next)
    # Update velocity
    v_next = self.v + (1/6) * (2 * a_next + 5 * self.a - self.a_prev) * self.h
    # Roll state
    self.x, self.v, self.a_prev, self.a = x_next, v_next, self.a, a_next
    return self.x, self.v

  def solve(self, steps):
    traj = [(self.x, self.v)]
    for _ in range(steps):
      traj.append(self.step())
    return traj

# Example: Simple harmonic oscillator
def acc(x):
  return -x  # a(x) = -x for F = -x

beeman = BeemanIntegrator(acc, x0=1.0, v0=0.0, h=0.1)
trajectory = beeman.solve(100)


```
 --- 
Beeman’s method produces positions equivalent to classical Verlet but much more accurate velocities, and it is well-suited for long-term energy conservation in physics simulations involving many particles.   
 --- 
# Courant–Friedrichs–Lewy condition   
The Courant–Friedrichs–Lewy (CFL) condition is a critical stability criterion for numerical solutions of partial differential equations especially for explicit time integration methods applied to hyperbolic and convection-dominated PDEs. It ensures that the physical propagation of information in the model does not outpace the numerical update from one time step to the next.   
## Principle   
- The CFL condition states that the numerical domain of dependence (how far information "travels" in one computational step) must contain the true physical domain of dependence for stability and convergence.   
- Practically, it ensures that a wave or signal cannot move further than one grid cell per time step on the computational mesh.   
   
## Mathematical Formulation (1D Example)   
For a system where the maximum characteristic velocity is $a$, time step $Δt$, and grid spacing ΔxΔx:   
$C=a\frac{Δt}{Δx}$   
where $C$ is the Courant number.   
The CFL condition generally requires:   
$C≤1$   
## Application and Consequences   
- The smaller the spatial mesh ($Δx$), the smaller the time step (ΔtΔt) must be, to maintain stability for explicit methods.   
- Violating this condition leads to unstable, divergent, or incorrect results in simulations.   
- The CFL condition is crucial in computational fluid dynamics (CFD), wave simulations, and in the finite difference, finite volume, or finite element methods for time-dependent equations.   
   
## Illustrative Example   
Suppose a wave speed $a=2 m/s$, grid cell size $Δx=0.1$ m, and explicit update. To prevent instability, the time step must satisfy:   
$Δt≤\frac{Δx}{a}=\frac{0.1}{2}=0.05 seconds$   
## Defects and Limitations   
- It is a necessary but not always sufficient stability condition—especially for nonlinear or complicated numerical schemes.   
- Only strictly applies to explicit methods; implicit methods can often violate the CFL limit and remain stable at larger time steps (at the expense of more computation per step).   
   
   
