function stop = outfunoptim(x,optimValues,state) 

global fval_vector fval_tolerance fval_iteration


for j = fval_tolerance:-1:2

    fval_vector(j)=fval_vector(j-1);

end

fval_vector(1)=optimValues.fval;

stop = false;

if isempty(find(fval_vector==0, 1)) && (range(fval_vector)<0.01)...
        && isequal(isequal(optimValues.iteration,fval_iteration),0)
    stop = true;
end

fval_iteration=optimValues.iteration;

end