clear;
a = input ('matrik a = ');
b = input ('matrik b = ');
clc;
disp ('matrik a = ');
disp (a);
disp ('matrik b = ');
disp (b);
Da = det (a);
fprintf('Determinan a = %d \n \n', Da);
[Ba, Ka] = size (a);
[Bb, Kb] = size (b);
if (Ba == Ka) & (Bb == Ba) & (Kb == 1)
  if Da ~= 0
    nb = a;
    for j=1:Ba
      for i=1:Ba
        nb (i,j) = b (i,1);
      end
      Dnb = det (nb);
      p = Dnb/Da;
      fprintf('matrik bantu ke %d = \n',j);
      fprintf('Determinan = %d \n',Dnb);
      disp(nb);
      fprintf('\n Penyelesaian ke %d = %.1f \n \n',j,p);
      nb = a;
    end
  else
    disp ('Tidak Ada Penyelesaian');
  end
else
  disp ('matrik salah');
  end
  