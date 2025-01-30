% Problema das 4 páginas Web
estados = [1 2 3 4];
% Matriz de transição
T = [0.8 0 0.3 0; 0.2 0.9 0.2 0; 0 0.1 0.4 0; 0 0 0.1 1];
Q = T(1:3,1:3);
R = T(4,1:3);
% Cálculo da matriz fundamental
F = (eye(size(Q)) - Q)^-1;
% Cálculo dos tempos médios até absorção
t = F'*ones(3,1);

fprintf(1, 'resultados:\nnº médio de visitas às páginas 1, 2, 3 partindo de 1:\n')

disp(rats(F(:, 1), 2))
fprintf(1, 'nº médio até à absorção partindo das páginas 1, 2, 3:\n')
disp(rats(t, 2))

B = R*F;
disp(rats(B, 2))