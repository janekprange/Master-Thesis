- Comparison with SOTA
	- find SOTA methods
	- STEL framework ([[@wegmannDoesItCapture2021]]) for comparison, as in [[@patelLearningInterpretableStyle2023]]
		- method described in section 5.2 of STEL paper
- section for ethical considerations?
- different methods to steer the output is listed in [[@turnerActivationAdditionSteering2024]] (section 2)
- a way to steer the output with activation engineering would be to use ActAdd from [[@turnerActivationAdditionSteering2024]] and generate contrasting prompt pairs with the method described in [[@patelLearningInterpretableStyle2023]] (section 3.1 - sampling batches)
	- searching for text with attributes with the smallest SBERT similarity to the selected attribute
	-  the parameters (layer l and intervention strength c) where found with grid search -> could bayesian optimization be better?
		- in [[@konenStyleVectorsSteering2024]] they compared different layers in a pre study and found layers 18-20 to work best
	- **how good does the method work when multiple attributes are changed (or steered towards) at the same time?**
- steering with learned vectors would be possible too, however according to [[@konenStyleVectorsSteering2024]] this approach takes a lot of time; that could be a problem with the high amount of style attributes
	- additionally, [[@konenStyleVectorsSteering2024]] Figure 4 shows that the activation vectors outperform the trained vectors


## Existing work

- there is a plugin for oobabooga (https://github.com/oobabooga/text-generation-webui) for steering with activation addition (https://github.com/Hellisotherpeople/llm_steer-oobabooga)
- ActAdd [[@turnerActivationAdditionSteering2024]] has produced a python package to use the method: https://zenodo.org/records/10563582