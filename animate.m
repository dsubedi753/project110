function null = animate(X1,Y1,X2,Y2)
curve1 = animatedline('Color','b');
curve2 = animatedline('Color','r');
set(gca, 'XLim', [-20,20],'YLim',[-20,20]);
grid on
for i = 1:length(X1)
    addpoints(curve1,X1(i), Y1(i));
    drawnow
    hold on
    addpoints(curve2,X2(i), Y2(i));
    drawnow
    hold on
end