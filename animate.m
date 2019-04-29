function null = animate(X1,Y1,Z1,X2,Y2,Z2,X3,Y3,Z3)
path1 = animatedline('Color','b','LineWidth' , 3); %
path2 = animatedline('Color','r','LineWidth' , 3);
path3 = animatedline('Color','g','LineWidth' , 3);
hold on

[x,y,z] = sphere;
x = 20 * x;
y = 20 * y;
z = 20 * z;

sp1 = surf(x,y,z);
sp1.EdgeColor = 'none';
hold on
sp2 = surf(x,y,z);
sp2.EdgeColor = 'none';
hold on
sp3 = surf(x,y,z);
sp3.EdgeColor = 'none';
hold on
set(gca, 'XLim', [-1000,1000],'YLim',[-1000,1000],'ZLim',[-1000,1000]);
xlabel('X');
ylabel('Y');
zlabel('Z');

grid on
view(3);

for i = 1:length(X1)
    set(sp1,'XData',x + X1(i),'YData',y + Y1(i),'ZData',z+ Z1(i));
    set(sp2,'XData',x + X2(i),'YData',y + Y2(i),'ZData',z+ Z2(i));
    set(sp3,'XData',x + X3(i),'YData',y + Y3(i),'ZData',z+ Z3(i));
    addpoints(path1,X1(i), Y1(i), Z1(i));
    addpoints(path2, X2(i), Y2(i), Z2(i));
    addpoints(path3, X3(i), Y3(i), Z3(i));
    drawnow limitrate
    axis square
end