
%lrs = 0.0025:5e-4:0.010;
%for i=1:length(lrs)
%  lr = lrs(i);
%  fprintf("\nStart Training learning_rate %f\n", lr);
%  a4_main(300, 0.02, lr, 1000);
%  fflush(1);
%end

function logp = test4(w)
  [h, v] = size(w);
  hmat = eye(h);
  p = 0;
  ph = 2^h;
  hv = zeros(10, 1);
  for i=1:ph
    hv = next(hv);
    state = w' * hv;
    p = p + prod(state);
  end
  logp = log(p);
end

function z = prod(state)
  z = 1;
  n = length(state);
  for i=1:n
    z = z * (1 + exp(state(i)));
  end
end

function hn = next(hp)
  pls = 1; 
  for i=1:length(hp)
    if pls == 0
      break
    elseif hp(i) == 0 && pls == 1
      hp(i) = 1;
      pls = 0;
    elseif hp(i) == 1 && pls == 1
      hp(i) = 0;
    end
  end
  hn = hp;
end
