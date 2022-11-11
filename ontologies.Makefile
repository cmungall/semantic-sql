db/chiro.owl: STAMP
	robot relax -I http://purl.obolibrary.org/obo/chiro.owl merge -o $@

db/chebiplus.owl: STAMP
	robot merge -I http://purl.obolibrary.org/obo/chebi.owl -I http://purl.obolibrary.org/obo/chiro.owl relax -o $@

db/msio.owl: STAMP
	curl -L -s https://raw.githubusercontent.com/MSI-Metabolomics-Standards-Initiative/MSIO/master/releases/latest_release/MSIO-merged-reasoned.owl > $@.tmp && mv $@.tmp $@

db/phenio.owl: STAMP
	curl -L -s https://github.com/monarch-initiative/phenio/releases/latest/download/phenio.owl > $@.tmp && mv $@.tmp $@

db/comploinc.owl: STAMP
	robot relax -I https://github.com/loinc/comp-loinc/releases/download/v2022-11-05/merged_reasoned_loinc.owl merge -o $@

db/bero.owl: STAMP
	curl -L -s https://github.com/berkeleybop/bero/releases/download/2022-05-26/bero.owl > $@.tmp && mv $@.tmp $@

db/aio.owl: STAMP
	curl -L -s https://raw.githubusercontent.com/berkeleybop/artificial-intelligence-ontology/main/aio.owl > $@.tmp && mv $@.tmp $@

db/reacto.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/go/extensions/reacto.owl > $@.tmp && mv $@.tmp $@

db/go-lego.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/go/extensions/go-lego.owl > $@.tmp && mv $@.tmp $@

db/bao.owl: STAMP
	robot merge -I http://www.bioassayontology.org/bao/bao_complete.owl -o $@

db/cpont.owl: STAMP
	curl -L -s https://w3id.org/cpont/cpont.owl > $@.tmp && mv $@.tmp $@

db/biolink.owl: STAMP
	robot merge -I https://w3id.org/biolink/biolink-model.owl.ttl -o $@

db/biopax.owl: STAMP
	curl -L -s http://www.biopax.org/release/biopax-level3.owl > $@.tmp && mv $@.tmp $@

db/enanomapper.owl: STAMP
	robot merge -I http://enanomapper.github.io/ontologies/enanomapper.owl -o $@

db/mlo.owl: STAMP
	robot merge -I https://raw.githubusercontent.com/berkeleybop/artificial-intelligence-ontology/main/external/ml-ontology-202010021305.owl -o $@

db/ito.owl: STAMP
	curl -L -s https://github.com/OpenBioLink/ITO/raw/master/ITO.owl.zip > $@.tmp && unzip -p $@.tmp ITO.owl > $@.tmp2 && mv $@.tmp2 $@ && rm $@.tmp

db/efo.owl: STAMP
	robot merge -I http://www.ebi.ac.uk/efo/efo.owl -o $@

db/edam.owl: STAMP
	curl -L -s http://edamontology.org/EDAM.owl > $@.tmp && mv $@.tmp $@

db/sweetAll.owl: STAMP
	robot merge -I http://sweetontology.net/sweetAll -o $@

db/lov.owl: STAMP
	robot merge -I https://lov.linkeddata.es/lov.n3.gz -o $@

db/schema-dot-org.owl: STAMP
	curl -L -s https://schema.org/version/latest/schemaorg-current-https.rdf > $@.tmp && mv $@.tmp $@

db/cosmo.owl: STAMP
	robot merge -I https://micra.com/COSMO/COSMO.owl -o $@

db/co_324.owl: STAMP
	curl -L -s https://cropontology.org/ontology/CO_324/rdf > $@.tmp && mv $@.tmp $@

EXTRA_ONTOLOGIES = chiro chebiplus msio phenio comploinc bero aio reacto go-lego bao cpont biolink biopax enanomapper mlo ito efo edam sweetAll lov schema-dot-org cosmo co_324
