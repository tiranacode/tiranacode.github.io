from jinja2 import Environment, FileSystemLoader
import json
import os, sys
import argparse

STATIC_FOLDER = 'static'
ARTICLES_BASEDIR = os.path.join(STATIC_FOLDER, 'articles')
TEMPLATES_BASEDIR = os.path.join(STATIC_FOLDER, 'templates')
OUTPUTS_BASEDIR = os.path.join(STATIC_FOLDER, 'output')
TEMPLATE = "template.tpl"
OUTPUT = "newsletter.html"


TEMPLATE_LOADER = FileSystemLoader( searchpath=TEMPLATES_BASEDIR )
ENV = Environment(loader=TEMPLATE_LOADER)


parser = argparse.ArgumentParser(description='Compile the newsletter')
parser.add_argument('datafiles', metavar='datafile', type=str, nargs='+',
                   help='the file(s) containing the articles')
parser.add_argument('--tpl', dest='template', action='store_const',
                   const=TEMPLATE, default=TEMPLATE,
                   help='The html template used for this newsletter')

def compile(template, data):
    tpl = ENV.get_template(template)
    return tpl.render(**data)


def make_newsletter(template, articles_fname):
    fname = os.path.join(ARTICLES_BASEDIR, articles_fname)
    with open(fname, 'r') as fd:
        data = json.load(fd)
        return compile(template, data)

if __name__ == '__main__':
    args = parser.parse_args()
    for fname in args.datafiles:
        if not fname.endswith('.json'):
            print "Only json files are acceptable"
            sys.exit(1)
        out_fname = os.path.join(OUTPUTS_BASEDIR, "%s.html" % fname.split('.')[0])
        html = make_newsletter(args.template, fname)
        with open(out_fname, 'w') as out:
            try:
                out.write(html.encode('utf-8'))
                print "Output written in %s" % out_fname
            except Exception as e:
                print "Error writing to file", e.message
