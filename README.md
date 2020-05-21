# Bluebox: ROS package for human wearable sensors  


## DigiTOP
### About DigiTOP (https://digitop.ac.uk/)
As manufacturing shifts towards smart factories, with interconnected production systems and automation, EPSRC has funded the £1.9m DigiTOP project to develop a predictive toolkit to optimise productivity and communication between human workers and robots.

Academics at the University of Nottingham, Cranfield University, Loughborough University and the Bristol Robotics Lab are collaborating to deliver an open-access suite of digital tools to enable the real-time capture and prediction of impact, allowing digital technologies to be optimised for manufacturing system performance. Using new human factors theories and data analytics approaches, tools will be designed to inform human requirements for workload, situation awareness and decision making in digital manufacturing. At the same time, demonstrators will be used to test the implementation of sensing technologies that will capture and evaluate performance change and build predictive models of system performance. The project will also provide an understanding of the ethical, organisational and social impact of the introduction of digital manufacturing tools and digital sensor-based tools to evaluate work performance in the future workplace.

## WP4: Physical Sensing in Humean-Robot Interaction Scenarios 

This ROS package was developed as part of WP4, which focus on wearable sensors for human in a manufacturing context, i.e. robotics. With the exponential growth of collaborative robots in manufacturing application, physical interactions between humans and robots represent a vital role in performing tasks collaboratively. Most attended studies concentrated on robot motion planning and control during the execution of a task. However, for effective task distribution and allocation, human physical and psychological status are essential. In this Github repository, a hardware setup and support software for a set of wearable sensors and a data acquisition framework, are presented, which can be used to develop more efficient Human-Robot collaboration strategies. 

The wearable sensors in human-robot collaborations could improve the interactions and make it safer. For instances, wearable sensors can assist in recognising the human mental state and physical activities. Subsequently, a robot could effectively and naturally perform the given task with the human. Moreover, the gathered data through the presented hardware enables online classification of human aims; consequently, robots can efficiently adapt to guarantee the safety of the human while performing the intended task. 

![Figure1](https://github.com/Intelligent-Automation-Centre/bluebox/blob/master/weabaleSensor-page-001.jpg)

## Hardware setup: List of Sensors Used in DigiTOP WP4:
The below shows all the sensors which have been itegrated in one ROS network. Hence, different sensors data can be collected during Human-Robot Interactions experiments. 
|Sensors| Brand | Comments|
|-------|-------|---------|
| muscle activity sensor |Mayoware|https://medium.com/@leex5202/an-unofficial-introductory-tutorial-to-myoware-muscle-sensor-development-kit-e2169948e63|
|Brainwave EG sensor|Muse2|<ul><li>https://choosemuse.com/?mbsy_source=57f72dff-9863-4d8d-a6a8-ca173f9e01f4&mbsy_exp=Sat%2C+20+Jun+2020+00%3A32%3A26+GMT&campaignid=30373&mbsy=tF2T9&discount=ambassador_8GY1JNJDK9FF</li><li>https://github.com/alexandrebarachant/muse-lsl</li></ul>|
|Nose tempreature|Dallas Semiconductor|https://cdn.sparkfun.com/datasheets/Sensors/Temp/DS18B20.pdf|
|Motion tracking system|VICON|<ul><li>https://www.vicon.com/hardware/cameras/</li><li>https://github.com/ethz-asl/vicon_bridge</li></ul>|
|Heart rate sensor|PULSE|https://www.amazon.co.uk/ICQUANZX-Sensor-Pulsesensor-Module-Arduino/dp/B07VJ9XB7T/ref=sr_1_3?crid=3IPE6UVDULJHP&dchild=1&keywords=pulse+sensor&qid=1590022203&sprefix=pulse+se%2Caps%2C154&sr=8-3|
|IMU|Phidgets|<ul><li>https://www.phidgets.com/?&prodid=32</li><li>https://github.com/ros-drivers/phidgets_drivers</li></ul>|
|6-axis Force/Torque Sensor|Schunk|<ul><li>https://github.com/epfl-lasa/net-ft-ros</li><li>https://schunk.com/fileadmin/pim/docs/IM0019638.PDF</li></ul>|


## Hardware setup: Integration with ROS network
The blue-box with all sensors connected to it, which can be carried on the operator's belt, and it is connected with the workstation via WiFi. The box is connected to four muscle activity sensors (https://www.sparkfun.com/products/13723), nose digital temperature and Phedgit IMU (https://www.phidgets.com/) for head movements via shield cables, while it is connected to a Muse2 headband (https://choosemuse.com/muse-2-guided-bundle/) via Bluetooth. These sensors are interfaced with the Raspberry-Pi using two interface circuits and a USB Bluetooth dongle.
![](https://github.com/Intelligent-Automation-Centre/bluebox/blob/master/figure3_updated-page-001.jpg)

#### Muscle-activity sensor interface circuit
![](https://github.com/Intelligent-Automation-Centre/bluebox/blob/master/wiring_diagram-page-001.jpg)
## Biomechanical ROS messages:
### Heart rate
The presented hardware is supported by three ROS messages which are structured as shown in the table below. These messages contain raw sensory data, Interbeat interval (ibi) and Beat-Per-Minute (BPM).

|     Message   | Data Structure|
| ------------- | ------------- |
| heart_beat_rawdata | header, raw_data  |
| hear_beat_msg  | header, ibi  |
| hear_beat_msg  | header, BPM  |

### Brain-Wave Signals
|     Message Field   | Data Type|
| ------------- | ------------- |
| Header        | header        |
| TP9           | float64       |
| AF7           | float64       |
| AF8           | float64       |
| TP10          | float64       |

### Muscle activity message
|     Message Field   | Data Type|
| ------------- | ------------- |
| Header        | header        |
| Right_arm     | float64       |
| Right_forearm | float64       |
| Left_arm      | float64       |
| Left_forearm  | float64       |

### Nose temperature
|  Message Field   | Data Type|
| ------------- | ------------- |
| Header        |   header      |
| temperature   |     float64   |
| variance      | float64       |

 

## Other ROS packages:
This package can be used with Force/Torque sensors (e.g. http://wiki.ros.org/ati_force_torque), motion tracking systems (e.g. VICON: https://github.com/ethz-asl/vicon_bridge), and IMU (https://github.com/ros-drivers/phidgets_drivers). The idea here, that messages from the surrounding environment (Human-Robot workspace) can be synchronised.

## How to install?
```python
sudo git clone 
```

### ROS dependancy

### Ubuntu Mate image for Rassberry Pi

### PI-ZERO image

