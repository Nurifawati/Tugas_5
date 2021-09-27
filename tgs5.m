%Penjumlahan
figure(1);
a = imread('ifaaaa.jpg');
b = rgb2gray(a);
c = imread('poli.jpg');
d = rgb2gray(c);
e = imresize(d,[825 720]);
imshow(e)
f = b+e;
imshow(f)

%Pengurangan
a = imread('ifaaaa.jpg');
b = rgb2gray(a);
c = imread('poli.jpg');
d = rgb2gray(c);
figure(2);
e = imresize(d,[825 720]);
imshow(e)
f = b-e;
imshow(f)

%Perkalian
figure(3);
a = imread('ifaaaa.jpg');
b = rgb2gray(a);
c = b.*2;
imshow(c)

%Pembagian 
figure(4);
a = imread('ifaaaa.jpg');
b = rgb2gray(a);
c = b./2;
imshow(c)

%Logika AND
a = imread('ifaaaa.jpg');
b = rgb2gray(a);
c = imread('poli.jpg');
d = rgb2gray(c);
figure(5);
e = imresize(d,[825 720]);
imshow(e)
f = and(b,e);
imshow(f)

%Logika OR
a = imread('ifaaaa.jpg');
b = rgb2gray(a);
c = imread('poli.jpg');
d = rgb2gray(c);
figure(6);
e = imresize(d,[825 720]);
imshow(e)
f = or(b,e);
imshow(f)

%Logika XOR
a = imread('ifaaaa.jpg');
b = rgb2gray(a);
c = imread('poli.jpg');
d = rgb2gray(c);
figure(7);
e = imresize(d,[825 720]);
imshow(e)
f = xor(b,e);
imshow(f)

%Logika NOT
figure(8);
a = imread('ifaaaa.jpg');
b = im2bw(a,0.3);
c = not(b);
imshow(c)

%Operasi Penskalaan
figure(9);
a = imread('ifaaaa.jpg');
[m,n] = size(a);
skala = 1.5;
for m = 2:m
    for n = 2:n
        hasil1(round(skala*(m-1)-1),round(skala*(n-1))) = a(m-1,n-1);
    end
end
subplot(1,2,1);imshow(a);title('Citra Asli');
subplot(2,2,2);imshow(a);title('Hasil Pengskalaan');

%Operasi Refleksi
figure(10);
a = imread('ifaaaa.jpg');
b = fliplr(a);
imshow(b)

