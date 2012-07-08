{ �������� ����� A(S) �������� �� R �� �������� S-����������. ����� �����
����������� ����� ������������ ����� ����� b-1 ����� �(R) . �����, ��������
����� �����, �������� ������� ����� �� R . ��� ���� ���������� �����, �����
����� �������� ���� ����� b-2 . ��������� ������� ��������� l ���, ���� �� �����
������� ��� l ���� ����� A(R). }

const
     N = 0.12345678;
     MaxP = 5;
     epsMaxP = 1e-5; {��������� ��������}
     Base = 5; {��������� �������}

var
     i: integer;
     r, {��������� � ������� -i }
     t, {��������� � ������� i (������� ������������ � ����� ���������� �� ���������)}
     Num,  {�������� ������� �����}
     coef,  {����������� ����� r, ������� �� ��������� ��� ������� ����������}
     outn: single; {����������� �����, ������ ���� � ��������� �� MaxP ������}

begin
     Num := N;
     writeln (Num:10:5);

     outn := 0.0;

     t := 1.0;
     for i := 1 to MaxP do
     begin
          t := t * Base;
          r := 1.0 / t; {r = base^(-i)}

          Num := Num * Base; {�������� ������� ����� �� ���������}
          coef := Trunc(Num); {����� ����� ����� ���� �����������}
          Num := Num - coef; {����������� ����� �����}

          outn := outn + coef * r;

          write (coef:4:0);
     end;

     writeln;
     writeln (outn:10:6);
end.