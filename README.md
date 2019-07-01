# organisations-data-gouv

[![CircleCI](https://circleci.com/gh/pachevalier/organisations-data-gouv.svg?style=svg)](https://circleci.com/gh/pachevalier/organisations-data-gouv)

Learn from data.gouv organizations using Wikidata.

Data are published on [data.gouv.fr](https://www.data.gouv.fr/fr/datasets/organisations-de-data-gouv-fr-reliees-a-wikidata/).

## Nature des organisations de data.gouv

* [Comptage des organisations de data.gouv.fr par nature (p31)](https://query.wikidata.org/#SELECT%20%28COUNT%28%3Finstance_of%29%20AS%20%3Fcount%29%20%3Finstance_ofLabel%20WHERE%20%7B%0A%20%20%3Fitem%20wdt%3AP3206%20%3Fdatagouvid.%0A%20%20SERVICE%20wikibase%3Alabel%20%7B%20bd%3AserviceParam%20wikibase%3Alanguage%20%22%5BAUTO_LANGUAGE%5D%2Cfr%22.%20%7D%0A%20%20OPTIONAL%20%7B%20%3Fitem%20wdt%3AP31%20%3Finstance_of.%20%7D%0A%7D%0AGROUP%20BY%20%3Finstance_ofLabel%0AORDER%20BY%20DESC%28%3Fcount%29%0A)
