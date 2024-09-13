#!/usr/bin/env python


# local
from .misc import misc
from .quotes import quotes
from .control_flow import control_flow
from .functions_and_closures import functions_and_closures
from .objects_and_classes import objects_and_classes


### FUNCTIONS
def tour():
    misc()
    quotes()
    control_flow()
    functions_and_closures()
    objects_and_classes()
