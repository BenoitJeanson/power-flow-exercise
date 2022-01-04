# Planning exercise

1. Start with RTS-GMLC
2. Adjust system requirement
   1. Remove conventional generation (remove coal) / Set RE target
   2. Increase load (reflecting standard load growth, electrification, ...)
3. Optimal expansion planning (PyPSA) 
   1. Assumptions: only add/adjust conductors on existing paths, capital-costs, ...  
   2. One scenario results in a new generation porfolio 
   3. One scenario results in a new generation and transmission porfolio
4. Optimal integration planning (Powsybl, Pandapower)
  - establish assumptions for representing details of exapsnsions identified in step 3. (e.g. if 3.3 identifies new transmission capacity along a path, should we optimize the design of the entire path or just the new capacity?)
  - enforce DC security constraints
  - results in a N-1 secure, AC feasible (hopefully) network
5. System performance (no new resource)
  - Load flow
  - UC/ED analsysis
  - Production Cost Modeling
  - ...
