function[H]= WSLPF(M,fc)
    for i=1:M
        if i-M/2==0
            H(i)=2*pi*fc;
        else
            H(i)=sin(2*pi*fc*(i-M/2))/(i-M/2);
        end
        H(i)=H(i)*(0.42-0.5*cos((2*pi*i)/M)+0.08*cos((4*pi*i)/M));
    end
    sum=0;
    for i=1:M
        sum=sum+H(i);
    end
    for i=1:M
        H(i)=H(i)/sum;
    end
end