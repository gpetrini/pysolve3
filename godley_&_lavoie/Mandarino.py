#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Sep 24 13:55:00 2018

@author: Gabriel Mandarino (Modelo teórico)
@author: Gabriel Petrini (Código em python)
"""

# Importando os pacotes
from pysolve.model import Model
from pysolve.utils import is_close, round_solution

import matplotlib.pyplot as plt

def create_sim_model():
    model = Model()
    model.set_var_default(0)
    model.var('i', desc='Taxa de Juros')
    
    return model