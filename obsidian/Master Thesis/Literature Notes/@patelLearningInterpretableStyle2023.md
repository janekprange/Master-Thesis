---
category: literaturenote
tags: [Computer_Science/Computation_and_Language, recommended, reading_complete, authorship_attribution]
citekey: patelLearningInterpretableStyle2023
---
# Learning interpretable style embeddings via prompting LLMs

> [!info]-
> **FirstAuthor**:: Patel, Ajay  
> **Author**:: Rao, Delip  
> **Author**:: Kothary, Ansh  
> **Author**:: McKeown, Kathleen  
> ---    
> **Title**:: Learning interpretable style embeddings via prompting LLMs  
> **Year**:: 2023   
> **Citekey**:: patelLearningInterpretableStyle2023  
> **Type**:: preprint  
> **DOI**:: 10.48550/arXiv.2305.12696
> ---
> Style representation learning builds content-independent representations of author style in text. Stylometry, the analysis of style in text, is often performed by expert forensic linguists and no large dataset of stylometric annotations exists for training. Current style representation learning uses neural methods to disentangle style from content to create style vectors, however, these approaches result in uninterpretable representations, complicating their usage in downstream applications like authorship attribution where auditing and explainability is critical. In this work, we use prompting to perform stylometry on a large number of texts to create a synthetic dataset and train human-interpretable style representations we call LISA embeddings. We release our synthetic stylometry dataset and our interpretable style models as resources.

## Notes
%% begin notes %%
- method of prompting an LLM to generate training data will be useful
	- [[@wangSelfinstructAligningLanguage2023]], [[@gilardiChatGPTOutperformsCrowdworkers2023]], [[@huangLargeLanguageModels2022]], [[@honovichUnnaturalInstructionsTuning2022]]
- the stylegenome dataset has been extracted out of only 10.000 posts (1000 authors * 10 posts each)
	- with a local modal it should be possible to use a larger baseline
	- appendix B seems to show that the improvement of the model does not plateau with 1000 authors and will likely increase with more data
- the SFAM model is not a classifier for a specific style attribute but takes a text input with the style attribute and the text together
- the SFAM classifier is used to produce a training dataset (annotate an existing dataset with the selected style attributes) on which the LISA model is trained
- evaluation with the STEL framework [[@wegmann-nguyen-2021-capture]]
%% end notes %%

## Annotations
<mark style="background-color: #ffd400">Quote</mark>
> we use GPT-3 (Brown et al., 2020), a large language model (LLM), and zeroshot prompts to generate a synthetic dataset we call STYLEGENOME of human-interpretable stylometric annotations for various texts
> [Page 2](zotero://open-pdf/library/items/CIUFXHT9?page=2) 2024-09-29#15:27

<mark style="background-color: #2ea8e5">Quote</mark>
> we develop the LinguisticallyInterpretable Style Attribute (LISA) embedding model
> [Page 2](zotero://open-pdf/library/items/CIUFXHT9?page=2) 2024-09-29#15:58

<mark style="background-color: #ffd400">Quote</mark>
> To create STYLEGENOME for training LISA, we select Reddit data from the Million User Dataset (MUD)
> [Page 2](zotero://open-pdf/library/items/CIUFXHT9?page=2) 2024-09-29#16:00

<mark style="background-color: #ff6666">Quote</mark>
> Stage 1 We elicit the model with a zero-shot prompt to generate a description of the style of a given Reddit post:
> [Page 2](zotero://open-pdf/library/items/CIUFXHT9?page=2) 2024-09-29#16:04

<mark style="background-color: #ff6666">Quote</mark>
> Stage 2 We use another zero-shot prompt to standardize the generations from Stage 1 into short, declarative sentences with a uniform structure:
> [Page 2](zotero://open-pdf/library/items/CIUFXHT9?page=2) 2024-09-29#16:04

<mark style="background-color: #ffd400">Quote</mark>
> We run both stages with 93 different Stage 1 prompts for all 10,000 posts.
> [Page 3](zotero://open-pdf/library/items/CIUFXHT9?page=3) 2024-09-29#16:04

<mark style="background-color: #2ea8e5">Quote</mark>
> 6 of the 93 total prompts are open-ended prompts that elicit descriptions of a passage on a broad dimension of style
> [Page 3](zotero://open-pdf/library/items/CIUFXHT9?page=3) 2024-09-29#16:06

<mark style="background-color: #2ea8e5">Quote</mark>
> The remaining 87 prompts target narrow and specific dimensions of style
> [Page 3](zotero://open-pdf/library/items/CIUFXHT9?page=3) 2024-09-29#16:06

<mark style="background-color: #ffd400">Quote</mark>
> Some annotations may be hallucinated resulting in a noisy dataset, but we choose to train on the full synthetic dataset, without manual intervention, to maintain an unsupervised procedure
> [Page 3](zotero://open-pdf/library/items/CIUFXHT9?page=3) 2024-09-29#16:12

<mark style="background-color: #ffd400">Quote</mark>
> Style Feature Agreement Model (SFAM). Given a text t and a style attribute a as input, SFAM(t, a) produces an agreement score between 0.0 and 1.0 representing the probability of the style attribute being present in the text
> [Page 3](zotero://open-pdf/library/items/CIUFXHT9?page=3) 2024-09-29#16:13

<mark style="background-color: #ffd400">Quote</mark>
> We train EncT5 with a binary classifier head on randomly sampled batches of examples (xi, yi) where each batch contains an equal number of positive (yi = 1) and negative (yi = 0) examples
> [Page 4](zotero://open-pdf/library/items/CIUFXHT9?page=4) 2024-09-29#16:31

<mark style="background-color: #ffd400">Quote</mark>
> For each positive example, we perform negative sampling and retrieve a negative example text where the positive example’s style attribute is likely not present. To do this, we find the 10,000 most dissimilar style attributes to the positive example’s style attribute with SBERT5 similarity
> [Page 4](zotero://open-pdf/library/items/CIUFXHT9?page=4) 2024-09-29#16:32

<mark style="background-color: #ffd400">Quote</mark>
> To validate training, we hold-out 50 random style attributes that have between 3050 examples each as a validation set
> [Page 4](zotero://open-pdf/library/items/CIUFXHT9?page=4) 2024-09-29#16:33

<mark style="background-color: #ffd400">Quote</mark>
> The first 87 attributes {a0, a1, . . . , a86} directly correspond to the features of our 87 targeted prompts in the form of “The author is using  {{targeted_feature}}”. The remaining 681 are downselected from the ~1.3M style attributes with filtering heuristics, choosing those that appear for at least 10 authors, but no more than 600 authors (attempting to select for frequent, yet discriminative attributes). Once a style attribute is selected to be part of the 768, we do not select another style attribute with SBERT cosine similarity > 0.8 to largely avoid near-duplicates
> [Page 5](zotero://open-pdf/library/items/CIUFXHT9?page=5) 2024-09-29#16:44

<mark style="background-color: #5fb236">Quote</mark>
> We reject style attributes that are > 120 characters, are not pure ASCII, contain “not” or “avoids” (negative statements), or contain quotes or the word “mentions” (these attributes tend to be more relevant to content than style).
> [Page 5](zotero://open-pdf/library/items/CIUFXHT9?page=5) 2024-09-29#16:45

<mark style="background-color: #ffd400">Quote</mark>
> we produce the LISA representations for 1,000,000 random Reddit posts from MUD. We then distill into a new EncT5 model with 768 regression labels. We hold-out 10,000 examples as a validation set.
> [Page 5](zotero://open-pdf/library/items/CIUFXHT9?page=5) 2024-09-29#16:47

<mark style="background-color: #ff6666">Quote</mark>
> We experiment with two different simple and interpretable embedding layers, a weight vector (w768) and a weight matrix (W768×64). We attach these on top of the LISA model and train just the layer using a contrastive learning objective and triplet loss
> [Page 5](zotero://open-pdf/library/items/CIUFXHT9?page=5) 2024-09-29#16:51

<mark style="background-color: #ffd400">Quote</mark>
> Correlation to Human Judgments
> [Page 6](zotero://open-pdf/library/items/CIUFXHT9?page=6) 2024-09-29#17:17

<mark style="background-color: #ffd400">Quote</mark>
> STEL
> [Page 6](zotero://open-pdf/library/items/CIUFXHT9?page=6) 2024-09-29#17:17

<mark style="background-color: #ffd400">Quote</mark>
> Sentence-Level Interpretability
> [Page 7](zotero://open-pdf/library/items/CIUFXHT9?page=7) 2024-09-29#17:17

<mark style="background-color: #5fb236">Quote</mark>
> Forensic Interpretability
> [Page 7](zotero://open-pdf/library/items/CIUFXHT9?page=7) 2024-09-29#17:21




%% Import Date: 2024-11-25T13:54:58.389+01:00 %%
