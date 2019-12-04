import rospy
import subprocess
import datetime
from utility_pkg.srv import force_time

def force_time(req):
    subprocess.call(['echo','ubuntu','|','sudo', 'date', '-s', '{:}'.format(req)], shell=True)
    resut = "Done!"
    return result

if __name__ == '__main__':
    rospy.init_node("force_pitime")
    rospy.loginfo("Get pi time form ROS master")
    rospy.get_param('masterTime');
    service = rospy.Service("/get_time", force_time,force_time)
    rospy.loginfo("Service server has been started")
    rospy.spin()
