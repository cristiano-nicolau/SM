Filename="imagem_a_criar.raw";
[Image, ColorMap] = imread("Parede_8bit.bmp"); %lê imagem
Save8bitImage(Filename, Image);
[N, M, Im]= Load8bitStream(Filename);
Im = uint8(Im);    %terá a ver com a codificação em 8 bits
stream = EncodeImage_RLE(Im);
Save8BitStream('exercicio5.str',N,M,stream);