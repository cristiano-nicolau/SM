function [Simbolos,Frequencia] = Alfabeto2(Texto)
    N = length(Texto);
    n = 1;
    Simbolos(n) = Texto(1);
    Frequencia(n) = sum(Texto == Simbolos(n))/N * 100;

    for k= 2:length(Texto)
        if sum(Simbolos==Texto(k)) == 0
            n = n+1;
            Simbolos(n) = Texto(k);
            Frequencia(n) = sum(Texto == Simbolos(n))/N * 100;
        end
    end
end