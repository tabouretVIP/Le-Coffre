$pdf_mode = 1;
$out_dir = 'out';

# Crée les sous-dossiers nécessaires dans out/ (ex: out/Chapitres)
$emulate_aux = 1;
$aux_dir = 'out';

use Cwd;
my $course = (split('/', getcwd()))[-1];
my $dest = "../../cours/$course";

$success_cmd = "mkdir -p $dest && cp out/main.pdf $dest/$course.pdf";