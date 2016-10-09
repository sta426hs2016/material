
# Part 1 - Brainstorm: Statistics

## Distributions
### e.g., Gaussian, Poisson, ..

## Statistical Models
## Methods for Estimation
## Methods for Hypothesis Testing

# Part 2 - Brainstorm: Technologies in Biology

## microarray, sequencing, etc.

## In-class exercise 1 (1 technology for each row): microarray, Illumina seq, other types of seq

### Goal: 
#### produce a 2-3 point summary
#### links to a few (<5) good resources
#### add your description to the #technology_day slack channel (add all github usernames of your group!)

# Part 3 - Brainstorm: Applications in genomics 

### e.g., gene expression

# Part 4 - Brainstorm: Linking Technologies to Applications to Statistics (mainstream)

## e.g., microarray -> gene expression -> normally distributed (log intensities)

## In-class exercise 2 (in groups/rows): 
### Goal: make the link between technologies, what is measured, statistical models used
### For example:
##### RNA-seq: sequencing -> gene expression -> ?
##### BS-seq: bisulphite + sequencing -> DNA methylation -> ?
##### ChIP-seq: sequencing -> protein/DNA interactions -> ?


# Part 5 - Brainstorm: Methods/algorithms/data structures that are associated more to computer science

# Part 6 - Pick another "technology" (from those above or from [1]) to briefly describe

Group: M. Bizzozzero, F. Eichenberger, A. Schnider, F. Lampart, V. Souza

Technology: RAD Seq

|Technology     |  Application		                             | Statistical Model                |
|:-------------:|:--------------------------------------------:|:--------------------------------:|
|RAD Sequencing	|  Identification of genetic variation (SNPs)	 | Bayesian (genotype likelihood)   |

Inexpensive platform that allows high-density SNP discovery and genotyping in large populations.   
Genotyping by sequencing:  
o	No ascertainment bias.   
o	Restriction enzyme cuts DNA -> fragments have different length  
o	Sort fragments by length and sequence only fragments in specific size range (how big genome size, coverage & budget determines how big range is)   
o Tag for each individual/pops -> can make multiplex and individually assign amplified sequences   

--

Technology: CirSeq (Row 2: saisomesh2594, fionarhuang, rzgar, khembach, setina42, bunnech, leewayleaf)

CirSeq is a technology specifically devoted to improving existing methods of sequencing circularised nucleic acid strands, such as the genomic RNA of poliovirus. This is important because it could potentially increase our understanding of viral genomic changes during the course of evolution. Our current knowledge of viral genomic sequences is challenged by the huge diversity and rapid adaptation rates of viruses in general. Whilst NGS technologies are adequate in characteristic viral populations as a whole, they nonetheless have limited usefulness, since most gene variants are present only at very low frequencies and may thus be interpreted as false negatives during data curation.

In this technology, fragments of the circularised viral genome first serve as templates for rolling-circle replication, which produces tandem repeats of the fragments. The tandem repeats then serve as substrates for NGS, before the sequenced repeats are aligned to generate a consensus sequence. It is the physical linkage of the repeats during rolling-circle replication that provides sequence redundancy for a genomic fragment derived from a single individual within a population of viruses. To test for a decrease in the rate of NGS sequencing errors, CirSeq was tested using Illumina as the NGS technology. The statistical model used in this test was a one-sided Binomial test.

The rest of this paper focusses on an application of CirSeq in studying mutant variants and in turn the reproductive fitness in a given population of polioviruses. Here, an additional statistical model was used, namely a Bayesian autoregression approach.

--

Technology: CNV-seq

Group: payne76, ellereve, pbieberstein, abhimanyusahai, duoa, paulacarrio

CNV-seq is a shotgun sequencing method used to detect copy number variation (CNV). Shotgun reads from two samples are mapped by sequence alignment on a template genome and analyzed with a sliding window approach so that number of reads per window for each sample can be computed and combined into a ratio. The number of reads in a sliding window is poisson distributed with mean number of reads/window, $\lambda$, depending on total number of sequenced reads N, the size of the sliding window W, and the size of the genome G, where W is much less than G, but when mean number of reads per window is more than 10 with continuity correction, we may use a gaussian approximation for the poisson (Number of reads in sliding window $\sim N(\mu=\lambda, \sigma^{2}=\lambda))$. After a transformation, the ratio between the two samples is $\sim N(0,1)$, when mean number of reads per window in sample y is more than 6 and less than 40,000 in sample x.

--

Technology: Freq-Seq

Group: cschiess, kli8996, jkunzethz, hwartmann 

|Technology     |  Application		                             | Statistical Model                |
|:-------------:|:--------------------------------------------:|:--------------------------------:|
|Freq-Seq     	|  Determine allel frequencies	               | Quadratic model                  |

Fast and cheap measuring of allelic frequencies in mixed populations by counting Illumina-Sequencing reads. Preparation using 2-step PCR (1. with small locus-specific primers binding near mutation site, 2. with generic primer library attaching barcodes and Illumina adapters).

For high/low frequencies the accuracy can be improved by fitting a quadratic model.
