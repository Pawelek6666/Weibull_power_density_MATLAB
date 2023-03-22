% Weibull Distribution of wind speeds
x = linspace(0,20);
y = wblpdf(x,3.4,2);
plot(x,y)
title("Weibull Distribution of wind speeds")
ylabel("Probability(x)")
xlabel("wind speeds [m/s]")
power_variable = wblpdf(0:20,3.4,2);


% Wind power relation to wind speed
wind_power = [ 0 0.6 4.9 16.35 39.2 76.2 132.3 210.1 313.6 446.5 612.5 815.2 1058.4 1345.7 1680.7 2067.2 2508.8 3009.2 3572.1 4201.1 4900];
wind_power_density = wind_power .* power_variable;
usable_power = wind_power_density .* 0.59;

% plotting the above information
area(0:20,wind_power)
title(" wind power potenial at wind speeds")
xlabel("wind speeds [m/s]")
ylabel(" power potential [W/m^2]")
hold on
area(0:20,usable_power)
hold off 

% plotting the power density function 
area(0:20,wind_power_density,'DisplayName','power density')
title("Power Density")
ylabel("power(v) x probability(v)")
xlabel("wind speed [m/s]")
legend
hold on 
area(0:20,usable_power,'DisplayName','usable power density')
A1 = trapz(usable_power);
A2 = trapz(wind_power_density);
hold off 
disp("Area under the power density graph is ")
disp(A2)
disp("therefore the theoretical power potential is 31.9196 [W/m^2]")
disp("Area under the usable power density graph is ")
disp(A1)
