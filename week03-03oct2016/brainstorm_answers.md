
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

--

Technology: IN-Seq
group: supermaxiste, pcharlie, bosiaf, schmeing, xinglu liu, lifters
[IN-Seq: Andrew L. Goodman et al., “Identifying Genetic Determinants Needed to Establish a Human Gut Symbiont in Its Habitat,” Cell Host & Microbe 6, no. 3 (September 17, 2009): 279–289](http://www.sciencedirect.com/science/article/pii/S1931312809002819)

The method introduces a mutated transposon to a collection of species to mark the DNA. After the selection of specific genes, the DNA is collected and by sequencing, the loci of transposons determine which genes have been essential for survival.

Sequencing, qPCR -> fitness-related gene identification -> Bayesian model using MCMC, z-test, principle coordinate analysis, q-values

--

###Technology: Methyl-Seq

Group: abercher, alvaroing12, crazykitlady, FrancescoBigiolli, gasimomitis, terskikh  

Paper: [Alayne L. Brunner et al., “Distinct DNA Methylation Patterns Characterize Differentiated Human Embryonic Stem Cells and Developing Human Fetal Liver,” Genome Research 19, no. 6 (June 1, 2009): 1044–1056](http://genome.cshlp.org/content/19/6/1044.short)

####1. Summary  

|Technology   |  Application                                | Statistical Model    | Hypothesis Testing                     |
|:-----------:|:-------------------------------------------:|:--------------------:|:--------------------------------------:|
|Sequencing   |  Determine DNA Methylation (Methyl-Seq)     | Beta values          | Mann-Whitney U-Test, Fisher's Exact Test |

#####1.1. Structure of the method  
Methyl-seq uses the isoschizomers HpaII and MspI, which recognize the same cleavage site (59-CCGG-39); MspI digests at the site regardless of methylation status, while HpaII digests only unmethylated sites. In Methyl-seq, genomic DNA is digested with HpaII or MspI, ligated to next-gen sequencing adapters, and sub- jected to size selection to isolate small gel fragments, to generate a fragment library for next-gen sequencing. 
The fragment library is sequenced to obtain millions of short sequence tags that are 25–35 bp in length. Because MspI digests at both methylated and unmethylated sites where HpaII is blocked from digesting methylated sites, sequence tags present in MspI libraries but not in HpaII libraries are derived from methylated regions. Conversely, sequence tags that occur in HpaII libraries come from at least partially unmethylated regions.   

<img src="http://i.imgur.com/EQzdJLo.png" alt="Methyl-Seq process" width="176" height="232"/>  

#####1.2. Validation of the method  
To validate the effectiveness of the method its results were compared to the ones of the Illumina Infinium HumanMethylation27. 
The Illumina classification was considered to be the correct one always and evaluation of the method was based on how close it would get to Illumina. To assess the similarity obviously was necessary a statistical test, the one applied was the Fisher Exact test which showed a p-value under 10e-8. The dichotomized Beta-value, output of the Methyl-seq, had a threshold of 0.6 (where >0.6 was methylated and <0.6 was unmethylated.)  

#####1.3. Advantages of the method  
Methyl-seq allows measurement of the DNA methylation status of more than 90,000 regions, including a significant number that are not covered by any other single technique. The method is sensitive, highly specific with very low background, reproducible, and simple to execute. It is relatively inexpensive, requiring fewer reads on next-gen sequencers than others, and is likely to become less expensive as the sequencing technologies become more efficient and widespread.  

#####1.4. Disadvantages of the method  
Methyl-seq assays only the CpGs in a specific subset of HpaII restriction enzyme cleavage sites (those that appear within 35–75 bp of each other in the human genome). This significantly limits the number of CpGs assayed but nevertheless provides a snapshot of regional methylation patterns. Additionally, because Methyl-seq is sensitive in detecting small numbers of HpaII tags, this creates a problem measuring methylation quantitatively. While this may likely be improved in the future, we limited the analysis in this current study to binary calls of ‘‘methylated’’ and ‘‘unmethylated.’’  This is not likely to be a problem for most CpGs because numerous studies have shown that most CpGs are mostly methylated (>80%) or mostly unmethylated (<20%). Lastly, because the current Methyl-seq protocol relies on small HpaII fragments (grouped HpaII sites) as opposed to single cut sites, Methyl-seq does not assay most of the very low density CpG regions of the genome, including a number of low density CpG promoters. Because most of these promoters are assayed by Illumina’s Infinium HumanMethylation27 platform, combining the methylation results from Methyl-seq and Illumina’s Infinium HumanMethylation27 beadchips will provide a complete view.  

####2. Results-Conclusions
* Significant methylation changes are not needed during endoderm formation to control gene expression, which is consistent with previous evidence showing that embryos lacking de novo methyltransferases are viable during gastrulation.  
* Only a small fraction <5% of the regions that were assayed by Methyl-seq showed changes in DNA methylation during in vitro differentiation.  
* Methylation patterns seen for all stages of liver have significant overlap and indicate progression of methylation changes over time in vivo.  
* hESCs and their derivatives have a larger fraction of methylated regions than do the in vivo fetal and adult tissues.  
* DNA methylation changes during hESC differentiation are not an accurate reflection of the changes in DNA methylation in vivo, at least in liver development.

####3. Definitions
**Fisher’s exact test:** the significance of the deviation from a null hypothesis (e.g., P-value) can be calculated exactly, rather than relying on an approximation that becomes exact in the limit as the sample size grows to infinity, as with many statistical tests.  
**Methylation:** Methylation modifies the function of the DNA. When located in a gene promoter, DNA methylation typically acts to repress gene transcription. DNA methylation is essential for normal development and is associated with a number of key processes including genomic imprinting, X-chromosome inactivation, repression of repetitive elements, aging and carcinogenesis.  
**de novo Methylation:** New DNA methylation patterns, therefore methylation of sites that had not been methylated before in this manne3“. The addition of methyl groups is controlled at several different levels in cells and is carried out by a family of enzymes called DNA methyltransferases (DNMTs).  
**Demethylation:** Process is necessary for epigenetic reprogramming of genes and is also directly involved in many important disease mechanisms such as tumor progression.  
**hESCs:** Human embryonic stem cells.  
**HpaII and MspI:** Enzymes that digest CpG sites in a way related to their Methylation status, Mspl digests all the isles whilst Hpall can digest only (at least partially) unmethylated areas.    
**CpG sites:** The CpG sites or CG sites are regions of DNA where a cytosine nucleotide is followed by a guanine nucleotide in the linear sequence of bases along its 5' → 3' direction. CpG is shorthand for 5'—C—phosphate—G—3'.DNA methylation in vertebrates usually occurs at CpG sites.  

####4. References  
[1] Wikipedia - The Free Encyclopedia (2016). DNA methylation. [Online] https://en.wikipedia.org/wiki/DNA_methylation
[2] A. Brunner et. al (2009). Distinct DNA methylation patterns characterize differentiated human embryonic stem cells and developing human fetal liver. [Online] http://genome.cshlp.org/content/19/6/1044.full  
[3] What is Epigenetics (2016). DNA Methylation. [Online] http://www.whatisepigenetics.com/dna-methylation/   
[4] A. Bird (1999). DNA Methylation de novo. [Online] http://science.sciencemag.org/content/286/5448/2287  
[5] Wikipedia - The Free Encyclopedia (2016). Fisher’s exact test. [Online]. https://en.wikipedia.org/wiki/Fisher%27s_exact_test  
