%MAXFLOW
W=[0 100 100 0 0 0 0;
    0 0 30 80 60 0 0;
    0 0 0 0 40 50 0;
    0 0 0 0 30 0 70;
    0 0 0 0 0 20 100;
    0 0 0 0 0 0 80;
    0 0 0 0 0 0 0]
labels={'A','B','C','D','E','F','G'};

view(biograph(sparse(W),labels,'ShowWeights','on'))
%visualize the network
[M,F] = graphmaxflow(sparse(W),1,7)
%M = max flow, F = flow network
%1=source node
%7=terminal node
%if you want to get the flow in full matrix format
%(not sparse format) type in the command window
view(biograph(F,labels,'ShowWeights','on'))
%Or [M,F] = graphmaxflow(full(F),1,7)
%visualize the flow network
