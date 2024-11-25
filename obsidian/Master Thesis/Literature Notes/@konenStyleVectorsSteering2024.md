---
category: literaturenote
tags: [Computer_Science/Computation_and_Language, recommended, reading_complete, generation_steering]
citekey: konenStyleVectorsSteering2024
---
# Style vectors for steering generative large language model

> [!info]-
> **FirstAuthor**:: Konen, Kai  
> **Author**:: Jentzsch, Sophie  
> **Author**:: Diallo, Diaoulé  
> **Author**:: Schütt, Peer  
> **Author**:: Bensch, Oliver  
> **Author**:: Baff, Roxanne El  
> **Author**:: Opitz, Dominik  
> **Author**:: Hecking, Tobias  
> ---    
> **Title**:: Style vectors for steering generative large language model  
> **Year**:: 2024   
> **Citekey**:: konenStyleVectorsSteering2024  
> **Type**:: preprint  
> **DOI**:: 10.48550/arXiv.2402.01618
> ---
> This research explores strategies for steering the output of large language models (LLMs) towards specific styles, such as sentiment, emotion, or writing style, by adding style vectors to the activations of hidden layers during text generation. We show that style vectors can be simply computed from recorded layer activations for input texts in a specific style in contrast to more complex training-based approaches. Through a series of experiments, we demonstrate the effectiveness of activation engineering using such style vectors to influence the style of generated text in a nuanced and parameterisable way, distinguishing it from prompt engineering. The presented research constitutes a significant step towards developing more adaptive and effective AI-empowered interactive systems.

## Notes
%% begin notes %%
- experiments showing the effectiveness of trained and activation style vectors
- activation vectors are much faster to train (section 4.2) and have a better performance (figure 4)
%% end notes %%

## Annotations
<mark style="background-color: #ffd400">Quote</mark>
> The process begins with the frozen model receiving an empty input token and a steering vector initialized randomly to initiate sentence generation. The resulting output is then evaluated against the target sentence to calculate a cross-entropy loss, which is back-propagated to learn the steering vector
> [Page 4](zotero://open-pdf/library/items/U5R9YU3J?page=4) 2024-10-01#23:16

<mark style="background-color: #5fb236">Quote</mark>
> In this work, we take up this idea and extend it to calculating general style vectors associated with style categories instead of single pairs.
> [Page 4](zotero://open-pdf/library/items/U5R9YU3J?page=4) 2024-10-01#23:16

<mark style="background-color: #ffd400">Quote</mark>
> Experiments are performed along different style categories: sentiment, emotion, and writing style
> [Page 4](zotero://open-pdf/library/items/U5R9YU3J?page=4) 2024-10-01#23:19

<mark style="background-color: #ffd400">Quote</mark>
> For the evaluation of the training-based style vectors, we only incorporate steering vectors that reproduce the target sentence with loss < 5, as vectors with higher loss tend to yield grammatically incorrect output sentences
> [Page 5](zotero://open-pdf/library/items/U5R9YU3J?page=5) 2024-10-01#23:22

<mark style="background-color: #ffd400">Quote</mark>
> we found that the steering vectors for the layers i ∈ {18, 19, 20} are most effective
> [Page 5](zotero://open-pdf/library/items/U5R9YU3J?page=5) 2024-10-01#23:22

<mark style="background-color: #2ea8e5">Quote</mark>
> Nevertheless, we had to run the experiment on the Yelp and Shakespeare datasets for 150 hours each and for GoEmotions for around 100 hours. In comparison, the extraction of the activations only took at most 8 hours per dataset and resulted in recorded activation vectors for all dataset samples.
> [Page 5](zotero://open-pdf/library/items/U5R9YU3J?page=5) 2024-10-01#23:24

<mark style="background-color: #ffd400">Quote</mark>
> It appears that steering into the positive direction works better in general, while the steering effect is stronger for activation-based style vectors.
> [Page 6](zotero://open-pdf/library/items/U5R9YU3J?page=6) 2024-10-01#23:40

<mark style="background-color: #ffd400">Quote</mark>
> activation-based style vectors are derived from the activations of input prompts, which relies on the assumption that LLMs internally adapt the  input style during the forward pass
> [Page 8](zotero://open-pdf/library/items/U5R9YU3J?page=8) 2024-10-01#23:54

<mark style="background-color: #2ea8e5">Quote</mark>
> Therefore, the activation-based style vectors are the preferred approach for steering style in large language models, both in terms of performance and resource efficiency.
> [Page 8](zotero://open-pdf/library/items/U5R9YU3J?page=8) 2024-10-01#23:57




%% Import Date: 2024-11-25T13:54:58.710+01:00 %%
