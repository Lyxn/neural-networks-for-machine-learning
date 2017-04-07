
lrs = [0.002, 0.01, 0.05, 0.2, 1.0, 5.0, 20.0];
moments = [0, 0.9];
for j=1:2
  for i=1:7
    lr = lrs(i);
    m = moments(j);
    fprintf("\nStarting optimization moment %f, learning_rate %f\n", m, lr);
    a3(0, 10, 70, lr, m, false, 4);
  end
end

wds = [0.0001, 0.001, 0.1, 1, 10];
for i=1:5
  wd = wds(i);
  fprintf("\nStarting optimization wd_coefficeint %f\n", wd);
  a3(wd, 200, 1000, 0.35, 0.9, false, 100);
end

hids = [10, 30, 100, 130, 200];
for i=1:5
  hid = hids(i);
  fprintf("\nStarting optimization hidden_units %d\n", hid);
  a3(0, hid, 1000, 0.35, 0.9, false, 100);
end

hids = [18, 37, 83, 113, 236];
for i=1:5
  hid = hids(i);
  fprintf("\nStarting optimization hidden_units %d\n", hid);
  a3(0, hid, 1000, 0.35, 0.9, true, 100);
end