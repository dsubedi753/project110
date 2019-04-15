function null = animate(X,Y)
curve = animatedline('Color','b');
set(gca, 'XLim', [-20,20],'YLim',[-20,20]);
grid on
for i = 1:length(X);
    addpoints(curve,X(i), Y(i));
    drawnow
end