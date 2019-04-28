function null = animate(X1,Y1,Z1,X2,Y2,Z2,X3,Y3,Z3)
curve1 = animatedline('Color','b');
curve2 = animatedline('Color','r');
curve3 = animatedline('Color','g');

set(gca, 'XLim', [-50,50],'YLim',[-50,50],'ZLim',[-50,50]);
grid on
view(3);

for i = 1:length(X1)
    addpoints(curve1,X1(i), Y1(i), Z1(i));
    drawnow limitrate
    hold on
    addpoints(curve2, X2(i), Y2(i), Z2(i));
    drawnow limitrate
    hold on
    addpoints(curve3, X3(i), Y3(i), Z3(i));
    drawnow limitrate
    hold on
end