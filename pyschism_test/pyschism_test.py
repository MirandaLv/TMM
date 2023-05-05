
from pyschism.mesh import Hgrid
from pyschism.mesh import Hgrid



f = r"/Users/mirandalv/Documents/projects/github/pyschism/hgrid.gr3"
hgrid = Hgrid.open(f)
hgrid.make_plot(show=True)
hgrid.write("file.2dm", fmt='2dm')
