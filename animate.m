function null = animate(X1,Y1,Z1,X2,Y2,Z2,X3,Y3,Z3)
curve1 = animatedline('Color','b');
curve2 = animatedline('Color','r');
curve3 = animatedline('Color','g');

set(gca, 'XLim', [-20,20],'YLim',[-20,20],'ZLim',[-20,20]);
grid on
view(3);

for i = 1:length(X1)
    addpoints(curve1,X1(i), Y1(i), Z1(i));
    drawnow
    hold on
    addpoints(curve2, X2(i), Y2(i), Z2(i));
    drawnow
    hold on
    addpoints(curve3, X3(i), Y3(i), Z3(i));
    drawnow
    hold on
end