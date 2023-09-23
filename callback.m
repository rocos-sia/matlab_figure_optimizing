function callback(var1, var2, var3)

axes = figure(var1.Number).Children;
var2
%!#region 对Y轴缩放
if (strcmp(var2.Key, 'w') || strcmp(var2.Key, 's'))

    if strcmp(var2.Key, 'w')
        scale = 2;
    elseif strcmp(var2.Key, 's')
        scale = 0.5;
    end

    
    ylimit = get(axes, 'YLim');

    for i = 1:1:size(ylimit, 1)

        if ylimit{i, 1}(1) < 0
            ylimit{i, 1}(1) = ylimit{i, 1}(1) * scale;
        else
            ylimit{i, 1}(1) = ylimit{i, 1}(1) / scale;
        end

        if ylimit{i, 1}(2) < 0
            ylimit{i, 1}(2) = ylimit{i, 1}(2) / scale;
        else
            ylimit{i, 1}(2) = ylimit{i, 1}(2) * scale;
        end

        set(axes(i), 'YLim', ylimit{i, 1})

    end

    
end
%!#endregion


%!#region 对X轴缩放

if (strcmp(var2.Key, 'd') || strcmp(var2.Key, 'a'))

    if strcmp(var2.Key, 'd')
        scale = 2;
    elseif strcmp(var2.Key, 'a')
        scale = 0.5;
    end

    Xlimit = get(axes, 'XLim');

    for i = 1:1:size(Xlimit, 1)

        if Xlimit{i, 1}(1) < 0
            Xlimit{i, 1}(1) = Xlimit{i, 1}(1) * scale;
        else
            Xlimit{i, 1}(1) = Xlimit{i, 1}(1) / scale;
        end

        if Xlimit{i, 1}(2) < 0
            Xlimit{i, 1}(2) = Xlimit{i, 1}(2) / scale;
        else
            Xlimit{i, 1}(2) = Xlimit{i, 1}(2) * scale;
        end

        set(axes(i), 'XLim', Xlimit{i, 1})

    end


end
%!#endregion

%!#region X轴同步
if (strcmp(var2.Key, 'q') )
    linkaxes(axes, 'x');   
end

if (strcmp(var2.Key, 'e') )
    linkaxes(axes, 'off');   
end
%!#endregion


end
