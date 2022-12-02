# Guideline for human evalution

Each file contains a news document, two different summaries for this document, and three aspects of summary quality: informative, factual consistency and readability. For example:

```

Doc:
She's a best-selling singer, actress,  beauty buff and one of the world's most stylish stars. And now, Rita Ora - who is only 24 and has already made the transition from a Kosovan-born fledgling singer to one of the globe's most successful stars - has channeled her passion for fashion into a new adidas range. For her latest collaboration with adidas Originals, Rita has taken the brand's ......
======================================================================

Summary #1
Rita Ora, 24, has channeled her passion for fashion into a new adidas range. The Dragon print collection lands on May 1. The singer also recently unveiled a beauty range for Rimmel. FEMAIL caught up with the star to find out her influences and plans for the future.
======================================================================

Summary #2
Rita, 24, has collaborated with adidas Originals. Has put her own bold spin on the brand's classic designs. Dragon print is inspired by her love of travel and soaking up different cultures. Cites Marilyn Monroe as her ultimate postergirl.
======================================================================

[***] informative: 
[***] factual consistency: 
[***] readability: 

```

The annotators need to judge which one of the two summaries is better in the three aspects separately. For example, if summary #1 is better than summary #2 in the aspect of informative, then the evaluators should type “1” behind "[***] informative:", which means summary #1 wins on informative. And if summary #2 wins in readability, then type “2” behind "[***] readability:". If the two summaries draw with each other in an aspect, then type “0” in the cell below that aspect. 

The meaning of the three aspects: 
Informative: The extent to which the summary contains the key information of the original document.
Factual consistency: The extent to which the facts contained in the abstract are consistent with the facts stated in the original document.
Readability: Whether the abstract is easy to read, free from language problems and fluent.

