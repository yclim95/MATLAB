% Takes L = square Logical matrix 
% Return v as a (cell vector) representation 
% Empty array elements = false = 0 X 0 

function v = logipack(L)
    dimension = size(L);
    v = cell(1,dimension(1));
    
    for i = 1 : dimension(1)  % Row
         v{i} = find(L(i, :)); % Select everything in i row 
         if isempty(v{i})
              v{i} = []; % Assign an empty array for every empty array elements
          end
    end 
    
end