import unittest

import logging
import unittest
import os
from semsql.sqla.owl import OwlSomeValuesFrom
from semsql.sqla.rdf import RdfsLabelStatement, RdfsSubclassOfStatement
from sqlalchemy import Column, ForeignKey, Integer, String, Text
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship, sessionmaker, aliased
from sqlalchemy import create_engine



cwd = os.path.abspath(os.path.dirname(__file__))
DB_DIR = os.path.join(cwd, 'inputs')
OUTPUT_DIR = os.path.join(cwd, 'outputs')

class OwlQueryTestCase(unittest.TestCase):
    path = os.path.join(DB_DIR, 'go-nucleus.db')
    engine = create_engine(f"sqlite:///{path}")
    Session = sessionmaker(bind=engine)
    session = Session()
    print('OWL query:')
    q = session.query(RdfsSubclassOfStatement, OwlSomeValuesFrom).\
        join(OwlSomeValuesFrom, RdfsSubclassOfStatement.object == OwlSomeValuesFrom.id)
    for ax, ex in q.all():
        print(f'{ax.subject} subClassOf {ex.on_property} SOME {ex.filler}')
    print('OWL query, with labels')
    subclass_label = aliased(RdfsLabelStatement)
    filler_label = aliased(RdfsLabelStatement)
    # TODO: improve sqla mappings so this does not need to be as explicit
    q = session.query(RdfsSubclassOfStatement, OwlSomeValuesFrom, subclass_label, filler_label). \
        join(OwlSomeValuesFrom, RdfsSubclassOfStatement.object == OwlSomeValuesFrom.id). \
        join(subclass_label, subclass_label.subject == RdfsSubclassOfStatement.subject). \
        join(filler_label, filler_label.subject == RdfsSubclassOfStatement.subject)
    lines = []
    for ax, ex, sl, fl in q.all():
        line = f'{ax.subject} "{sl.value}" subClassOf {ex.on_property} SOME {ex.filler} "{fl.value}"'
        print(line)
        lines.append(line)
    assert 'GO:0012505 "endomembrane system" subClassOf BFO:0000051 SOME GO:0005886 "endomembrane system"' \
           in lines
