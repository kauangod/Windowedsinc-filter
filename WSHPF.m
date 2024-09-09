function[H]=WSHPF(M,fc)
    H=-WSLPF(M,fc); 
    H(round(M/2))=H(round(M/2))+1; 
end