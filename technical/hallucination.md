# Hallucination

LLMs are powerful, but they aren't perfect. One of their biggest challenges is **hallucination** - when AI generate false or misleading information. 

At their core, LLMs predict the most likely sequence of words based of patterns in their training data. They don't have inherent sense of truth. This means they can produce responses that sound convincing but lack factual accuracy.

LLMs don't understand uncertainty the way humans do. They might present a wrong answer with the same confidence as a correct one.

## Type of Information that cause the most hallucinations:

- **Obscure or niche topics**
- **Mathematical and logical reasoning**
- **Specialized fields like legal, medical, programming...**
- **Speculative questions**

## Reduce LLM hallucinations

### Retrieval-Augumented Generation (RAG)

Allow model to use relevant information from external databases before formulating answer instead of replying on pre-trained knowledge.

How it works: when user submit a query, the system first searches a knowlegde base-such as the company's internal documentation, scientific literatures, or trusted online sources. The retrieved information is then fed into the model. This process prevents the model from guessing and help it refer to real-world evidence.

> Add research here

### Chain-of-thought (CoT) prompting

Encourages LLMs to break down their reasoning step by step before arriving as an answer. The model is prompted to explicitly outline its thought process, leading to more logical and accurate output.

Example: instead of asking what is 17 x 24, we ask : "break down the steps to calculate 17 x 24 before giving the final answer."

### Custom Guardrail Systems

## Taxonomy of Hallucinations

### Factuality Hallucination
1. Factual inconsistency
2. Factual Fabrication

### Faithfulness Hallucination
1. Instruction Inconsistency
2. Context Inconsistency
3. Logical Inconsistency



