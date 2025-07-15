# De Africa Petrarcae in Davidiade Marci Maruli Spalatensis #

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.15916705.svg)](https://doi.org/10.5281/zenodo.15916705)

TEI XML encoded Latin texts of Petrarch's Africa and Marko Marulić's Davidias (and his Latin verse translation of Petrarch's canzone Vergine bella). The Davidias and other Marulić's texts come from the [Croatiae auctores Latini](https://croala.ffzg.unizg.hr) collection, freely available under a [CC-BY license](LICENSE.md).

The data is prepared for a paper presented at the [IANLS 2025 conference](https://ianls-2025.sciencesconf.org/), Aix-en-Provence: Deliciae auctorum Croatiae: Indagationes. De Africa Petrarcae in Davidiade Marci Maruli Spalatensis. Neven Jovanović, IANLS, Aquis Sextiis, XVII Kal. Sext. anno MMXXV.

The text of the paper is available at the CroALa *Deliciae auctorum Croatiae* website: [croala.ffzg.unizg.hr/deliciae/deliciae/africadavidias/](https://croala.ffzg.unizg.hr/deliciae/deliciae/africadavidias/).

* This Git repo exists on [Github](https://github.com/nevenjovanovic/africa-davidias-ianls-2025), on [Zenodo DOI 10.5281/zenodo.15916705](https://doi.org/10.5281/zenodo.15916705).

## Contents ##

* The TEI XML sources with corrections and normalizations are in [xml](/data/xml) directory
* The XML normalized files produced from sources are in [xml-norm](/data/xml-norm)
* The XML lists of words are in [wordlists](/data/wordlists)
* The lists of matching clausulae (XML) are: [clausulae-2](/data/clausulae-2) (two words clausulae), [clausulae-3](/data/clausulae-3) (three words clausulae), [paenultima-3](/data/paenultima-3) (paenultimate sequences of three words)
* The XSL used to produce and reshape the XML is in [xsl](/xsl)
* The XQuery scripts used with BaseX database to produce lists etc. are in [xquery](/xquery)
* The text of paper and the handout (including md sources, in Latin) are in [acroasis](/acroasis)


## How to use ##

From the [xml](/data/xml) sources create a BaseX database, use the scripts on it.

The [xml-norm](/xml-norm) files can be analysed with e. g. [AntConc](https://www.laurenceanthony.net/software/antconc/).


### Editor ###

* Neven Jovanović (nevenjovanovic), Department of Classical Philology, Faculty of Humanities and Social Sciences, University of Zagreb; [orcid.org/0000-0002-9119-399X](http://orcid.org/0000-0002-9119-399X)
