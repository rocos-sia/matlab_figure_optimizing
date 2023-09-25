function callback(var1, var2, var3)

    all_group = figure(var1.Number).Children;
    
    %!#region 查找所有的axes轴，其他对象排除
    i = 1;
    for ii = 1:size(all_group)
    
        if (strcmp(get(all_group(ii), 'Type'), 'axes'))
            axes(i) = all_group(ii);
            i = i + 1;
        end
    
    end
    
    %!#endregion
    
    %!#region 对Y轴缩放
    if (strcmp(var2.Key, 'w') || strcmp(var2.Key, 's'))
    
        ylimit = get(axes, 'YLim');
    
        for i = 1:1:size(ylimit, 1)
    
            length =  ylimit{i, 1}(2) -  ylimit{i, 1}(1);
           
            if strcmp(var2.Key, 'w')
                length = 2 * length;
            elseif strcmp(var2.Key, 's')
                length = 0.5 * length;
            end
    
            limit_center = (ylimit{i, 1}(2) +  ylimit{i, 1}(1))/2;
    
            ylimit{i, 1}(1) = limit_center - length/2;
            ylimit{i, 1}(2) = limit_center + length/2;
    
            set(axes(i), 'YLim', ylimit{i, 1})
    
        end
    
    end
    
    %!#endregion
    
    %!#region 对X轴缩放
    
    if (strcmp(var2.Key, 'd') || strcmp(var2.Key, 'a'))
    
        xlimit = get(axes, 'XLim');
    
        for i = 1:1:size(xlimit, 1)
    
            length =  xlimit{i, 1}(2) -  xlimit{i, 1}(1);
           
            if strcmp(var2.Key, 'd')
                length = 2 * length;
            elseif strcmp(var2.Key, 'a')
                length = 0.5 * length;
            end
    
            limit_center = (xlimit{i, 1}(2) +  xlimit{i, 1}(1))/2;
    
            xlimit{i, 1}(1) = limit_center - length/2;
            xlimit{i, 1}(2) = limit_center + length/2;
    
            set(axes(i), 'XLim', xlimit{i, 1})
    
        end
    
    end
    %!#endregion
    
    %!#region X轴同步
    if (strcmp(var2.Key, 'q'))
        linkaxes(axes, 'x');
    end
    
    if (strcmp(var2.Key, 'e'))
        linkaxes(axes, 'off');
    end
    
    %!#endregion
    
    end
    