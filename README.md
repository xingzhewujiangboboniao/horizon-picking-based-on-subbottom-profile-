# horizon-picking-based-on-subbottom-profile-
horizon picking based on subbottom profile 

0. The pciking method is described in article "A Comprehensive Horizon Picking Method on Subbottom Profiles by Combining Envelope, Phase Attributes, and Texture Analysis".(This article is underview now)
1. Envelop data and fullwave data can be processed through this software. Test data can be found through https://zenodo.org/record/3514447#.Xaz53mZ5taQ and https://zenodo.org/record/1482324#.Xaz1-GZ5taR. The data is saved as .mat format. And when the data are loaded, a data named 'cdata' will be processed in the following steps.
2. Run SBP_Horizon_Picking.m.
3. The value saved in effect_range.txt  repersents the percentage of the number of rows of data to be processed.
4. The value saved in EnvTh.txt represents the envelop threshold in envelop picking.
5. info.txt saves the storage path of the data.
6. The value saved in Remove.txt represents the mean distance between two layers. If set to 0, the program provides an automatically calculated value
7. The value saved in Seg.txt determines whether the texture is segmented or not.
8. The value saved in Thickness.txt can be set as 4 when a thick layer exists, or set as 2 when a thin layer exists.
