# --- Archivo: .latexmkrc (en la raíz del repo) ---

# Archivo(s) raíz por defecto (así puedes correr solo `latexmk`)
@default_files = ('src/main.tex');

# Directorios de salida (PDF + temporales)
$out_dir = 'built';
$aux_dir = 'built';

# Modo PDF y comportamiento de pdflatex
$pdf_mode = 1;                         # -pdf
$interaction = 'nonstopmode';
$recorder = 1;                         # compiles más rápidas/incrementales

# Motor LaTeX (puedes cambiar a xelatex o lualatex si quieres)
$pdflatex = 'pdflatex %O -interaction=nonstopmode -halt-on-error -synctex=1 %S';

# Si usas Biber, latexmk lo detecta; reforzamos rutas de I/O en build
$biber = 'biber --input-directory=build --output-directory=build %B';

# (Opcional) Si usas minted/listings con Pygments:
# $pdflatex = 'pdflatex %O -shell-escape -interaction=nonstopmode -halt-on-error -synctex=1 %S';

# Limpieza extra útil (glossaries, nomencl, synctex, etc.)
$clean_ext .= ' %R.glg %R.glo %R.gls %R.glsdefs %R.bbl %R.bcf %R.run.xml %R.acn %R.acr %R.alg %R.synctex.gz';

