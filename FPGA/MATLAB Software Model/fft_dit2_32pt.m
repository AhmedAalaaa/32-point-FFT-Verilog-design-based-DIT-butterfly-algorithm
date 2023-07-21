clc, clear, close all
% x = [1, 0, -1, 1, 0, -1, 1, 0, -1, 1, 0, -1, 1, 0, -1, 1, 0, -1, ...
%    1, 0, -1, 1, 0, -1, 1, 0, -1, 1, 0, -1, 1, 0];

% x = [2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, ...
%    6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9];

 x = [1, 0, 2, 1, 0, 2, 1, 0, 2, 1, 0, 2, 1, 0, 2, 1, 0, 2, ...
     1, 0, 2, 1, 0, 2, 1, 0, 2, 1, 0, 2, 1, 0];
length(x)
ID = fopen('input.txt', 'w');
for i = 1:32
   fprintf(ID, '%.5f\n', x(i));
end
fclose(ID);
% x = linspace(1,32, 32);
X_ref = fft(x, 32);
X_est = zeros(1, 32);
dummy = 1;
a = zeros(1, 32);
b = zeros(1, 32);
c = zeros(1, 32);
d = zeros(1, 32);

% Create the hardware model
twiddle_rom_real = [1,      ...
                    0.981,  ...
                    0.924,  ...
                    0.831,  ...
                    0.707,  ...
                    0.556,  ...
                    0.383,  ...
                    0.195,  ...
                    0,      ...
                    -0.195, ...
                    -0.383, ...
                    -0.556, ...
                    -0.707, ...
                    -0.831, ...
                    -0.924, ...
                    -0.981];

ID = fopen('twiddle_real.txt', 'w');
for i = 1:16
   fprintf(ID, '%.5f\n', twiddle_rom_real(i));
end
fclose(ID);

twiddle_rom_imag = [0,      ...
                    0.195,  ...
                    0.383,  ...
                    0.556,  ...
                    0.707,  ...
                    0.831,  ...
                    0.924,  ...
                    0.981,  ...
                    1.000,  ...
                    0.981,  ...
                    0.924,  ...
                    0.831,  ...
                    0.707,  ...
                    0.556,  ...
                    0.383,  ...
                    0.195];

ID = fopen('twiddle_imag.txt', 'w');
for i = 1:16
   fprintf(ID, '%.5f\n', twiddle_rom_imag(i));
end
fclose(ID);

% Stage 1
a(0 + dummy) = x(0 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(16 + dummy));
a(1 + dummy) = x(0 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(16 + dummy));

a(2 + dummy) = x(8 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(24 + dummy));
a(3 + dummy) = x(8 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(24 + dummy));

a(4 + dummy) = x(4 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(20 + dummy));
a(5 + dummy) = x(4 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(20 + dummy));

a(6 + dummy) = x(12 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(28 + dummy));
a(7 + dummy) = x(12 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(28 + dummy));

a(8 + dummy) = x(2 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(18 + dummy));
a(9 + dummy) = x(2 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(18 + dummy));

a(10 + dummy) = x(10 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(26 + dummy));
a(11 + dummy) = x(10 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(26 + dummy));

a(12 + dummy) = x(6 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(22 + dummy));
a(13 + dummy) = x(6 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(22 + dummy));

a(14 + dummy) = x(14 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(30 + dummy));
a(15 + dummy) = x(14 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(30 + dummy));

a(16 + dummy) = x(1 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(17 + dummy));
a(17 + dummy) = x(1 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(17 + dummy));

a(18 + dummy) = x(9 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(25 + dummy));
a(19 + dummy) = x(9 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(25 + dummy));

a(20 + dummy) = x(5 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(21 + dummy));
a(21 + dummy) = x(5 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(21 + dummy));

a(22 + dummy) = x(13 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(29 + dummy));
a(23 + dummy) = x(13 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(29 + dummy));

a(24 + dummy) = x(3 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(19 + dummy));
a(25 + dummy) = x(3 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(19 + dummy));

a(26 + dummy) = x(11 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(27 + dummy));
a(27 + dummy) = x(11 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(27 + dummy));

a(28 + dummy) = x(7 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(23 + dummy));
a(29 + dummy) = x(7 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(23 + dummy));

a(30 + dummy) = x(15 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(31 + dummy));
a(31 + dummy) = x(15 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * x(31 + dummy));

% Stage 2
b(0 + dummy) = a(0 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * a(2 + dummy));
b(2 + dummy) = a(0 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * a(2 + dummy));
b(1 + dummy) = a(1 + dummy) + ((twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * a(3 + dummy));
b(3 + dummy) = a(1 + dummy) - ((twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * a(3 + dummy));

b(4 + dummy) = a(4 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * a(6 + dummy));
b(6 + dummy) = a(4 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * a(6 + dummy));
b(5 + dummy) = a(5 + dummy) + ((twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * a(7 + dummy));
b(7 + dummy) = a(5 + dummy) - ((twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * a(7 + dummy));

b(8 + dummy)  = a(8 + dummy)    + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * a(10 + dummy));
b(10 + dummy) = a(8 + dummy)    - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * a(10 + dummy));
b(9 + dummy)  = a(9 + dummy)    + ((twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * a(11 + dummy));
b(11 + dummy) = a(9 + dummy)    - ((twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * a(11 + dummy));

b(12 + dummy) = a(12 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * a(14 + dummy));
b(14 + dummy) = a(12 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * a(14 + dummy));
b(13 + dummy) = a(13 + dummy) + ((twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * a(15 + dummy));
b(15 + dummy) = a(13 + dummy) - ((twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * a(15 + dummy));

b(16 + dummy) = a(16 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * a(18 + dummy));
b(18 + dummy) = a(16 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * a(18 + dummy));
b(17 + dummy) = a(17 + dummy) + ((twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * a(19 + dummy));
b(19 + dummy) = a(17 + dummy) - ((twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * a(19 + dummy));

b(20 + dummy) = a(20 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * a(22 + dummy));
b(22 + dummy) = a(20 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * a(22 + dummy));
b(21 + dummy) = a(21 + dummy) + ((twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * a(23 + dummy));
b(23 + dummy) = a(21 + dummy) - ((twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * a(23 + dummy));

b(24 + dummy) = a(24 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * a(26 + dummy));
b(26 + dummy) = a(24 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * a(26 + dummy));
b(25 + dummy) = a(25 + dummy) + ((twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * a(27 + dummy));
b(27 + dummy) = a(25 + dummy) - ((twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * a(27 + dummy));

b(28 + dummy) = a(28 + dummy) + ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * a(30 + dummy));
b(30 + dummy) = a(28 + dummy) - ((twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * a(30 + dummy));
b(29 + dummy) = a(29 + dummy) + ((twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * a(31 + dummy));
b(31 + dummy) = a(29 + dummy) - ((twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * a(31 + dummy));

% Stage 3
c(0 + dummy) = b(0 + dummy) + ((    twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * b(4 + dummy));
c(4 + dummy) = b(0 + dummy) - ((    twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * b(4 + dummy));
c(1 + dummy) = b(1 + dummy) + ((    twiddle_rom_real(4 + dummy) - 1j * twiddle_rom_imag(4 + dummy)) * b(5 + dummy));
c(5 + dummy) = b(1 + dummy) - ((    twiddle_rom_real(4 + dummy) - 1j * twiddle_rom_imag(4 + dummy)) * b(5 + dummy));
c(2 + dummy) = b(2 + dummy) + ((    twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * b(6 + dummy));
c(6 + dummy) = b(2 + dummy) - ((    twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * b(6 + dummy));
c(3 + dummy) = b(3 + dummy) + ((    twiddle_rom_real(12 + dummy) - 1j * twiddle_rom_imag(12 + dummy)) * b(7 + dummy));
c(7 + dummy) = b(3 + dummy) - ((    twiddle_rom_real(12 + dummy) - 1j * twiddle_rom_imag(12 + dummy)) * b(7 + dummy));

c(8 + dummy)  = b(8 + dummy)     + ((    twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * b(12 + dummy));
c(12 + dummy) = b(8 + dummy)    - ((    twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * b(12 + dummy));
c(9 + dummy)  = b(9 + dummy)     + ((    twiddle_rom_real(4 + dummy) - 1j * twiddle_rom_imag(4 + dummy)) * b(13 + dummy));
c(13 + dummy) = b(9 + dummy)    - ((    twiddle_rom_real(4 + dummy) - 1j * twiddle_rom_imag(4 + dummy)) * b(13 + dummy));
c(10 + dummy) = b(10 + dummy)   + ((    twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * b(14 + dummy));
c(14 + dummy) = b(10 + dummy)   - ((    twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * b(14 + dummy));
c(11 + dummy) = b(11 + dummy)   + ((    twiddle_rom_real(12 + dummy) - 1j * twiddle_rom_imag(12 + dummy)) * b(15 + dummy));
c(15 + dummy) = b(11 + dummy)   - ((    twiddle_rom_real(12 + dummy) - 1j * twiddle_rom_imag(12 + dummy)) * b(15 + dummy));

c(16 + dummy) = b(16 + dummy) + ((  twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * b(20 + dummy));
c(20 + dummy) = b(16 + dummy) - ((  twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * b(20 + dummy));
c(17 + dummy) = b(17 + dummy) + ((  twiddle_rom_real(4 + dummy) - 1j * twiddle_rom_imag(4 + dummy)) * b(21 + dummy));
c(21 + dummy) = b(17 + dummy) - ((  twiddle_rom_real(4 + dummy) - 1j * twiddle_rom_imag(4 + dummy)) * b(21 + dummy));
c(18 + dummy) = b(18 + dummy) + ((  twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * b(22 + dummy));
c(22 + dummy) = b(18 + dummy) - ((  twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * b(22 + dummy));
c(19 + dummy) = b(19 + dummy) + ((  twiddle_rom_real(12 + dummy) - 1j * twiddle_rom_imag(12 + dummy)) * b(23 + dummy));
c(23 + dummy) = b(19 + dummy) - ((  twiddle_rom_real(12 + dummy) - 1j * twiddle_rom_imag(12 + dummy)) * b(23 + dummy));

c(24 + dummy) = b(24 + dummy) + ((  twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * b(28 + dummy));
c(28 + dummy) = b(24 + dummy) - ((  twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * b(28 + dummy));
c(25 + dummy) = b(25 + dummy) + ((  twiddle_rom_real(4 + dummy) - 1j * twiddle_rom_imag(4 + dummy)) * b(29 + dummy));
c(29 + dummy) = b(25 + dummy) - ((  twiddle_rom_real(4 + dummy) - 1j * twiddle_rom_imag(4 + dummy)) * b(29 + dummy));
c(26 + dummy) = b(26 + dummy) + ((  twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * b(30 + dummy));
c(30 + dummy) = b(26 + dummy) - ((  twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * b(30 + dummy));
c(27 + dummy) = b(27 + dummy) + ((  twiddle_rom_real(12 + dummy) - 1j * twiddle_rom_imag(12 + dummy)) * b(31 + dummy));
c(31 + dummy) = b(27 + dummy) - ((  twiddle_rom_real(12 + dummy) - 1j * twiddle_rom_imag(12 + dummy)) * b(31 + dummy));


% Stage 4
d(0 + dummy) = c(0 + dummy) + ((    twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * c(8 + dummy));
d(8 + dummy) = c(0 + dummy) - ((    twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * c(8 + dummy));
d(1 + dummy) = c(1 + dummy) + ((    twiddle_rom_real(2 + dummy) - 1j * twiddle_rom_imag(2 + dummy)) * c(9 + dummy));
d(9 + dummy) = c(1 + dummy) - ((    twiddle_rom_real(2 + dummy) - 1j * twiddle_rom_imag(2 + dummy)) * c(9 + dummy));
d(2 + dummy) = c(2 + dummy) + ((    twiddle_rom_real(4 + dummy) - 1j * twiddle_rom_imag(4 + dummy)) * c(10 + dummy));
d(10 + dummy) = c(2 + dummy) - ((   twiddle_rom_real(4 + dummy) - 1j * twiddle_rom_imag(4 + dummy)) * c(10 + dummy));
d(3 + dummy) = c(3 + dummy) + ((    twiddle_rom_real(6 + dummy) - 1j * twiddle_rom_imag(6 + dummy)) * c(11 + dummy));
d(11 + dummy) = c(3 + dummy) - ((   twiddle_rom_real(6 + dummy) - 1j * twiddle_rom_imag(6 + dummy)) * c(11 + dummy));
d(4 + dummy) = c(4 + dummy) + ((    twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * c(12 + dummy));
d(12 + dummy) = c(4 + dummy) - ((   twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * c(12 + dummy));
d(5 + dummy) = c(5 + dummy) + ((    twiddle_rom_real(10 + dummy) - 1j * twiddle_rom_imag(10 + dummy)) * c(13 + dummy));
d(13 + dummy) = c(5 + dummy) - ((   twiddle_rom_real(10 + dummy) - 1j * twiddle_rom_imag(10 + dummy)) * c(13 + dummy));
d(6 + dummy) = c(6 + dummy) + ((    twiddle_rom_real(12 + dummy) - 1j * twiddle_rom_imag(12 + dummy)) * c(14 + dummy));
d(14 + dummy) = c(6 + dummy) - ((   twiddle_rom_real(12 + dummy) - 1j * twiddle_rom_imag(12 + dummy)) * c(14 + dummy));
d(7 + dummy) = c(7 + dummy) + ((    twiddle_rom_real(14 + dummy) - 1j * twiddle_rom_imag(14 + dummy)) * c(15 + dummy));
d(15 + dummy) = c(7 + dummy) - ((   twiddle_rom_real(14 + dummy) - 1j * twiddle_rom_imag(14 + dummy)) * c(15 + dummy));

d(16 + dummy) = c(16 + dummy) + ((  twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * c(24 + dummy));
d(24 + dummy) = c(16 + dummy) - ((  twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * c(24 + dummy));
d(17 + dummy) = c(17 + dummy) + ((  twiddle_rom_real(2 + dummy) - 1j * twiddle_rom_imag(2 + dummy)) * c(25 + dummy));
d(25 + dummy) = c(17 + dummy) - ((  twiddle_rom_real(2 + dummy) - 1j * twiddle_rom_imag(2 + dummy)) * c(25 + dummy));
d(18 + dummy) = c(18 + dummy) + ((  twiddle_rom_real(4 + dummy) - 1j * twiddle_rom_imag(4 + dummy)) * c(26 + dummy));
d(26 + dummy) = c(18 + dummy) - ((  twiddle_rom_real(4 + dummy) - 1j * twiddle_rom_imag(4 + dummy)) * c(26 + dummy));
d(19 + dummy) = c(19 + dummy) + ((  twiddle_rom_real(6 + dummy) - 1j * twiddle_rom_imag(6 + dummy)) * c(27 + dummy));
d(27 + dummy) = c(19 + dummy) - ((  twiddle_rom_real(6 + dummy) - 1j * twiddle_rom_imag(6 + dummy)) * c(27 + dummy));
d(20 + dummy) = c(20 + dummy) + ((  twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * c(28 + dummy));
d(28 + dummy) = c(20 + dummy) - ((  twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * c(28 + dummy));
d(21 + dummy) = c(21 + dummy) + ((  twiddle_rom_real(10 + dummy) - 1j * twiddle_rom_imag(10 + dummy)) * c(29 + dummy));
d(29 + dummy) = c(21 + dummy) - ((  twiddle_rom_real(10 + dummy) - 1j * twiddle_rom_imag(10 + dummy)) * c(29 + dummy));
d(22 + dummy) = c(22 + dummy) + ((  twiddle_rom_real(12 + dummy) - 1j * twiddle_rom_imag(12 + dummy)) * c(30 + dummy));
d(30 + dummy) = c(22 + dummy) - ((  twiddle_rom_real(12 + dummy) - 1j * twiddle_rom_imag(12 + dummy)) * c(30 + dummy));
d(23 + dummy) = c(23 + dummy) + ((  twiddle_rom_real(14 + dummy) - 1j * twiddle_rom_imag(14 + dummy)) * c(31 + dummy));
d(31 + dummy) = c(23 + dummy) - ((  twiddle_rom_real(14 + dummy) - 1j * twiddle_rom_imag(14 + dummy)) * c(31 + dummy));

% Stage 5
X_est(0 + dummy)    = d(0 + dummy) + (( twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * d(16 + dummy));
X_est(16 + dummy)   = d(0 + dummy) - (( twiddle_rom_real(0 + dummy) - 1j * twiddle_rom_imag(0 + dummy)) * d(16 + dummy));

X_est(1 + dummy)    = d(1 + dummy) + (( twiddle_rom_real(1 + dummy) - 1j * twiddle_rom_imag(1 + dummy)) * d(17 + dummy));
X_est(17 + dummy)   = d(1 + dummy) - (( twiddle_rom_real(1 + dummy) - 1j * twiddle_rom_imag(1 + dummy)) * d(17 + dummy));

X_est(2 + dummy)    = d(2 + dummy) + (( twiddle_rom_real(2 + dummy) - 1j * twiddle_rom_imag(2 + dummy)) * d(18 + dummy));
X_est(18 + dummy)   = d(2 + dummy) - (( twiddle_rom_real(2 + dummy) - 1j * twiddle_rom_imag(2 + dummy)) * d(18 + dummy));

X_est(3 + dummy)    = d(3 + dummy) + (( twiddle_rom_real(3 + dummy) - 1j * twiddle_rom_imag(3 + dummy)) * d(19 + dummy));
X_est(19 + dummy)   = d(3 + dummy) - (( twiddle_rom_real(3 + dummy) - 1j * twiddle_rom_imag(3 + dummy)) * d(19 + dummy));

X_est(4 + dummy)    = d(4 + dummy) + (( twiddle_rom_real(4 + dummy) - 1j * twiddle_rom_imag(4 + dummy)) * d(20 + dummy));
X_est(20 + dummy)   = d(4 + dummy) - (( twiddle_rom_real(4 + dummy) - 1j * twiddle_rom_imag(4 + dummy)) * d(20 + dummy));

X_est(5 + dummy)    = d(5 + dummy) + (( twiddle_rom_real(5 + dummy) - 1j * twiddle_rom_imag(5 + dummy)) * d(21 + dummy));
X_est(21 + dummy)   = d(5 + dummy) - (( twiddle_rom_real(5 + dummy) - 1j * twiddle_rom_imag(5 + dummy)) * d(21 + dummy));

X_est(6 + dummy)    = d(6 + dummy) + (( twiddle_rom_real(6 + dummy) - 1j * twiddle_rom_imag(6 + dummy)) * d(22 + dummy));
X_est(22 + dummy)   = d(6 + dummy) - (( twiddle_rom_real(6 + dummy) - 1j * twiddle_rom_imag(6 + dummy)) * d(22 + dummy));

X_est(7 + dummy)    = d(7 + dummy) + (( twiddle_rom_real(7 + dummy) - 1j * twiddle_rom_imag(7 + dummy)) * d(23 + dummy));
X_est(23 + dummy)   = d(7 + dummy) - (( twiddle_rom_real(7 + dummy) - 1j * twiddle_rom_imag(7 + dummy)) * d(23 + dummy));

X_est(8 + dummy)    = d(8 + dummy) + (( twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * d(24 + dummy));
X_est(24 + dummy)   = d(8 + dummy) - (( twiddle_rom_real(8 + dummy) - 1j * twiddle_rom_imag(8 + dummy)) * d(24 + dummy));

X_est(9 + dummy)    = d(9 + dummy) + (( twiddle_rom_real(9 + dummy) - 1j * twiddle_rom_imag(9 + dummy)) * d(25 + dummy));
X_est(25 + dummy)   = d(9 + dummy) - (( twiddle_rom_real(9 + dummy) - 1j * twiddle_rom_imag(9 + dummy)) * d(25 + dummy));

X_est(10 + dummy)   = d(10 + dummy) + (( twiddle_rom_real(10 + dummy) - 1j * twiddle_rom_imag(10 + dummy)) * d(26 + dummy));
X_est(26 + dummy)   = d(10 + dummy) - (( twiddle_rom_real(10 + dummy) - 1j * twiddle_rom_imag(10 + dummy)) * d(26 + dummy));

X_est(11 + dummy)   = d(11 + dummy) + (( twiddle_rom_real(11 + dummy) - 1j * twiddle_rom_imag(11 + dummy)) * d(27 + dummy));
X_est(27 + dummy)   = d(11 + dummy) - (( twiddle_rom_real(11 + dummy) - 1j * twiddle_rom_imag(11 + dummy)) * d(27 + dummy));

X_est(12 + dummy)   = d(12 + dummy) + (( twiddle_rom_real(12 + dummy) - 1j * twiddle_rom_imag(12 + dummy)) * d(28 + dummy));
X_est(28 + dummy)   = d(12 + dummy) - (( twiddle_rom_real(12 + dummy) - 1j * twiddle_rom_imag(12 + dummy)) * d(28 + dummy));

X_est(13 + dummy)   = d(13 + dummy) + (( twiddle_rom_real(13 + dummy) - 1j * twiddle_rom_imag(13 + dummy)) * d(29 + dummy));
X_est(29 + dummy)   = d(13 + dummy) - (( twiddle_rom_real(13 + dummy) - 1j * twiddle_rom_imag(13 + dummy)) * d(29 + dummy));

X_est(14 + dummy)   = d(14 + dummy) + (( twiddle_rom_real(14 + dummy) - 1j * twiddle_rom_imag(14 + dummy)) * d(30 + dummy));
X_est(30 + dummy)   = d(14 + dummy) - (( twiddle_rom_real(14 + dummy) - 1j * twiddle_rom_imag(14 + dummy)) * d(30 + dummy));

X_est(15 + dummy)   = d(15 + dummy) + (( twiddle_rom_real(15 + dummy) - 1j * twiddle_rom_imag(15 + dummy)) * d(31 + dummy));
X_est(31 + dummy)   = d(15 + dummy) - (( twiddle_rom_real(15 + dummy) - 1j * twiddle_rom_imag(15 + dummy)) * d(31 + dummy));

plot(abs(X_ref))
title('FFT reference')
figure
plot(abs(X_est))
title('FFT estimated')

ID = fopen('output_real.txt', 'w');
for i = 1:32
   fprintf(ID, '%.5f\n', real(X_est(i)));
end
fclose(ID);

ID = fopen('output_imag.txt', 'w');
for i = 1:32
   fprintf(ID, '%.5f\n', imag(X_est(i)));
end
fclose(ID);
