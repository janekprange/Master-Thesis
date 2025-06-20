---
category: literaturenote
tags: [Computer_Science/Computation_and_Language, Computer_Science/Artificial_Intelligence]
citekey: wangSelfinstructAligningLanguage2023
---
# Self-instruct: aligning language models with self-generated instructions

> [!info]-
> **FirstAuthor**:: Wang, Yizhong  
> **Author**:: Kordi, Yeganeh  
> **Author**:: Mishra, Swaroop  
> **Author**:: Liu, Alisa  
> **Author**:: Smith, Noah A.  
> **Author**:: Khashabi, Daniel  
> **Author**:: Hajishirzi, Hannaneh  
> ---    
> **Title**:: Self-instruct: aligning language models with self-generated instructions  
> **Year**:: 2023   
> **Citekey**:: wangSelfinstructAligningLanguage2023  
> **Type**:: preprint  
> **DOI**:: 10.48550/arXiv.2212.10560
> ---
> Large "instruction-tuned" language models (i.e., finetuned to respond to instructions) have demonstrated a remarkable ability to generalize zero-shot to new tasks. Nevertheless, they depend heavily on human-written instruction data that is often limited in quantity, diversity, and creativity, therefore hindering the generality of the tuned model. We introduce Self-Instruct, a framework for improving the instruction-following capabilities of pretrained language models by bootstrapping off their own generations. Our pipeline generates instructions, input, and output samples from a language model, then filters invalid or similar ones before using them to finetune the original model. Applying our method to the vanilla GPT3, we demonstrate a 33% absolute improvement over the original model on Super-NaturalInstructions, on par with the performance of InstructGPT-001, which was trained with private user data and human annotations. For further evaluation, we curate a set of expert-written instructions for novel tasks, and show through human evaluation that tuning GPT3 with Self-Instruct outperforms using existing public instruction datasets by a large margin, leaving only a 5% absolute gap behind InstructGPT-001. Self-Instruct provides an almost annotation-free method for aligning pre-trained language models with instructions, and we release our large synthetic dataset to facilitate future studies on instruction tuning. Our code and data are available at https://github.com/yizhongw/self-instruct.

## Notes
%% begin notes %%

%% end notes %%

## Annotations



%% Import Date: 2024-10-01T22:57:28.202+02:00 %%
