function visible_probability = hidden_state_to_visible_probabilities(rbm_w, hidden_state)
% <rbm_w> is a matrix of size <number of hidden units> by <number of visible units>
% <hidden_state> is a binary matrix of size <number of hidden units> by <number of configurations that we're handling in parallel>.
% The returned value is a matrix of size <number of visible units> by <number of configurations that we're handling in parallel>.
% This takes in the (binary) states of the hidden units, and returns the activation probabilities of the visible units, conditional on those states.
   % not yet implemented');
    visible_input = rbm_w' * hidden_state;  % size <number of visible units> by <number of configurations that we're handling in parallel>.
    visible_probability = 1 ./ (1 + exp(-visible_input));
end
