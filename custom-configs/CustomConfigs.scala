//Here is a list of the custom configs we have tested. They need to be put into one of the config files in chipyard\generators\chipyard\src\main\scala\config
//	in order to be compiled and run.

// Custom Configs

class MediumRocketConfig extends Config(
  new freechips.rocketchip.subsystem.WithNMedCores(1) ++         // single rocket-core
  new chipyard.config.AbstractConfig)

class SmallBoomAndRocketConfig extends Config(
  new freechips.rocketchip.subsystem.WithNBigCores(1) ++         // single rocket-core
  new boom.common.WithNSmallBooms(1) ++                          // small boom config
  new chipyard.config.AbstractConfig)
