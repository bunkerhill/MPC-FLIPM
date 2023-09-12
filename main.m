%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MPC_based control for FLIP                    %
% Course: Underactuated Robotics                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all; close all;

% change flag to execute one method or the other
method = "approximate"; % approximate inverse
method = "exact";

delta = 0.01; % time step
N = 100; % preview window
fM = FlipManager('exact', delta, N);
%also on console
fM.cycle(100); %main computation
fM.plotSystemEvolution(); %graphical front end
