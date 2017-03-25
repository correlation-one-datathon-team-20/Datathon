function [m_result, row, col] = find_region(points, longitude, latitude)
    
    numRegion = 195;
    numPoints = size(points, 1);
    m_result = false(numPoints, numRegion);
    for i = 1:195
        m_result(:,i) = loc_in_poly(points, [latitude(:,i), longitude(:,i)]);
    end

    %% Find points that are in the region
    index = find(m_result == 1);
    [row, col] = ind2sub(size(m_result), index);
end