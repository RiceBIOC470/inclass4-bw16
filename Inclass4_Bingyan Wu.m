%Inclass assignment 4. Due at the start of class on 9/12/17

%1. (a) Write code that makes a file with the words "Random numbers 1" on its
%own line, then 10 lines with 13 random numbers each, then "Random numbers
%2" on its own line, then 9 lines with 7 random numbers each. (b) Write code
%that reads only the first line of random numbers in the file and stores
%them as numbers in an array. 

filename = 'random_number';
fid=fopen(filename,'w');
fprintf(fid,'Random numbers 1\n');
for i=1:10
   rand_num1=rand(1,13);
   str=num2str(rand_num1);
   fprintf(fid,'%s\n',str);
end        
fprintf(fid,'Random numners 2\n');
for j=1:9
    rand_num2=rand(1,7);
    str=num2str(rand_num2);
    fprintf(fid,'%s\n',str);
end

fid = fopen(filename,'r');
array=[];
for i=1:2
    line1=fgetl(fid);
end
s=strsplit(line1);
for j=1:length(s)
    array(j)=str2num(s{j});
end
array

% 2. Write a function that takes an array as input and returns a logical
% variable which is true if the sum of the numbers in the array is greater
% than or equal to 10 and false if it is less than 10.

function y=sum10(x)
sumarray=sum(x)
if sumarray<10
    y=false
else
    y=true
end
