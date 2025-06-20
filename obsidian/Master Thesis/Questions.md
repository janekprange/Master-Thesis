## General Questions

- exact title
	- (Producing interpretable style vectors and steering large language models towards user appropriate text generation)
	- Steering large language models towards user appropriate text generation with interpretable style vectors
	- Steering large language models towards group-specific explanation generation with interpretable style vectors
- For which audience should I write the thesis? (e.g. explaining LLMs in detail or assuming the reader knows that)
- Which models should I use
	- Decoder: Llama3.2 with llama-cpp-python? (*How to access the hidden states for steering?* -> code by konen et. al.)
	- Encoder: evtl. DeBerta Large

## Paper Questions

- [[@patelLearningInterpretableStyle2023]]
	- Why would the euclidian distance between to style vectors not be meaningful without further computation? (section 3)
	- What is contrastive learning / triplet loss in this context? (section 3.3) -> Khosla et al., 2020; Schroff et al., 2015
	- Why is the LISA embedding layer either a vector or a matrix? For what additional information would you need a matrix? (section 3.3)
		- maybe sentence level interpretability
	- What is STEL-or-content? (Table 4)
- [[@turnerActivationAdditionSteering2024]]
	- What does it mean that the model must cache intermediate activations? (section 3)
	- What does the steering vector look like for a prompt with multiple tokens? Is it still one vector or multiple?
		- In [[@konenStyleVectorsSteering2024]] it seems like it is only one vector that is the same for all forward passes
- [[@konenStyleVectorsSteering2024]]
	- Does classification based evaluation mean that the LLM produces a classification or that the output is evaluated with a classification model?
	- What exactly do figures 4 and 5 show?

## Answered

- is the only difference between activation steering and trained steering how the vector is produced? Isn't the hidden state practically the same as the activation layer?
	- yes, there is no further difference ([[@subramaniExtractingLatentSteering2022]] section 2.2)