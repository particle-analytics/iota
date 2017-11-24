#Residence Time Calculation

This feature makes possible to calculate of the average amount of time that a particle spends in a particular region, or regions. The results can be made into a graph showing how long particles are spending in different parts of the system, over the duration of the DEM simulation.

###Setup
Once selected from the list of ``Advanced`` at the [Averaging](/coarse_graining/cg_Averaging.md) tab of the coarse-grainig module, the user will see a ``Residence Time Calculation`` window open, where they can define one or more regions (control volumes) across which the calculation will take place. 


![](/assets/iota-cg-Averaging-Adavanced_ResidenceTime_cropped.PNG) <a name="Ioata-CG-ResidenceTime"></a>

_Figure 52 - "Residence Time Calculation" window of the [coarse-graining](/coarse_graining/cg_setting_cg.md) module._


To define a cuboid control volume, select ``Box`` in the New Control Volume pull-down menu, and hit the + button. The window ``Control Volume Box`` will show up with the following fields:
* **Label**: name provided by the user to indentify the control volume
* **Point Init**: coordinates of one of the corners that define a cuboid that is axis-alingned with the main X, Y and Z axis.
* **Point End**: coordinates of the opposite corner to "Point Intit" defining a cuboid that is axis-alingned with the main X, Y and Z axis.


![](/assets/iota-cg-Averaging-Adavanced_ResidenceTime_Box_cropped.PNG) <a name="Ioata-CG-RT-Box"></a>

_Figure 53 - "Control Volume Box" window of "Residece Time Calculation" at [coarse-graining](/coarse_graining/cg_setting_cg.md) module._


To define a cylindrical control volume, select ``Cylinder`` in the New Control Volume pull-down menu, and hit the + button:

![](/assets/iota-cg-Averaging-Adavanced_ResidenceTime_Cylinder_cropped.PNG)

_Figure 54 - "Control Volume Cylinder" window of "Residece Time Calculation" at [coarse-graining](/coarse_graining/cg_setting_cg.md) module._


If Residence Time Calculation is included in the``Advanced`` section and one or more labelled control volumes created, then running the coarse-graining process will automatically generate the following graphs with the results of the Residence Time Calculation (each graph will contain a trace for each defined control volume):

* **Instantaneous Residence Time** : This is the average, per time-step, taken over the particles currently inside a control volume, of the time spent by those particles, in that control volume. This will not account for any previous visits to the same volume by any of these particles.

* **Cumulative Residence Time** : This is the average, per time-step, taken over all particles which have thus-far spent any time inside a control volume, of the time spent by those particles, in that control volume.

* **Particle Count** : This records, per time-step, the number of particles currently inside a control volume.
