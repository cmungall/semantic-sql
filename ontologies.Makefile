download/upheno.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/upheno.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/upheno.owl

db/upheno.owl: download/upheno.owl
	robot merge -i $<  -o $@


download/chiro.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/chiro.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/chiro.owl

db/chiro.owl: download/chiro.owl
	robot relax -i $< merge -o $@


download/ncit.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/ncit.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/ncit.owl

db/ncit.owl: download/ncit.owl
	robot relax -i $< merge -o $@


download/fma.owl: STAMP
	curl -L -s http://sig.biostr.washington.edu/share/downloads/fma/release/latest/fma.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/fma.owl

db/fma.owl: download/fma.owl
	cp $< $@


download/maxo.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/maxo.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/maxo.owl

db/maxo.owl: download/maxo.owl
	robot relax -i $< merge reason -r structural -o $@


download/foodon.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/foodon.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/foodon.owl

db/foodon.owl: download/foodon.owl
	robot merge -i $< relax reduce -c true -o $@


download/chebiplus.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/chebi.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/chebiplus.owl

db/chebiplus.owl: download/chebiplus.owl
	robot merge -i $< -I http://purl.obolibrary.org/obo/chiro.owl relax -o $@


download/msio.owl: STAMP
	curl -L -s https://raw.githubusercontent.com/MSI-Metabolomics-Standards-Initiative/MSIO/master/releases/latest_release/MSIO-merged-reasoned.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/msio.owl

db/msio.owl: download/msio.owl
	cp $< $@


download/modl.owl: STAMP
	curl -L -s https://raw.githubusercontent.com/Data-Semantics-Laboratory/modular-ontology-design-library/master/MODL.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/modl.owl

db/modl.owl: download/modl.owl
	cp $< $@


download/phenio.owl: STAMP
	curl -L -s https://github.com/monarch-initiative/phenio/releases/latest/download/phenio.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/phenio.owl

db/phenio.owl: download/phenio.owl
	cp $< $@


download/phenio_test.owl: STAMP
	curl -L -s https://github.com/monarch-initiative/phenio/releases/latest/download/phenio-test.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/phenio_test.owl

db/phenio_test.owl: download/phenio_test.owl
	cp $< $@


download/comploinc.owl: STAMP
	curl -L -s https://github.com/loinc/comp-loinc/releases/download/v2022-11-05/merged_reasoned_loinc.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/comploinc.owl

db/comploinc.owl: download/comploinc.owl
	robot relax -i $< merge -o $@


download/hba.owl: STAMP
	curl -L -s https://github.com/brain-bican/human_brain_atlas_ontology/raw/main/hbao-base.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/hba.owl

db/hba.owl: download/hba.owl
	cp $< $@


download/mba.owl: STAMP
	curl -L -s https://github.com/brain-bican/mouse_brain_atlas_ontology/raw/main/mbao-base.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/mba.owl

db/mba.owl: download/mba.owl
	cp $< $@


download/dmba.owl: STAMP
	curl -L -s https://github.com/brain-bican/developing_mouse_brain_atlas_ontology/raw/main/dmbao-base.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/dmba.owl

db/dmba.owl: download/dmba.owl
	cp $< $@


download/dhba.owl: STAMP
	curl -L -s https://github.com/brain-bican/developing_human_brain_atlas_ontology/raw/main/dhbao-base.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/dhba.owl

db/dhba.owl: download/dhba.owl
	cp $< $@


download/pba.owl: STAMP
	curl -L -s https://github.com/brain-bican/primate_brain_atlas_ontology/raw/main/pbao-base.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/pba.owl

db/pba.owl: download/pba.owl
	cp $< $@


download/bero.owl: STAMP
	curl -L -s https://github.com/berkeleybop/bero/releases/download/2022-05-26/bero.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/bero.owl

db/bero.owl: download/bero.owl
	cp $< $@


download/aio.owl: STAMP
	curl -L -s https://raw.githubusercontent.com/berkeleybop/artificial-intelligence-ontology/main/aio.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/aio.owl

db/aio.owl: download/aio.owl
	cp $< $@


download/reacto.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/go/extensions/reacto.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/reacto.owl

db/reacto.owl: download/reacto.owl
	cp $< $@


download/bcio.owl: STAMP
	curl -L -s http://humanbehaviourchange.org/ontology/bcio.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/bcio.owl

db/bcio.owl: download/bcio.owl
	cp $< $@


download/icd10who.owl: STAMP
	curl -L -s https://github.com/monarch-initiative/mondo-ingest/releases/latest/download/icd10who.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/icd10who.owl

db/icd10who.owl: download/icd10who.owl
	cp $< $@


download/ordo.owl: STAMP
	curl -L -s https://github.com/monarch-initiative/mondo-ingest/releases/latest/download/ordo.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/ordo.owl

db/ordo.owl: download/ordo.owl
	cp $< $@


download/gard.owl: STAMP
	curl -L -s https://github.com/monarch-initiative/mondo-ingest/releases/latest/download/gard.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/gard.owl

db/gard.owl: download/gard.owl
	cp $< $@


download/mondo-ingest.owl: STAMP
	curl -L -s https://github.com/monarch-initiative/mondo-ingest/releases/latest/download/mondo-ingest.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/mondo-ingest.owl

db/mondo-ingest.owl: download/mondo-ingest.owl
	cp $< $@


download/oeo.owl: STAMP
	curl -L -s https://openenergyplatform.org/ontology/oeo/releases/oeo-full.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/oeo.owl

db/oeo.owl: download/oeo.owl
	cp $< $@


download/sdgio.owl: STAMP
	curl -L -s https://raw.githubusercontent.com/SDG-InterfaceOntology/sdgio/master/sdgio.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/sdgio.owl

db/sdgio.owl: download/sdgio.owl
	cp $< $@


download/biovoices.owl: STAMP
	curl -L -s https://zenodo.org/record/5589773/files/ontology.owl?download=1 > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/biovoices.owl

db/biovoices.owl: download/biovoices.owl
	robot relax -i $< merge -o $@


download/omop.owl: STAMP
	curl -L -s None > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/omop.owl

db/omop.owl: download/omop.owl
	cp $< $@


download/cco.owl: STAMP
	curl -L -s http://www.ontologyrepository.com/CommonCoreOntologies/Mid/AllCoreOntology > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/cco.owl

db/cco.owl: download/cco.owl
	robot merge -i $< relax -o $@


download/occo.owl: STAMP
	curl -L -s https://raw.githubusercontent.com/Occupation-Ontology/OccO/main/src/ontology/occo-merged.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/occo.owl

db/occo.owl: download/occo.owl
	cp $< $@


download/iof.owl: STAMP
	curl -L -s https://spec.industrialontologies.org/ontology/AboutIOFProd/ > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/iof.owl

db/iof.owl: download/iof.owl
	robot relax -i $< merge -o $@


download/upa.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/upa.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/upa.owl

db/upa.owl: download/upa.owl
	cp $< $@


download/go.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/go/extensions/go-plus.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/go.owl

db/go.owl: download/go.owl
	cp $< $@


download/go-lego.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/go/extensions/go-lego.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/go-lego.owl

db/go-lego.owl: download/go-lego.owl
	cp $< $@


download/go-amigo.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/go/extensions/go-amigo.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/go-amigo.owl

db/go-amigo.owl: download/go-amigo.owl
	cp $< $@


download/neo.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/go/noctua/neo.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/neo.owl

db/neo.owl: download/neo.owl
	cp $< $@


download/bao.owl: STAMP
	curl -L -s http://www.bioassayontology.org/bao/bao_complete.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/bao.owl

db/bao.owl: download/bao.owl
	robot merge -i $< -o $@


download/orcid.owl: STAMP
	curl -L -s https://raw.githubusercontent.com/cthoyt/wikidata-orcid-ontology/main/orcid.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/orcid.owl

db/orcid.owl: download/orcid.owl
	cp $< $@


download/cpont.owl: STAMP
	curl -L -s https://w3id.org/cpont/cpont.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/cpont.owl

db/cpont.owl: download/cpont.owl
	cp $< $@


download/biolink.owl: STAMP
	curl -L -s https://w3id.org/biolink/biolink-model.owl.ttl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/biolink.owl

db/biolink.owl: download/biolink.owl
	robot merge -i $< -o $@


download/biopax.owl: STAMP
	curl -L -s http://www.biopax.org/release/biopax-level3.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/biopax.owl

db/biopax.owl: download/biopax.owl
	cp $< $@


download/enanomapper.owl: STAMP
	curl -L -s http://enanomapper.github.io/ontologies/enanomapper.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/enanomapper.owl

db/enanomapper.owl: download/enanomapper.owl
	robot merge -i $< -o $@


download/mlo.owl: STAMP
	curl -L -s https://raw.githubusercontent.com/berkeleybop/artificial-intelligence-ontology/main/external/ml-ontology-202010021305.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/mlo.owl

db/mlo.owl: download/mlo.owl
	robot merge -i $< -o $@


download/ito.owl: STAMP
	curl -L -s https://github.com/OpenBioLink/ITO/raw/master/ITO.owl.zip > $@.zip.tmp && unzip -p $@.zip.tmp {ont.zip_extract_file} > $@.tmp && rm $@.zip.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/ito.owl

db/ito.owl: download/ito.owl
	cp $< $@


download/reactome-Homo-sapiens.owl: STAMP
	curl -L -s https://reactome.org/download/current/biopax.zip > $@.zip.tmp && unzip -p $@.zip.tmp {ont.zip_extract_file} > $@.tmp && rm $@.zip.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/reactome-Homo-sapiens.owl

db/reactome-Homo-sapiens.owl: download/reactome-Homo-sapiens.owl
	cp $< $@


download/efo.owl: STAMP
	curl -L -s http://www.ebi.ac.uk/efo/efo.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/efo.owl

db/efo.owl: download/efo.owl
	robot merge -i $< -o $@


download/hcao.owl: STAMP
	curl -L -s https://raw.githubusercontent.com/HumanCellAtlas/ontology/master/hcao.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/hcao.owl

db/hcao.owl: download/hcao.owl
	cp $< $@


download/hpinternational.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/hp/hp-international.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/hpinternational.owl

db/hpinternational.owl: download/hpinternational.owl
	cp $< $@


download/edam.owl: STAMP
	curl -L -s http://edamontology.org/EDAM.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/edam.owl

db/edam.owl: download/edam.owl
	cp $< $@


download/sweetAll.owl: STAMP
	curl -L -s http://sweetontology.net/sweetAll > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/sweetAll.owl

db/sweetAll.owl: download/sweetAll.owl
	robot merge -i $< -o $@


download/lov.owl: STAMP
	curl -L -s https://lov.linkeddata.es/lov.n3.gz | gzip -dc > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/lov.owl

db/lov.owl: download/lov.owl
	robot merge -i $< -o $@


download/schema-dot-org.owl: STAMP
	curl -L -s https://schema.org/version/latest/schemaorg-current-https.rdf > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/schema-dot-org.owl

db/schema-dot-org.owl: download/schema-dot-org.owl
	cp $< $@


download/prov.owl: STAMP
	curl -L -s http://www.w3.org/ns/prov.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/prov.owl

db/prov.owl: download/prov.owl
	cp $< $@


download/cellosaurus.owl: STAMP
	curl -L -s https://raw.githubusercontent.com/calipho-sib/cellosaurus/master/cellosaurus.obo > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/cellosaurus.owl

db/cellosaurus.owl: download/cellosaurus.owl
	robot merge -i $< -o $@


download/cosmo.owl: STAMP
	curl -L -s https://micra.com/COSMO/COSMO.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/cosmo.owl

db/cosmo.owl: download/cosmo.owl
	robot merge -i $< -o $@


download/fhkb.owl: STAMP
	curl -L -s None > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/fhkb.owl

db/fhkb.owl: download/fhkb.owl
	cp $< $@


download/dbpendiaont.owl: STAMP
	curl -L -s https://databus.dbpedia.org/ontologies/dbpedia.org/ontology--DEV/2023.01.03-072003/ontology--DEV_type=parsed.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/dbpendiaont.owl

db/dbpendiaont.owl: download/dbpendiaont.owl
	cp $< $@


download/uberoncm.owl: STAMP
	curl -L -s https://github.com/obophenotype/uberon/releases/latest/download/composite-metazoan.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/uberoncm.owl

db/uberoncm.owl: download/uberoncm.owl
	cp $< $@


download/icd10cm.owl: STAMP
	curl -L -s https://github.com/monarch-initiative/mondo-ingest/releases/latest/download/icd10cm.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/icd10cm.owl

db/icd10cm.owl: download/icd10cm.owl
	cp $< $@


download/co_324.owl: STAMP
	curl -L -s https://cropontology.org/ontology/CO_324/rdf > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/co_324.owl

db/co_324.owl: download/co_324.owl
	cp $< $@


download/ppeo.owl: STAMP
	curl -L -s http://purl.org/ppeo/PPEO.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/ppeo.owl

db/ppeo.owl: download/ppeo.owl
	cp $< $@


download/interpro.owl: STAMP
	curl -L -s https://w3id.org/biopragmatics/resources/interpro/interpro.obo > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/interpro.owl

db/interpro.owl: download/interpro.owl
	perl -npe 's@ go:@ GO:@g;s@ ro:@ RO:@g;s@ interpro:@ InterPro:@g' $< > $@.tmp && robot convert -i $@.tmp -o $@


download/hgnc.genegroup.owl: STAMP
	curl -L -s https://github.com/biopragmatics/obo-db-ingest/raw/main/export/hgnc.genegroup/hgnc.genegroup.owl.gz | gzip -dc > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/hgnc.genegroup.owl

db/hgnc.genegroup.owl: download/hgnc.genegroup.owl
	cp $< $@


download/hgnc.owl: STAMP
	curl -L -s https://github.com/biopragmatics/obo-db-ingest/raw/main/export/hgnc/2022-06-01/hgnc.owl.gz | gzip -dc > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/hgnc.owl

db/hgnc.owl: download/hgnc.owl
	cp $< $@


download/sgd.owl: STAMP
	curl -L -s https://w3id.org/biopragmatics/resources/sgd/sgd.obo > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/sgd.owl

db/sgd.owl: download/sgd.owl
	robot merge -i $< -o $@


download/dictybase.owl: STAMP
	curl -L -s https://github.com/biopragmatics/obo-db-ingest/raw/main/export/dictybase/dictybase.owl.gz | gzip -dc > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/dictybase.owl

db/dictybase.owl: download/dictybase.owl
	cp $< $@


download/eccode.owl: STAMP
	curl -L -s https://w3id.org/biopragmatics/resources/eccode/eccode.owl.gz | gzip -dc > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/eccode.owl

db/eccode.owl: download/eccode.owl
	cp $< $@


download/uniprot.owl: STAMP
	curl -L -s https://github.com/biopragmatics/obo-db-ingest/raw/main/export/uniprot/2022_02/uniprot.owl.gz | gzip -dc > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/uniprot.owl

db/uniprot.owl: download/uniprot.owl
	cp $< $@


download/rhea.owl: STAMP
	curl -L -s https://w3id.org/biopragmatics/resources/rhea/rhea.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/rhea.owl

db/rhea.owl: download/rhea.owl
	cp $< $@


download/swisslipid.owl: STAMP
	curl -L -s https://github.com/biopragmatics/obo-db-ingest/raw/main/export/swisslipid/2023-02-03/swisslipid.obo.gz | gzip -dc > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/swisslipid.owl

db/swisslipid.owl: download/swisslipid.owl
	robot merge -i $< -o $@


download/drugbank.owl: STAMP
	curl -L -s https://github.com/biopragmatics/obo-db-ingest/raw/main/export/drugbank/5.1.9/drugbank.owl.gz | gzip -dc > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/drugbank.owl

db/drugbank.owl: download/drugbank.owl
	cp $< $@


download/drugcentral.owl: STAMP
	curl -L -s https://github.com/biopragmatics/obo-db-ingest/raw/main/export/drugcentral.owl.gz | gzip -dc > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/drugcentral.owl

db/drugcentral.owl: download/drugcentral.owl
	cp $< $@


download/complexportal.owl: STAMP
	curl -L -s https://github.com/biopragmatics/obo-db-ingest/raw/main/export/complexportal/2022-02-03/complexportal.owl.gz | gzip -dc > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/complexportal.owl

db/complexportal.owl: download/complexportal.owl
	cp $< $@


download/wikipathways.owl: STAMP
	curl -L -s https://w3id.org/biopragmatics/resources/wikipathways/wikipathways.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/wikipathways.owl

db/wikipathways.owl: download/wikipathways.owl
	cp $< $@


download/drugmechdb.owl: STAMP
	curl -L -s None > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/drugmechdb.owl

db/drugmechdb.owl: download/drugmechdb.owl
	cp $< $@


download/rxnorm.owl: STAMP
	curl -L -s None > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/rxnorm.owl

db/rxnorm.owl: download/rxnorm.owl
	cp $< $@


download/vccf.owl: STAMP
	curl -L -s https://raw.githubusercontent.com/obophenotype/vccf-ontology/main/vccf.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/vccf.owl

db/vccf.owl: download/vccf.owl
	cp $< $@


download/ontobiotope.owl: STAMP
	curl -L -s 'https://data.agroportal.lirmm.fr/ontologies/ONTOBIOTOPE/download?apikey=1de0a270-29c5-4dda-b043-7c3580628cd5&download_format=rdf' > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/ontobiotope.owl

db/ontobiotope.owl: download/ontobiotope.owl
	cp $< $@


download/nando.owl: STAMP
	curl -L -s 'https://data.bioontology.org/ontologies/NANDO/submissions/15/download?apikey=8b5b7825-538d-40e0-9e9e-5ab9274a9aeb' > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/nando.owl

db/nando.owl: download/nando.owl
	cp $< $@


download/ontie.owl: STAMP
	curl -L -s https://ontology.iedb.org/file/ontie.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/ontie.owl

db/ontie.owl: download/ontie.owl
	cp $< $@


download/ecosim.owl: STAMP
	curl -L -s https://data.bioontology.org/ontologies/ECOSIM/submissions/1/download?apikey=8b5b7825-538d-40e0-9e9e-5ab9274a9aeb > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/ecosim.owl

db/ecosim.owl: download/ecosim.owl
	cp $< $@


download/nmdc_schema.owl: STAMP
	curl -L -s https://raw.githubusercontent.com/microbiomedata/nmdc-schema/main/project/owl/nmdc.owl.ttl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/nmdc_schema.owl

db/nmdc_schema.owl: download/nmdc_schema.owl
	robot merge -i $<  -o $@


download/mixs.owl: STAMP
	curl -L -s https://raw.githubusercontent.com/microbiomedata/mixs-6-2-release-candidate/main/schema-derivatives/mixs_6_2_rc.owl.ttl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/mixs.owl

db/mixs.owl: download/mixs.owl
	robot merge -i $< reason  -o $@.tmp.owl && perl -npe 's@_6_2_rc@@g;s@-6-2-rc@@g' $@.tmp.owl > $@


download/fibo.owl: STAMP
	curl -L -s https://spec.edmcouncil.org/fibo/ontology/AboutFIBOProd/ > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/fibo.owl

db/fibo.owl: download/fibo.owl
	robot merge -i $<  -o $@


download/bfo2020.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/bfo/2020/bfo.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/bfo2020.owl

db/bfo2020.owl: download/bfo2020.owl
	cp $< $@


download/bfo2020_core.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/bfo/2020/bfo-core.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/bfo2020_core.owl

db/bfo2020_core.owl: download/bfo2020_core.owl
	cp $< $@


download/bfo2020_notime.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/bfo/2020/notime/bfo.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/bfo2020_notime.owl

db/bfo2020_notime.owl: download/bfo2020_notime.owl
	cp $< $@


download/bfo2020_time.owl: STAMP
	curl -L -s https://raw.githubusercontent.com/BFO-ontology/BFO-2020/master/src/owl/profiles/temporal%20extensions/temporalized%20relations/owl/bfo-temporalized-relations.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/bfo2020_time.owl

db/bfo2020_time.owl: download/bfo2020_time.owl
	cp $< $@


download/%.owl: STAMP
	curl -L -s http://purl.obolibrary.org/obo/$*.owl > $@.tmp
	sha256sum -b $@.tmp > $@.sha256
	mv $@.tmp $@

.PRECIOUS: download/%.owl

db/%.owl: download/%.owl
	robot merge -i $< -o $@

EXTRA_ONTOLOGIES = upheno chiro ncit fma maxo foodon chebiplus msio modl phenio phenio_test comploinc hba mba dmba dhba pba bero aio reacto bcio icd10who ordo gard mondo-ingest oeo sdgio biovoices omop cco occo iof upa go go-lego go-amigo neo bao orcid cpont biolink biopax enanomapper mlo ito reactome-Homo-sapiens efo hcao hpinternational edam sweetAll lov schema-dot-org prov cellosaurus cosmo fhkb dbpendiaont uberoncm icd10cm co_324 ppeo interpro hgnc.genegroup hgnc sgd dictybase eccode uniprot rhea swisslipid drugbank drugcentral complexportal wikipathways drugmechdb rxnorm vccf ontobiotope nando ontie ecosim nmdc_schema mixs fibo bfo2020 bfo2020_core bfo2020_notime bfo2020_time
