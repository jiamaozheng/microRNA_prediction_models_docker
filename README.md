# Docker Image That Contains microRNA Gene Expression Prediction  pipeline


## Docker image
The Docker image is available at https://hub.docker.com/r/jiamaozheng/prediction_model_docker/, and can be downloaded by running the following command:
```bash
docker pull jiamaozheng/prediction_model_docker
```

## Docker File 
Is available at https://github.com/jiamaozheng/prediction_model_docker/blob/master/Dockerfile


## Pipeline 
Is available at https://github.com/jiamaozheng/expression_prediction_model_pipeline

## Prerequisites
Create an input directory by using a script at https://github.com/jiamaozheng/prediction_model_docker/blob/master/input_directory.sh

Prepare and place the following input files in above input directory
* gene expression file
* gene annotation file
* genotype file
* SNP annotation file 

## Run Docker Image 
```bash 
# Run a Docker image as a Container and mounts the input directory in the Container 
docker run -v /Volumes/im-lab/nas40t2/jiamao/Projects/microRNA/model_pipeline/model_pipeline/expression_prediction_model_pipeline:/expression_prediction_model_pipeline -it jiamaozheng/prediction_model_docker
```

## Running Pipeline Inside the Docker Container 
```bash
./run.py \
	--project_name gEUVADIS_LCL_miRNA \
	--molecular_type miRNA \
	--alpha 0.5 \
	--snpset 1KG_snps \
	--expression_path ../input_mirna/expression_phenotypes/miRNA_CTR_Exp.RDS \
	--genotype_path ../input_mirna/genotype/ \
	--gene_annot_path ../input_mirna/gene_annotation/miRBase_miRNA_gene_annotation.RDS \
	--snp_annot_path ../input_mirna/snp_annotation/gEUVADIS.SNP.annotation.RDS 
``` 
