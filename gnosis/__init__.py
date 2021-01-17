import os

readme_file = os.path.join(os.getcwd(), 'README')
readme_cnt = ""

try:
	with open(readme_file, 'r') as f:
		readme_cnt = f.read()

	__doc__ = readme_cnt
except:
	__doc__ = """
The most current distutils release is available as:

http://gnosis.cx/download/Gnosis_Utils-current.tar.gz

This directory may contain more up-to-date versions of some files.

----------------------------------------------------------------------
BACKGROUND:  Gnosis Utilities contains a number of Python libraries,
most (but not all) related to working with XML.  These include:

    gnosis.xml.pickle       (XML pickling of Python objects)
    gnosis.xml.objectify    (Any XML to "native" Python objects)
    gnosis.xml.validity     (Enforce validity constraints)
    gnosis.xml.indexer      (XPATH indexing of XML documents)
    gnosis.xml.relax        (Tools for working with RelaxNG)
    gnosis.indexer          (Full-text indexing/searching)
    [...].convert.txt2html  (Convert ASCII source files to HTML)
    gnosis.util.dtd2sql     (DTD -> SQL 'CREATE TABLE' statements)
    gnosis.util.sql2dtd     (SQL query -> DTD for query results)
    gnosis.util.xml2sql     (XML -> SQL 'INSERT INTO' statements)
    gnosis.util.combinators (Combinatorial higher-order functions)
    gnosis.util.introspect  (Introspect Python objects)
    gnosis.magic            (Multimethods, metaclasses, etc)

...and so much more! :-)
	"""
