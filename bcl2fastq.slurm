#!/bin/bash
#SBATCH --account=weisenbe_1344
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=64GB
#SBATCH --time=8:00:00

module load intel/18.0.4
module load bcl2fastq2/2.20.0.422

bcl2fastq --runfolder-dir /project/weisenbe_1344/Complete_David_870_Project_Directory_Transfer/Projects/bcl2fastq/MarettiGarcia_20241028/bcl --output-dir /project/weisenbe_1344/Complete_David_870_Project_Directory_Transfer/Projects/bcl2fastq/MarettiGarcia_20241028/fastqs --sample-sheet /project/weisenbe_1344/Complete_David_870_Project_Directory_Transfer/Projects/bcl2fastq/MarettiGarcia_20241028/SampleSheet.csv --minimum-trimmed-read-length 0 --use-bases-mask y*,i*,n*,y*
