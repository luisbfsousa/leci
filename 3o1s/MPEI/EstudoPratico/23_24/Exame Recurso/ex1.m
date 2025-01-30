%% a)

T = [ 0.6 0 0.1 0.1 0 0;
        0.2 0 0.3 0 0 0;
        0 0.4 0 0 0 0;
        0.2 0.6 0.4 0 0 0;
        0 0 0.2 0.4 1 0;
        0 0 0 0.5 0 1 ];

% Verificação se a matriz está bem
sum(T);
T>=0 & T<=1;

%% b)

Q = T(1:4,1:4);
F = inv(eye(length(Q)) - Q);

numero_medio = sum(F(:,4))+1;

fprintf("Número médio %6.4f\n", numero_medio);

%% c)

N = 1e6;
vezesR = 0;
vezesL = 0;

for n = 1:N
    state = crawl(T,2,[5 6]);
    if state(length(state)) == 5
        vezesR = vezesR + 1;
    end
    if state(length(state)) == 6
        vezesL = vezesL + 1;
    end
end

fprintf("Probabilidade Real %6.4f\n", vezesR/N);
fprintf("Probabilidade Liverpool %6.4f\n", vezesL/N);