package ri_mac.simulations;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;
import inet.node.inet.SensorNode;
import inet.physicallayer.apskradio.packetlevel.ApskScalarRadioMedium;
import inet.physicallayer.unitdisk.UnitDiskRadioMedium;
import inet.visualizer.integrated.IntegratedVisualizer;


network SensorNetworkShowcaseA
{
    @display("bgb=220,165;bgi=background/lab512,s");
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=3.4662657,4.033473");
        }
        visualizer: IntegratedVisualizer {
            @display("p=3.4662657,9.264383");
        }
        radioMedium: UnitDiskRadioMedium {
            @display("p=3.4032426,14.0541315");
        }
        //radioMedium: ApskScalarRadioMedium {
    	//	@display("p=3.4032426,14.0541315");
        //}
		//radioMedium: UnitDiskRadioMedium {
        //	@display("p=3.4032426,14.0541315");
        //}
        gateway: SensorNode {
            @display("p=180.69333,114.98667;i=misc/sensorgateway");
        }
        server: StandardHost {
            @display("p=162.35,86.53");
        }

        sensor1: SensorNode {
            @display("p=20.533333,148.35333;i=misc/sensor2");
        }
        sensor2: SensorNode {
            @display("p=203.79333,37.986668;i=misc/sensor2");
        }
//        sensor3: SensorNode {
//            @display("p=329.63,285.94;i=misc/sensor2");
//        }

    //        sensor4: SensorNode {
    //            @display("p=341.53,72.25;i=misc/sensor2");
    //        }
    //        sensor5: SensorNode {
    //            @display("p=14.62,87.380005;i=misc/sensor2");
    //        }
    //        sensor6: SensorNode {
    //            @display("p=5.1,27.880001;i=misc/sensor2");
    //        }
    //        sensor7: SensorNode {
    //            @display("p=335.58002,214.03;i=misc/sensor2");
    //        }
    //        sensor8: SensorNode {
    //            @display("p=12.75,186.83;i=misc/sensor2");
    //        }
    //        sensor9: SensorNode {
    //            @display("p=12.75,134.98;i=misc/sensor2");
    //        }
    //        sensor10: SensorNode {
    //            @display("p=339.66,144.5;i=misc/sensor2");
    //        }
    connections:
        gateway.ethg++ <--> Eth100M <--> server.ethg++;
}

