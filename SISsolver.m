clc
clear

options = odeset('RelTol',1e-4,'AbsTol',[1e-4 1e-5]); % this is to set the accuracy
% important note: if the model has 3 equations then we need three values in
% the brackets [1e-4 1e-5]. In general the number of values should match
% with the number of equations

[T,Y] = ode45(@sismodel,[0 20],[2*10^6 10^6],options); % this solves the SIS model.
% Y is a matrix. The columns of are the solutions of S and I
% T is the time vector 
% ode45 is the name of the program used by Matlab
% @sismodel calls the file sismodel.m , where the model and parameters are
% defined.
% [0 20] is the time interval. So we solve the model from t=0 to t=20 days
% [2*10^6 10^6] are respectively the initial values for the number of S and I. i.e. the values of S and I at t=0.
% options: Uses the specified tolerance see line 4.  

plot(T,Y(:,1),'-.',T,Y(:,2),'-r','LineWidth',2.5) % this plots the S and I versus time
% you may replace '-.' with 'o' to plot with circles. '-r' means plot solid
% line with the red color

xlabel('time, t','FontWeight','bold') % this gives a lable to x-axis
ylabel('host population size in millions','FontWeight','bold') % this gives a lable to y-axis
title('Time series of the infection corresponding to SIS model' ,'FontWeight','bold') % this give a title to the figure

%this will set up the legend. You can also do it manually.
h = legend('Susceptible hosts', 'Infected hosts',2);
set(h,'Interpreter','none','fontsize',12,...
'Position',[0.65 0.8 0.15 -0.2])