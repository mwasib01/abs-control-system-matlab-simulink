% ABS parameters for ENG7153 - 25145249

% Vehicle from Part 1
m_vehicle = 1720;      % kg
m_q = m_vehicle/4;     % quarter-car equivalent mass = 430 kg
r_w = 0.3346;          % m
A = 2.414;             % m^2
Cd = 0.275;            % -
Crr = 0.011;           % -
rho = 1.21;            % kg/m^3
g = 9.81;              % m/s^2

% Brief-specific ABS inputs
v0 = 75*0.44704;       % 33.528 m/s
w0 = v0/r_w;           % 100.203 rad/s
x_switch = 49;         % m
t_react = 0.74;        % s
slip_ref = 0.20;       % target slip

% Wheel and tyre
Jw = 1.8;              % kg.m^2 (use this unless lecturer gave another)
Fz = m_q*g;            % 4218.3 N
Tfric_gain = r_w*Fz;   % 1411.44 N.m

% Quarter-car road loads
Kdrag_q = 0.25*0.5*rho*A*Cd;
Froll_q = 0.25*Crr*m_vehicle*g;

% Braking
Tbrake_noABS = 2500;   % N.m
Tbrake_max = 3500;     % N.m
simStop = 6;          % s