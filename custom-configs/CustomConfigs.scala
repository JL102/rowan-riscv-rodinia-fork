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

class MulticlockFastSystemRocketConfig extends Config(
  new freechips.rocketchip.subsystem.WithNBigCores(1) ++
  // Frequency specifications
  new chipyard.config.WithTileFrequency(1600.0) ++       // Matches the maximum frequency of U540
  new chipyard.config.WithSystemBusFrequency(1600.0) ++   // Ditto
  new chipyard.config.WithMemoryBusFrequency(1000.0) ++  // 2x the U540 freq (appropriate for a 128b Mbus)
  new chipyard.config.WithPeripheryBusFrequency(100) ++  // Retains the default pbus frequency
  new chipyard.config.WithSystemBusFrequencyAsDefault ++ // All unspecified clock frequencies, notably the implicit clock, will use the sbus freq (800 MHz)
  //  Crossing specifications
  new chipyard.config.WithCbusToPbusCrossingType(AsynchronousCrossing()) ++ // Add Async crossing between PBUS and CBUS
  new chipyard.config.WithSbusToMbusCrossingType(AsynchronousCrossing()) ++ // Add Async crossings between backside of L2 and MBUS
  new freechips.rocketchip.subsystem.WithRationalRocketTiles ++   // Add rational crossings between RocketTile and uncore
  new testchipip.WithAsynchronousSerialSlaveCrossing ++ // Add Async crossing between serial and MBUS. Its master-side is tied to the FBUS
  new chipyard.config.AbstractConfig)

class MulticlockFastMemoryRocketConfig extends Config(
  new freechips.rocketchip.subsystem.WithNBigCores(1) ++
  // Frequency specifications
  new chipyard.config.WithTileFrequency(1600.0) ++       // Matches the maximum frequency of U540
  new chipyard.config.WithSystemBusFrequency(800.0) ++   // Ditto
  new chipyard.config.WithMemoryBusFrequency(2000.0) ++  // 2x the U540 freq (appropriate for a 128b Mbus)
  new chipyard.config.WithPeripheryBusFrequency(100) ++  // Retains the default pbus frequency
  new chipyard.config.WithSystemBusFrequencyAsDefault ++ // All unspecified clock frequencies, notably the implicit clock, will use the sbus freq (800 MHz)
  //  Crossing specifications
  new chipyard.config.WithCbusToPbusCrossingType(AsynchronousCrossing()) ++ // Add Async crossing between PBUS and CBUS
  new chipyard.config.WithSbusToMbusCrossingType(AsynchronousCrossing()) ++ // Add Async crossings between backside of L2 and MBUS
  new freechips.rocketchip.subsystem.WithRationalRocketTiles ++   // Add rational crossings between RocketTile and uncore
  new testchipip.WithAsynchronousSerialSlaveCrossing ++ // Add Async crossing between serial and MBUS. Its master-side is tied to the FBUS
  new chipyard.config.AbstractConfig)

class MulticlockFastPeripheryRocketConfig extends Config(
  new freechips.rocketchip.subsystem.WithNBigCores(1) ++
  // Frequency specifications
  new chipyard.config.WithTileFrequency(1600.0) ++       // Matches the maximum frequency of U540
  new chipyard.config.WithSystemBusFrequency(800.0) ++   // Ditto
  new chipyard.config.WithMemoryBusFrequency(1000.0) ++  // 2x the U540 freq (appropriate for a 128b Mbus)
  new chipyard.config.WithPeripheryBusFrequency(200) ++  // Retains the default pbus frequency
  new chipyard.config.WithSystemBusFrequencyAsDefault ++ // All unspecified clock frequencies, notably the implicit clock, will use the sbus freq (800 MHz)
  //  Crossing specifications
  new chipyard.config.WithCbusToPbusCrossingType(AsynchronousCrossing()) ++ // Add Async crossing between PBUS and CBUS
  new chipyard.config.WithSbusToMbusCrossingType(AsynchronousCrossing()) ++ // Add Async crossings between backside of L2 and MBUS
  new freechips.rocketchip.subsystem.WithRationalRocketTiles ++   // Add rational crossings between RocketTile and uncore
  new testchipip.WithAsynchronousSerialSlaveCrossing ++ // Add Async crossing between serial and MBUS. Its master-side is tied to the FBUS
  new chipyard.config.AbstractConfig)

class MulticlockFastTileRocketConfig extends Config(
  new freechips.rocketchip.subsystem.WithNBigCores(1) ++
  // Frequency specifications
  new chipyard.config.WithTileFrequency(3200.0) ++       // Matches the maximum frequency of U540
  new chipyard.config.WithSystemBusFrequency(800.0) ++   // Ditto
  new chipyard.config.WithMemoryBusFrequency(1000.0) ++  // 2x the U540 freq (appropriate for a 128b Mbus)
  new chipyard.config.WithPeripheryBusFrequency(100) ++  // Retains the default pbus frequency
  new chipyard.config.WithSystemBusFrequencyAsDefault ++ // All unspecified clock frequencies, notably the implicit clock, will use the sbus freq (800 MHz)
  //  Crossing specifications
  new chipyard.config.WithCbusToPbusCrossingType(AsynchronousCrossing()) ++ // Add Async crossing between PBUS and CBUS
  new chipyard.config.WithSbusToMbusCrossingType(AsynchronousCrossing()) ++ // Add Async crossings between backside of L2 and MBUS
  new freechips.rocketchip.subsystem.WithRationalRocketTiles ++   // Add rational crossings between RocketTile and uncore
  new testchipip.WithAsynchronousSerialSlaveCrossing ++ // Add Async crossing between serial and MBUS. Its master-side is tied to the FBUS
  new chipyard.config.AbstractConfig)
