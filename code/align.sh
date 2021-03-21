#! /bin/bash -l

#SBATCH --account=angsd_class
#SBATCH --partition=angsd_class   # cluster-specific
#SBATCH --nodes=1
#SBATCH --cpus-per-task=20
#SBATCH --ntasks=1
#SBATCH --job-name=count_cov
#SBATCH --time=80:00:00   # HH/MM/SS
#SBATCH --mem=60G   # memory requested, units available: K,M,G,T
 
source ~/.bashrc

cd /athena/angsd/scratch/zhp4001/data
for s in SRR12953537; do
echo Aligning $s...
hisat2 -q -x ../refGenome/genomeIdx/genome -1 ${s}_1.fastq.gz -2 ${s}_2.fastq.gz -S alignments/$s.sam
# convert sam to bam
samtools view -bS alignments/$s.sam | samtools sort > alignments/$s.sorted.bam
rm alignments/$s.sam
done

exit
