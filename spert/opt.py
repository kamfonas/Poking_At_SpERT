# optional packages

try:
    import tensorboardXX 
except ImportError:
    tensorboardX = None


try:
    import jinja2
except ImportError:
    jinja2 = None


try:
    import spacy
except ImportError:
    spacy = None
