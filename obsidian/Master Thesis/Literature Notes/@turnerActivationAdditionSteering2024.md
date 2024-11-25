---
category: literaturenote
tags: [Computer_Science/Computation_and_Language, Computer_Science/Machine_Learning, recommended, reading_complete, generation_steering]
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
- a notebook with the method is found under tinyurl.com/actadd and tinyurl.com/actadd3-llama
- steer the output of LLMs by changing the activations **on one layer** with a bias that is computed from the difference of two prompts (no backpropagation is needed)
- the method is used on the relatively small model GPT-2-XL -> is it feasible on larger models such as Llama3? And can I access and manipulate the activations?
- the parameters (layer l and intervention strength c) where found with grid search -> could bayesian optimization be better?
	- in [[@konenStyleVectorsSteering2024]] they compared different layers in a pre study and found layers 18-20 to work best
- Article under https://www.greaterwrong.com/posts/5spBue2z2tw4JuDCx/steering-gpt-2-xl-by-adding-an-activation-vector
%% end notes %%

## Annotations
<mark style="background-color: #ffd400">Quote</mark>
> our Activation Addition (ActAdd) method instead computes them by taking activation differences resulting from pairs of prompts
> [Page ](zotero://open-pdf/library/items/UWUCEGH9?page=) 2024-09-30#09:51

<mark style="background-color: #ffd400">Quote</mark>
> To obtain a steering vector, we perform a forward pass on each prompt, record the activations at the given location in each pass, take the difference hl+ − hl−, and then finally rescale this difference in activations by an ‘injection coefficient’ c. To steer, we add the resulting activation vector to the input of layer l and allow the forward pass to continue, and so obtain our steered output.
> [Page 4](zotero://open-pdf/library/items/UWUCEGH9?page=4) 2024-09-30#20:56

<mark style="background-color: #ffd400">Quote</mark>
> c represents intervention strength, since it multiplies the specified direction’s contribution to the residual stream and so the token processing of the rest of the forward pass. Absolute values between 3 and 15 are typical.
> [Page 4](zotero://open-pdf/library/items/UWUCEGH9?page=4) 2024-09-30#20:56

<mark style="background-color: #ff6666">Quote</mark>
> Along with the target layer l, c is a free parameter we select via grid search
> [Page 4](zotero://open-pdf/library/items/UWUCEGH9?page=4) 2024-09-30#20:57

<mark style="background-color: #2ea8e5">Quote</mark>
> One serious constraint is that the model must cache intermediate activations
> [Page 4](zotero://open-pdf/library/items/UWUCEGH9?page=4) 2024-09-30#21:02

<mark style="background-color: #ffd400">Quote</mark>
> our steering vectors are not specified by taking the difference between desired outputs
> [Page 4](zotero://open-pdf/library/items/UWUCEGH9?page=4) 2024-09-30#21:06

<mark style="background-color: #ffd400">Quote</mark>
> ActAdd works well in some cases, but it still requires a search for its p+, c and l arguments. (So far we have had success with fixing a = 1.) This makes it less user-friendly than simple prompt engineering
> [Page 8](zotero://open-pdf/library/items/UWUCEGH9?page=8) 2024-09-30#21:27

<mark style="background-color: #ffd400">Quote</mark>
> Activation additions can be continuously weighted, while prompts are discrete (since a token is either present, or not)
> [Page 9](zotero://open-pdf/library/items/UWUCEGH9?page=9) 2024-09-30#21:29

<mark style="background-color: #ffd400">Quote</mark>
> Datasets The Stanford IMDb Large Movie Review Dataset (Maas et al., 2011). No license: ‘we release this dataset to the public’ by the authors.  RealToxicityPrompts (Gehman et al., 2020). Apache 2.0.  LAMA ConceptNet (Petroni et al., 2019). CC-BY-NC 4.0.  OpenWebText (Peterson et al., 2018). GPL-3.0.
> [Page 26](zotero://open-pdf/library/items/UWUCEGH9?page=26) 2024-10-09#21:34




%% Import Date: 2024-11-25T13:54:58.603+01:00 %%
