function null = animate(X1,Y1,Z1,X2,Y2,Z2)
curve1 = animatedline('Color','b');
curve2 = animatedline('Color','r');
set(gca, 'XLim', [-20,20],'YLim',[-20,20],'ZLim',[-20,20]);
grid on
for i = 1:length(X1)
    addpoints(curve1,X1(i), Y1(i), Z1(i));
    drawnow
    hold on
    addpoints(curve2, X2(i), Y2(i), Z2(i));
    drawnow
    hold on
end