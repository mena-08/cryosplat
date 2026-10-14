PARTICLES=/mnt/data/cryosplat-data/cryodrgn_empiar/empiar10028/inputs/particles.256.txt
POSES=/mnt/data/cryosplat-data/cryodrgn_empiar/empiar10028/inputs/poses.pkl
CTF=/mnt/data/cryosplat-data/cryodrgn_empiar/empiar10028/inputs/ctf.pkl
OUTDIR='/mnt/data/cryosplat-data/experiments/output_gmm_homo_10028' # rename as desired

python train_gmm_homo.py $PARTICLES --poses $POSES --ctf $CTF -o $OUTDIR --num-points 32768 -n 4 --gamma 0.1 --lazy "$@" #--no-half-maps