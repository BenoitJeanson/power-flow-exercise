# Planning exercise

1. Start with RTS-GMLC
2. Adjust system requirement
  a. Remove conventional generation (remove coal) / Set RE target
  c. Increase load (reflecting standard load growth, electrification, ...)
3. Optimal expansion planning (PyPSA) 
  a. Assumptions: only add conductors on existing paths, capital-costs, ...  
  b. One scenario results in a new generation porfolio 
  c. One scenario results in a new generation and transmission porfolio
4. Optimal integration planning (Powsybl, Pandapower)
  - enforce DC security constraints
  - results in a N-1 secure, AC feasible (hopefully) network
5. System performance (no new resource)
  - Load flow
  - UC/ED analsysis
  - Production Cost Modeling
  - ...
