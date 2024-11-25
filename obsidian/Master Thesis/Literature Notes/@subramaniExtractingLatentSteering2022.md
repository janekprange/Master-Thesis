---
category: literaturenote
tags: [Computer_Science/Computation_and_Language, Computer_Science/Machine_Learning, Computer_Science/Artificial_Intelligence, recommended, reading_complete, generation_steering]
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
- train a steering vector (with backpropagation) that is added to the hidden state during forward propagation
- the steering vector is used to reproduce the sentence completely, not just the style
- the steering vector can be smaller than the dimension of the hidden state; a non changing semi-orthogonal matrix is used to translate it to the higher dimension
%% end notes %%

## Annotations
<mark style="background-color: #ffd400">Quote</mark>
> During decoding, we add our steering vector to the hidden states of the language model to generate the target sentence. Rather than training a model to learn steering vectors, we provide several methods to extract fixedlength steering vectors directly from pretrained language model decoders.
> [Page ](zotero://open-pdf/library/items/L89NKEG9?page=) 2024-10-04#10:27

<mark style="background-color: #ffd400">Quote</mark>
> injecting the steering vector in the middle layers of the transformer stack performs best
> [Page 2](zotero://open-pdf/library/items/L89NKEG9?page=2) 2024-10-04#10:27

<mark style="background-color: #ffd400">Quote</mark>
> Given a target sentence s, we measure how well the steering vector zsteer can recover the target sentence by first greedily decoding from the language model with zsteer, and then computing smoothed BLEU-4 using the target sentence s and our decoded reconstruction s
> [Page 4](zotero://open-pdf/library/items/L89NKEG9?page=4) 2024-10-04#11:22

<mark style="background-color: #ff6666">Quote</mark>
> After extracting steering vectors for each sentence, we compute offset vectors by averaging steering vectors for a set of sentences in the source style z ̄source and subtracting from the average of a set of steering vectors for the target style z ̄target. Next, we flip the style of each sentence in our test set by adding the respective style transfer vector directly to its steering vector after scaling it by λ
> [Page 5](zotero://open-pdf/library/items/L89NKEG9?page=5) 2024-10-04#11:38

<mark style="background-color: #ffd400">Quote</mark>
> we find that fluency is often challenging for higher values of λ and that the generated sequences repeat individual words or phrases
> [Page 6](zotero://open-pdf/library/items/L89NKEG9?page=6) 2024-10-05#19:25

<mark style="background-color: #ffd400">Quote</mark>
> we find that negative to positive sentiment transfer is qualitatively more fluent and accurate than positive to negative sentiment transfer
> [Page 6](zotero://open-pdf/library/items/L89NKEG9?page=6) 2024-10-05#19:28

<mark style="background-color: #ff6666">Quote</mark>
> Previous experiments indicate that the latent space occupied by steering vectors could be well-formed and smooth. To evaluate this qualitatively, we show linear interpolations of two pairs of steering vectors
> [Page 7](zotero://open-pdf/library/items/L89NKEG9?page=7) 2024-10-05#19:40

<mark style="background-color: #ffd400">Quote</mark>
> Lastly, for each individual sentence there exists a radius around it where those vectors also steer the language model to generate the same target sentence. This could indicate that sentences have a representative volume from which, if any vector was sampled, could recover the sentence.
> [Page 7](zotero://open-pdf/library/items/L89NKEG9?page=7) 2024-10-05#19:41

<mark style="background-color: #ffd400">Quote</mark>
> We observe that reconstruction BLEU increases as the steering vector dimension increases, indicating that 768 dimensions may be needed to recover sequences nearly perfectly
> [Page 8](zotero://open-pdf/library/items/L89NKEG9?page=8) 2024-10-05#19:43

<mark style="background-color: #ffd400">Quote</mark>
> The gap between performance on books and gibberish indicates that steering vectors are not simply memorizing
> [Page 8](zotero://open-pdf/library/items/L89NKEG9?page=8) 2024-10-05#19:47




%% Import Date: 2024-11-25T13:54:58.445+01:00 %%
