---
category: literaturenote
tags: []
citekey: wegmann-nguyen-2021-capture
---
# Does it capture STEL? A modular, similarity-based linguistic style evaluation framework

> [!info]-
> **FirstAuthor**:: Wegmann, Anna  
> **Author**:: Nguyen, Dong  
> ---> **FirstEditor**:: Moens, Marie-Francine  
> **Editor**:: Huang, Xuanjing  
> **Editor**:: Specia, Lucia  
> **Editor**:: Yih, Scott Wen-tau  
> ---    
> **Title**:: Does it capture STEL? A modular, similarity-based linguistic style evaluation framework  
> **Year**:: 2021   
> **Citekey**:: wegmann-nguyen-2021-capture  
> **Type**:: conferencePaper  
> **Publisher**:: Association for Computational Linguistics  
> **Location**:: Online and Punta Cana, Dominican Republic   
> **Pages**:: 7109–7130  
> **DOI**:: 10.18653/v1/2021.emnlp-main.569
> ---
> Style is an integral part of natural language. However, evaluation methods for style measures are rare, often task-specific and usually do not control for content. We propose the modular, fine-grained and content-controlled similarity-based STyle EvaLuation framework (STEL) to test the performance of any model that can compare two sentences on style. We illustrate STEL with two general dimensions of style (formal/informal and simple/complex) as well as two specific characteristics of style (contrac'tion and numb3r substitution). We find that BERT-based methods outperform simple versions of commonly used style measures like 3-grams, punctuation frequency and LIWC-based approaches. We invite the addition of further tasks and task instances to STEL and hope to facilitate the improvement of style-sensitive measures.

## Notes
%% begin notes %%
- **when using this work, also cite previous work** (see red quote below)
- framework to test style evaluation methods
- has four dimensions with 1830 task instances
	- simple/complex (815)
	- formal/informal (815)
	- number substitution (100)
	- contraction (100)
- show two anchor sentences and to task sentences; the style evaluation method has to decide which task sentence has the same style as which anchor
- baseline from human annotators (at least 3/5 majority for annotator agreement)
%% end notes %%

## Annotations
<mark style="background-color: #ffd400">Quote</mark>
> To determine an answer for a STEL task in the quadruple setup, the methods need to order two sentences (Figure 1). We do this by calculating the similarities (sim) between Anchor 1 (A1), Anchor 2 (A2), Sentence 1 (S1) and Sentence 2 (S2).
> [Page 8](zotero://open-pdf/library/items/RJYR7QVM?page=8) 2024-10-15#11:46

<mark style="background-color: #ffd400">Quote</mark>
> (Semantic) Sentence Embedding Methods perform well.
> [Page 8](zotero://open-pdf/library/items/RJYR7QVM?page=8) 2024-10-15#11:50

<mark style="background-color: #ff6666">Quote</mark>
> When using this task, please also cite the original datasets the tasks were generated from: (1) Rao and Tetreault (2018) for the formal/informal component and (2) Xu et al. (2016) for the simple/complex component. (1) also needs the permission for usage of the “L6 - Yahoo! Answers Comprehensive Questions and Answers version 1.0 (multi part)”9.
> [Page 9](zotero://open-pdf/library/items/RJYR7QVM?page=9) 2024-10-15#11:55




%% Import Date: 2024-10-15T12:01:22.170+02:00 %%
