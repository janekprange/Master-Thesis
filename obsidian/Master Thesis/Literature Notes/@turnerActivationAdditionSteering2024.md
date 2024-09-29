---
category: literaturenote
tags: [Computer_Science/Computation_and_Language, Computer_Science/Machine_Learning, recommended]
citekey: turnerActivationAdditionSteering2024
---
# Activation addition: steering language models without optimization

> [!info]-
> **FirstAuthor**:: Turner, Alexander Matt  
> **Author**:: Thiergart, Lisa  
> **Author**:: Leech, Gavin  
> **Author**:: Udell, David  
> **Author**:: Vazquez, Juan J.  
> **Author**:: Mini, Ulisse  
> **Author**:: MacDiarmid, Monte  
> ---    
> **Title**:: Activation addition: steering language models without optimization  
> **Year**:: 2024   
> **Citekey**:: turnerActivationAdditionSteering2024  
> **Type**:: preprint
> ---
> Reliably controlling the behavior of large language models is a pressing open problem. Existing methods include supervised finetuning, reinforcement learning from human feedback, prompt engineering and guided decoding. We instead investigate activation engineering: modifying activations at inference-time to predictably alter model behavior. We bias the forward pass with a 'steering vector' implicitly specified through natural language. Past work learned these steering vectors; our Activation Addition (ActAdd) method instead computes them by taking activation differences resulting from pairs of prompts. We demonstrate ActAdd on a range of LLMs (LLaMA-3, OPT, GPT-2, and GPT-J), obtaining SOTA on detoxification and negative-to-positive sentiment control. Our approach yields inference-time control over high-level properties of output like topic and sentiment while preserving performance on off-target tasks. ActAdd takes far less compute and implementation effort than finetuning or RLHF, allows users control through natural language, and its computational overhead (as a fraction of inference time) appears stable or improving over increasing model size.

## Notes
%% begin notes %%

%% end notes %%

## Annotations



%% Import Date: 2024-09-29T16:57:46.325+02:00 %%
