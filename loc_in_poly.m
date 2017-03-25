%% Construct the point in polygon test for each region
% Start from a vector polygon
function [r] = loc_in_poly(points, v_polygon)
    % remove nan 
    c_polygon = cell(size(v_polygon,2), 1);
    for i = 1:size(v_polygon,2)
      c_polygon{i}=v_polygon(~isnan(v_polygon(:,i)), i);
    end
    v_polygon = [c_polygon{1:end}];
    v_polygon = v_polygon(1:end, :);

    % Construct diff
    r = inpoly(points, v_polygon);
end
