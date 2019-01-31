""" Contains utility functions

    Copyright (c) 2014 Kenn Takara
    See LICENSE for details

"""

import numpy


def round_solution(soln, decimals=4):
    """ Runs through a dict() and rounds the values.

        Arguments:
            soln: The values in this dict() will be rounded using
                numpy.round().
            decimals: The number of decimals places to the right to
                be rounded.

        Returns: A new dict() that contains the rounded values.
    """
    new_soln = dict()
    for key in soln.keys():
        new_soln[key] = numpy.round(soln[key], decimals=decimals)
    return new_soln


def is_aclose(prev, curr, atol=1e-4, rtol=1e-4):
    """ Determines if the values within two dicts() are
        close.  Uses numpy.isclose()

        Arguments:
            prev: previous iteration dict()
            curr: current iteration dict()
            atol: absolute tolerance
            rtol: relative tolerance

        Returns: True if the values of the dict() are within
            the tolerances.  False otherwise.
    """
    aprev = numpy.array(prev)
    acurr = numpy.array(curr)
    return numpy.allclose(aprev, acurr, atol=atol, rtol=rtol)


def is_close(prev, curr, atol=1e-4, rtol=1e-4):
    """ Determines if the values within two dicts() are
        close.  Uses numpy.isclose()

        Arguments:
            prev: previous iteration dict()
            curr: current iteration dict()
            atol: absolute tolerance
            rtol: relative tolerance

        Returns: True if the values of the dict() are within
            the tolerances.  False otherwise.
    """
    for k in prev.keys():
        if not numpy.isclose(prev[k], curr[k], atol=atol, rtol=rtol):
            return False
    return True


def generate_html_table(header, adata):
    """ Generates an html table for use within iPython """

    def _add_row(rowtype, rowdata):
        """ Adds HTML for a single row """
        sdata = "<tr>"
        for data in rowdata:
            sdata += "<{0}>{1}</{0}>".format(rowtype, data)
        sdata += "</tr>"
        return sdata

    shtml = "<table>"
    if header is not None:
        shtml += _add_row("th", header)
    for row in adata:
        shtml += _add_row("td", row)
    shtml += "</table>"
    return shtml

def SFCTable(model):
    """
    Create a pandas DateFrame for the model.
    model = model class object already simulated
    """
    import pandas as pd
    time = len(model.solutions)
    data_dict = {
    i: model.solutions[i] for i in range(time)
                }
    df = pd.DataFrame(data_dict).transpose()
    return df

def AddGrowth(df, variables):
    """
    Add Growth rate in the table
    df: A dataframe generated using SFCTable
    variables: a list of variables to calculate growth rate
    """
    import pandas as pd
    import numpy as np
    time = df.shape[0]
    
    for variable in variables:
        variable = str(variable)
        gvariable = 'g' + variable
        df[gvariable] = [np.nan, np.nan] + [(df[variable][i] - df[variable][i-1])/df[variable][i-1] for i in range(2,time)]

def SolveSFC(model, time=500, iterations=100, threshold=1e-5, table=True):
    """
    Solves the model
    model: a Model class object
    time: time range to simulate
    iterations: the number of iterations
    threshold: threshold
    table: if True, returns a DataFrame using SFCTable. If so, it must be assigned to a variable
    """

    for i in range(time):
        model.solve(iterations=iterations, threshold=1e-5)
        
    if table == True:
        df = SFCTable(model)
        return df
    else:
        pass

def ShockModel(base_model, create_function, variable, increase, time=500, table=True):
    """
    Shocks the model.
    base_model: The base scenario model
    create_function: the function used to create the model class
    variable: the variable to shock.
    increase: the value to be increassed to the variable
    time: the time to simulate using SolveSFC().
    """
    variable = str(variable)
    increase = float(increase)
    model = create_function
    
    lagged = [key for key in base_model.solutions[-1].keys()]
    lagged = [i for i in lagged if "__1" in i]
    for i in lagged:
        del base_model.solutions[-1][i]
    
    model.set_values(base_model.solutions[-1])
    
    SolveSFC(model, time=50, table=False)

    model.parameters[variable].value += increase
    
    df = SolveSFC(model, time=time, table=table)
    return df
    
    

