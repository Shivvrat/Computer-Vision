xmap = colormap('gray'); 
img01 = imagesc(z); 
print( gcf, '-dpng', fullfile( pwd, 'img01.png' ) ); 