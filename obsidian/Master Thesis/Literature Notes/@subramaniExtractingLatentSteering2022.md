---
category: literaturenote
tags: [Computer_Science/Computation_and_Language, Computer_Science/Machine_Learning, Computer_Science/Artificial_Intelligence, recommended]
citekey: subramaniExtractingLatentSteering2022
---
# Extracting latent steering vectors from pretrained language models

> [!info]-
> **FirstAuthor**:: Subramani, Nishant  
> **Author**:: Suresh, Nivedita  
> **Author**:: Peters, Matthew E.  
> ---    
> **Title**:: Extracting latent steering vectors from pretrained language models  
> **Year**:: 2022   
> **Citekey**:: subramaniExtractingLatentSteering2022  
> **Type**:: preprint  
> **DOI**:: 10.48550/arXiv.2205.05124
> ---
> Prior work on controllable text generation has focused on learning how to control language models through trainable decoding, smart-prompt design, or fine-tuning based on a desired objective. We hypothesize that the information needed to steer the model to generate a target sentence is already encoded within the model. Accordingly, we explore a different approach altogether: extracting latent vectors directly from pretrained language model decoders without fine-tuning. Experiments show that there exist steering vectors, which, when added to the hidden states of the language model, generate a target sentence nearly perfectly (> 99 BLEU) for English sentences from a variety of domains. We show that vector arithmetic can be used for unsupervised sentiment transfer on the Yelp sentiment benchmark, with performance comparable to models tailored to this task. We find that distances between steering vectors reflect sentence similarity when evaluated on a textual similarity benchmark (STS-B), outperforming pooled hidden states of models. Finally, we present an analysis of the intrinsic properties of the steering vectors. Taken together, our results suggest that frozen LMs can be effectively controlled through their latent steering space.

## Notes
%% begin notes %%

%% end notes %%

## Annotations



%% Import Date: 2024-09-29T16:57:46.305+02:00 %%
