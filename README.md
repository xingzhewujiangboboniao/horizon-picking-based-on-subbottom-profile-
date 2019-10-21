# horizon-picking-based-on-subbottom-profile-
horizon picking based on subbottom profile 

0. The pciking method is described in article "A Comprehensive Horizon Picking Method on Subbottom Profiles by Combining Envelope, Phase Attributes, and Texture Analysis".(This article is underview now)
1. Envelop data and fullwave data can be processed through this software. Test data can be found through https://zenodo.org/record/3514447#.Xaz53mZ5taQ and https://zenodo.org/record/1482324#.Xaz1-GZ5taR.
2. Run the SBP_Horizon_Picking.m.
3. The value saved in effect_range.txt  repersents the percentage of the number of rows of data to be processed.
4. EnvTh.txt represents the envelop threshold in envelop picking.
5. info.txt saves the storage path of the data.
6. The value saved in Remove.txt represents the mean distance between two layers. If set to 0, the program provides an automatically calculated value
7. The value saved in Seg.txt determines whether the texture is segmented or not.
8. The value saved in Thickness.txt can be set as 4 when a thick layer exists, or set as 2 when a thin layer exists.
9. When cahnging the parameters in GUI, some errors may be caused. However, the parameters have been changed in fact. Thus, it is appropriate to ignore these errors. 
