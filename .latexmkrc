$pdf_previewer = "zathura %O %S"; 
$pdf_update_method = 1;
$clean_ext = 'rel paux lox pdfsync acn acr alg aux bbl bcf blg brf fdb_latexmk glg glo gls idx tdo ilg ind ist lof log lot out run.xml toc dvi snm synctex.gz nav';
$pdflatex = 'lualatex %O -interaction=nonstopmode -synctex=1 %S';
$pdf_mode = 1;

# make latexmk run makeglossaries automatically
add_cus_dep('glo', 'gls', 0, 'makeglossaries');
add_cus_dep('acn', 'acr', 0, 'makeglossaries');
 
sub makeglossaries {
    system "makeglossaries $_[0]";
    if ( -z "$_[0].glo" ) {
        open GLS, ">$_[0].gls";
        close GLS;
    }
    return 0;
}
