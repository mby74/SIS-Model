function dy = sismodel(t,y)

alpha=.2; % this is the parameter value for alpha in the SIS model % 1/1.5
beta=.2*10^-6 ; % this is the parameter value for beta in the SIS model
% seasonal forcing :.3*10^-6 *(1+.4*cos(pi*t/3))


dy = zeros(2,1);    % the number 2 refers to the number of equations of the model, 
%For instance, if the model has 5 eqautions then it must be changed to 5.

% This is the SIS model
dy(1) = alpha*y(2)-beta*y(1) * y(2); % here y(1) referes to the first elment of the model which is S.
dy(2) = -alpha*y(2)+beta*y(1) * y(2);% Similarly, y(2) referes to the second elment of the model which is I.
%if we have the third element such as R we replace it with y(3)