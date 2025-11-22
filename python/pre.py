"""Modules imported by default when starting a new IPython kernel."""

import numpy as np
import scipy as scp

# Robotics
try:
    import gtsam
    import gtdynamics as gtd  # isort: skip
except ImportError as exc:
    print("gtsam (or sister library) not imported.")
    print(exc.msg)


# # Machine Learning
# try:
#     import torch
#     import torchvision
# except ImportError as exc:
#     print("A machine learning library was not imported.")
#     print(exc.msg)
