function G = configuration_goodness(rbm_w, visible_state, hidden_state)
% <rbm_w> is a matrix of size <number of hidden units> by <number of visible units>
% <visible_state> is a binary matrix of size <number of visible units> by <number of configurations that we're handling in parallel>.
% <hidden_state> is a binary matrix of size <number of hidden units> by <number of configurations that we're handling in parallel>.
% This returns a scalar: the mean over cases of the goodness (negative energy) of the described configurations.
    % error('not yet implemented');
    case_size = size(visible_state, 2);
    wv = rbm_w * visible_state;  % size <number of hidden units> by <number of configurations that we're handling in parallel>
    G = 0.0;
    for i=1:case_size
      G = G + hidden_state(:,i)' * wv(:,i);
    end
    G = G / case_size;
end
