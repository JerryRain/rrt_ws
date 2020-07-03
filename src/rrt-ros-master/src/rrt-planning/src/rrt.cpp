//
// Created by malintha on 9/30/17.
//

#include "ros/ros.h"
#include "std_msgs/String.h"
#include <visualization_msgs/Marker.h>
#include "rrtImpl.h"

RRT initRRT(); //初始化RRT参数

Node runRRT(ros::Publisher, int); // 发布RRT节点

void addEdge(geometry_msgs::Point p1, geometry_msgs::Point p2, ros::Publisher, bool); //发布边界？

void populateRviz(ros::Publisher marker_pub); //发布到Rviz

void populateObstacles(ros::Publisher marker_pub); //发布障碍物到Rviz显示

void drawFinalPath(geometry_msgs::Point p1, geometry_msgs::Point p2, ros::Publisher marker_pub); //发布绘画的路径到Rviz显示

bool moveRobot(ros::Publisher marker_pub, geometry_msgs::Point); //发布机器人模型到Rviz显示

Node init, goal;
static RRT rrt = initRRT();
static float goal_bias = 0.5;
static float sigma = 0.5;
static bool success = false;
/**
static int init_x = 0;
static int init_y = 0;  //原点（0,0）

static int goal_x = 18;
static int goal_y = 18; //目标点（18,18）
**/
static int init_x = 20;
static int init_y = 20;

static int goal_x = 0;
static int goal_y = 0;
static std::vector<visualization_msgs::Marker> obsVec; //存放障碍物数据的数组
static int path_node_index;
static bool pn_index_initialized = false;

int main(int argc, char **argv) {
    ros::init(argc, argv, "ros_rrt");
    static ros::NodeHandle n;
    static ros::Publisher marker_pub = n.advertise<visualization_msgs::Marker>("visualization_marker", 10);
    ros::Publisher chatter_pub = n.advertise<std_msgs::String>("some_chatter", 10);
    ros::Rate loop_rate(20);
    int frame_count = 0;

    while (ros::ok()) {
        ROS_INFO("Frame: %d", frame_count);
        populateRviz(marker_pub);

        if (!success) {  //RRT路径拓展
            Node next_node = runRRT(marker_pub, frame_count);
            geometry_msgs::Point next_point = next_node.point;

            if ((rrt.getEuclideanDistance(next_point, goal.point) <= 1) && frame_count > 2) {
                addEdge(next_point, goal.point, marker_pub, false);
                next_node.children.push_back(goal);
                goal.parentId = next_node.id;
                success = true;
            }
        }

        if (success) {  //RRT路径成功
            std::vector<Node> pathNodes;
            std::vector<Node> allNodes = rrt.getNodesList();

            pathNodes.push_back(goal);
            int tempParentId = goal.parentId;
            while (tempParentId != init.parentId) {
                for (int i = allNodes.size() - 1; i >= 0; i--) {
                    Node tempNode = allNodes[i];
                    if ((tempNode.id) == tempParentId) {
                        pathNodes.push_back(tempNode);
                        tempParentId = tempNode.parentId;
                    }
                }
            }

            std::cout << "\n\nPath retrieved!! \n\n";

            Node next;
            Node curr;
            for (int i = pathNodes.size() - 2; i >= 0; i--) {
                curr = pathNodes[i];
                next = pathNodes[i + 1];
                drawFinalPath(curr.point, next.point, marker_pub);  //画出成功生成的路径
            }

            if (!pn_index_initialized) {
                path_node_index = pathNodes.size();
                pn_index_initialized = true;
            }
            bool isMoved = false;
            if (frame_count % 3 == 0) {  //判断机器人有没有达到目标点
                geometry_msgs::Point next_pose = pathNodes[--path_node_index].point;

                isMoved = moveRobot(marker_pub, next_pose); //如果没到达目标点，则移动机器人
            }
            if (isMoved) {
                return 0;
            }
        }

        while (marker_pub.getNumSubscribers() < 1) { //判断Rviz有没有打开进行订阅
            if (!ros::ok()) {
                return 0;
            }
            ROS_WARN_ONCE("Please run Rviz in another terminal.");
            sleep(1);
        }

        //iterate ROS
        ros::spinOnce();
        loop_rate.sleep();
        ++frame_count;
    }

    return 0;
}

bool moveRobot(ros::Publisher marker_pub, geometry_msgs::Point next_pose) {

    static visualization_msgs::Marker rob;
    rob.type = visualization_msgs::Marker::CUBE;


    rob.header.frame_id = "map";
    rob.header.stamp = ros::Time::now();
    rob.ns = "rob";
    rob.id = 0;
    rob.action = visualization_msgs::Marker::ADD;  //action通信
    rob.lifetime = ros::Duration();
    /**
    rob.scale.x = 0.5;
    rob.scale.y = 1;
    rob.scale.z = 0.25;  //机器人小车尺寸大小设置
    **/
    rob.scale.x = 0.5;
    rob.scale.y = 1;
    rob.scale.z = 0.25;  //机器人小车尺寸大小设置
    rob.pose.orientation.w = 1;
    rob.pose.orientation.x = rob.pose.orientation.y = rob.pose.orientation.z = 0;
    /**
    rob.color.r = 1.0f;
    rob.color.g = 0.5f;
    rob.color.b = 0.5f;  //机器人小车颜色
    rob.color.a = 1.0;
    **/
    rob.color.r = 1.0f;
    rob.color.g = 0.8f;
    rob.color.b = 0.7f;  //机器人小车颜色
    rob.color.a = 1.0;

    //calculate m to change the orientation of the robot 计算m来调整机器人的移动方向
    float m = (next_pose.y - rob.pose.position.y) / (next_pose.x - rob.pose.position.x);

    rob.pose.orientation.z = atan(m) + M_PI / 2;
    rob.pose.position = next_pose;

    marker_pub.publish(rob);

    if ((rob.pose.position.x == goal.point.x) && (rob.pose.position.y == goal.point.y)) {
        marker_pub.publish(rob); //判断是否到达目标点
        return true;
    }

    return false;
}

RRT initRRT() { //初始化RRT参数
    init.point.x = init_x;
    init.point.y = init_y;
    init.id = -1;
    init.parentId = -2;
    goal.point.x = goal_x;
    goal.point.y = goal_y;
    goal.id = 10000;
    RRT rrt(init, goal, sigma, 20, 0, 20, 0);
    return rrt;
}


Node runRRT(ros::Publisher marker_pub, int frameid) {  //RRT算法实现过程
    geometry_msgs::Point rand_point = rrt.getRandomConfig();
    geometry_msgs::Point tempP;
    tempP.x = 0;
    tempP.y = 0;
    Node rand_node(tempP);
    Node next_node(tempP);
    Node nearest_node = rrt.getNearestNode(rand_point);

    //decide whether to extend toward the goal or a random point 向目标点拓展或者向随机点拓展
    double r = rand() / (double) RAND_MAX;
    if (r < goal_bias) {
        next_node = rrt.expand(nearest_node, goal, obsVec, frameid); //选择向目标点拓展
    } else {
        rand_node.point = rand_point;
        next_node = rrt.expand(nearest_node, rand_node, obsVec, frameid); //选择向随机点拓展
    }

    if ((next_node.point.x != nearest_node.point.x) && (next_node.point.y != nearest_node.point.y)) {
        std::cout << "Rand_config: \n" << rand_point << "nearest_node: \n" << nearest_node.point << "next_node: \n"
                  << (next_node).point << "\n\n";
        addEdge(nearest_node.point, (next_node).point, marker_pub, false);
    }
    return next_node;
}


void drawFinalPath(geometry_msgs::Point p1, geometry_msgs::Point p2, ros::Publisher marker_pub) {
    static visualization_msgs::Marker edge; //绘画生成的路径
    edge.type = visualization_msgs::Marker::LINE_LIST;
    edge.header.frame_id = "map";
    edge.header.stamp = ros::Time::now();
    edge.ns = "finalPath";
    edge.id = 4;
    edge.action = visualization_msgs::Marker::ADD;
    edge.pose.orientation.w = 1;

    edge.scale.x = 0.04;

    edge.color.g = edge.color.r = 1; //生成路径颜色
    edge.color.a = 1.0;

    edge.points.push_back(p1);
    edge.points.push_back(p2);

    marker_pub.publish(edge);
}

void addEdge(geometry_msgs::Point p1, geometry_msgs::Point p2, ros::Publisher marker_pub, bool isFinal) { //每一次拓展过程的路径
    static visualization_msgs::Marker edge, vertex;
    vertex.type = visualization_msgs::Marker::POINTS;
    edge.type = visualization_msgs::Marker::LINE_LIST;
    edge.header.frame_id = "map";
    edge.header.stamp = ros::Time::now();
    edge.ns = "edges";
    edge.id = 3;
    edge.action = visualization_msgs::Marker::ADD;
    edge.pose.orientation.w = 1;

    edge.scale.x = 0.02;
    if (!isFinal) {
        //edge.color.r = 1.0; //如果没到达目标点→生成红色路径
	edge.color.g = edge.color.r = edge.color.b = 1;
    } else {
        //edge.color.g = edge.color.r = 1;//如果到达目标点→用黄色路径表示生成的整个路径
	edge.color.r = 1.0;
    }
    edge.color.a = 1.0;

    edge.points.push_back(p1);
    edge.points.push_back(p2);

    marker_pub.publish(edge);
}

void populateRviz(ros::Publisher marker_pub) { //初始化Rviz
    visualization_msgs::Marker v_start, v_end;
    v_start.type = v_end.type = visualization_msgs::Marker::POINTS;
    v_start.header.frame_id = v_end.header.frame_id = "map";
    v_start.header.stamp = v_end.header.stamp = ros::Time::now();
    v_start.ns = v_end.ns = "start/end vertices";
    v_start.id = 0;
    v_end.id = 1;
    v_start.action = v_end.action = visualization_msgs::Marker::ADD;

    v_start.color.a = 1.0f;
    v_start.color.g = 1.0f;
    v_start.scale.x = v_start.scale.y = 0.2;
    v_end.scale.x = v_end.scale.y = 0.2;  //定义起点和终点的颜色、大小

    v_end.color.a = 1.0f;
    v_end.color.r = 1.0f;  

    geometry_msgs::Point ps, pe;
    ps.x = init_x;
    ps.y = init_y;
    pe.x = goal_x;
    pe.y = goal_y;
    v_start.points.push_back(ps);
    v_end.points.push_back(pe);

    //publish edge and vertices 发布路径、起点、终点信息
    marker_pub.publish(v_start);
    marker_pub.publish(v_end);

    populateObstacles(marker_pub);

};

void populateObstacles(ros::Publisher marker_pub) {  //障碍物信息定义
    visualization_msgs::Marker obs1, obs2, obs3, obs4, obs5, obs6;

    obs1.type = obs2.type = obs3.type = obs4.type = obs5.type = obs6.type = visualization_msgs::Marker::CUBE;
    obs1.header.frame_id = obs2.header.frame_id = obs3.header.frame_id = obs4.header.frame_id = obs5.header.frame_id = obs6.header.frame_id = "map";
    obs1.header.stamp = obs2.header.stamp = obs3.header.stamp = obs4.header.stamp = obs5.header.stamp = obs6.header.stamp = ros::Time::now();
    obs1.ns = obs2.ns = obs3.ns = obs4.ns = obs5.ns = obs6.ns = "obstacles";
    obs1.lifetime = obs2.lifetime = obs3.lifetime = obs4.lifetime = obs5.lifetime = obs6.lifetime = ros::Duration();
    obs1.action = obs2.action = obs3.action = obs4.action = obs5.action = obs6.action = visualization_msgs::Marker::ADD;

    obs1.id = 0;
    obs2.id = 1;
    obs3.id = 2;
    obs4.id = 3;
    obs5.id = 4;
    obs6.id = 5;
    /**
    obs1.scale.x = obs2.scale.x = 2;  //黑色障碍物和红色障碍物的宽
    obs1.scale.y = obs2.scale.y = 12; //黑色障碍物和红色障碍物的长
    obs3.scale.y = 4;                 //绿色障碍物的宽
    obs3.scale.x = 7;                 //绿色障碍物的长
    obs4.scale.x = obs4.scale.y = 2;  //蓝色障碍物的长和宽
    obs5.scale.x = 5;                 //黄色障碍物的长
    obs5.scale.y = 3;                 //黄色障碍物的宽
    obs6.scale.x = 3;                 //白色障碍物的宽
    obs6.scale.y = 7;                 //白色障碍物的长
    **/

    obs1.scale.x = obs2.scale.x = 2;  //黑色障碍物和红色障碍物的宽
    obs1.scale.y = 12;                //黑色障碍物长
    obs2.scale.y = 10;                //红色障碍物的长
    obs3.scale.y = 4;                 //绿色障碍物的宽
    obs3.scale.x = 7;                 //绿色障碍物的长
    obs4.scale.x = obs4.scale.y = 2;  //蓝色障碍物的长和宽
    obs5.scale.x = 5;                 //粉色障碍物的长
    obs5.scale.y = 3;                 //粉色障碍物的宽
    obs6.scale.x = 3;                 //浅蓝色障碍物的宽
    obs6.scale.y = 7;                 //浅蓝色障碍物的长

    obs1.scale.z = obs2.scale.z = obs3.scale.z = obs4.scale.z = obs5.scale.z = obs6.scale.z = 0.25; //统一定义所有障碍物的高度

    /**
    obs1.pose.position.x = 8;
    obs1.pose.position.y = 6;
    obs1.pose.position.z = 0.25;  //原来黑色障碍物几何中心
    obs1.pose.orientation.x = 0.0;
    obs1.pose.orientation.y = 0.0;
    obs1.pose.orientation.z = 0.0;
    obs1.pose.orientation.w = 1;
    obs1.color.a = 1;
    obs1.color.r = obs1.color.g = obs1.color.b = 0.0f;
    **/
    obs1.pose.position.x = 8;
    obs1.pose.position.y = 6;
    obs1.pose.position.z = 0.25;  //修改后的黑色障碍物几何中心
    obs1.pose.orientation.x = 0.0;
    obs1.pose.orientation.y = 0.0;
    obs1.pose.orientation.z = 0.0;
    obs1.pose.orientation.w = 1;
    obs1.color.a = 1;
    obs1.color.r = obs1.color.g = obs1.color.b = 0.0f;
    
    /**
    obs2.pose.position.x = 14;
    obs2.pose.position.y = 14;
    obs2.pose.position.z = 0.25;  //原来的红色障碍物几何中心
    obs2.pose.orientation.x = 0.0;
    obs2.pose.orientation.y = 0.0;
    obs2.pose.orientation.z = 0.0;
    obs2.pose.orientation.w = 1;
    obs2.color.a = 1;
    //obs2.color.r = obs2.color.g = obs2.color.b = 6.6f;
    obs2.color.r = 6.6f;
    **/
    obs2.pose.position.x = 14;
    obs2.pose.position.y = 15;
    obs2.pose.position.z = 0.25;  //修改后的红色障碍物几何中心
    obs2.pose.orientation.x = 0.0;
    obs2.pose.orientation.y = 0.0;
    obs2.pose.orientation.z = 0.0;
    obs2.pose.orientation.w = 1;
    obs2.color.a = 1;
    //obs2.color.r = obs2.color.g = obs2.color.b = 6.6f;
    obs2.color.r = 6.6f;

    /**
    obs3.pose.position.x = 16.5;
    obs3.pose.position.y = 2;
    obs3.pose.position.z = 0.25;  //原来的绿色障碍物几何中心
    obs3.pose.orientation.x = 0.0;
    obs3.pose.orientation.y = 0.0;
    obs3.pose.orientation.z = 0.0;
    obs3.pose.orientation.w = 1;
    obs3.color.a = 1;
    //obs3.color.r = obs3.color.g = obs3.color.b = 2.2f;
    obs3.color.g = 6.6f;
    **/
    obs3.pose.position.x = 14.5;
    obs3.pose.position.y = 4;
    obs3.pose.position.z = 0.25;  //修改后的的绿色障碍物几何中心
    obs3.pose.orientation.x = 0.0;
    obs3.pose.orientation.y = 0.0;
    obs3.pose.orientation.z = 0.0;
    obs3.pose.orientation.w = 1;
    obs3.color.a = 1;
    //obs3.color.r = obs3.color.g = obs3.color.b = 2.2f;
    obs3.color.g = 6.6f;

    /**
    obs4.pose.position.x = 16;
    obs4.pose.position.y = 9;
    obs4.pose.position.z = 0.25;  //原来的蓝色障碍物几何中心
    obs4.pose.orientation.x = 0.0;
    obs4.pose.orientation.y = 0.0;
    obs4.pose.orientation.z = 0.0;
    obs4.pose.orientation.w = 1;
    obs4.color.a = 1;
    //obs4.color.r = obs4.color.g = obs4.color.b = 3.3f;
    obs4.color.b = 6.6f;
    **/
    obs4.pose.position.x = 18;
    obs4.pose.position.y = 13;
    obs4.pose.position.z = 0.25;  //修改后的蓝色障碍物几何中心
    obs4.pose.orientation.x = 0.0;
    obs4.pose.orientation.y = 0.0;
    obs4.pose.orientation.z = 0.0;
    obs4.pose.orientation.w = 1;
    obs4.color.a = 1;
    //obs4.color.r = obs4.color.g = obs4.color.b = 3.3f;
    obs4.color.b = 6.6f;

    /**
    obs5.pose.position.x = 2.5;
    obs5.pose.position.y = 18.5;
    obs5.pose.position.z = 0.25; //原来的黄色障碍物几何中心
    obs5.pose.orientation.x = 0.0;
    obs5.pose.orientation.y = 0.0;
    obs5.pose.orientation.z = 0.0;
    obs5.pose.orientation.w = 1;
    obs5.color.a = 1;
    //obs5.color.r = obs5.color.g = obs5.color.b = 4.4f;
    obs5.color.r = obs5.color.g = 6.6f;
    **/
    obs5.pose.position.x = 7.5;
    obs5.pose.position.y = 17.5;
    obs5.pose.position.z = 0.25; //修改后的粉色障碍物几何中心
    obs5.pose.orientation.x = 0.0;
    obs5.pose.orientation.y = 0.0;
    obs5.pose.orientation.z = 0.0;
    obs5.pose.orientation.w = 1;
    obs5.color.a = 1;
    //obs5.color.r = obs5.color.g = obs5.color.b = 4.4f;
    obs5.color.r = obs5.color.b = 6.6f;

    /**
    obs6.pose.position.x = 1.5;
    obs6.pose.position.y = 13.5;
    obs6.pose.position.z = 0.25;  //原来的白色障碍物几何中心
    obs6.pose.orientation.x = 0.0;
    obs6.pose.orientation.y = 0.0;
    obs6.pose.orientation.z = 0.0;
    obs6.pose.orientation.w = 1;
    obs6.color.a = 1;
    //obs6.color.r = obs6.color.g = obs6.color.b = 6.6f;
    obs6.color.g = obs6.color.b = 6.6f;
    **/
    obs6.pose.position.x = 2.5;
    obs6.pose.position.y = 8.5;
    obs6.pose.position.z = 0.25;  //修改后的浅蓝色障碍物几何中心
    obs6.pose.orientation.x = 0.0;
    obs6.pose.orientation.y = 0.0;
    obs6.pose.orientation.z = 0.0;
    obs6.pose.orientation.w = 1;
    obs6.color.a = 1;
    //obs6.color.r = obs6.color.g = obs6.color.b = 6.6f;
    obs6.color.g = obs6.color.b = 6.6f;

    marker_pub.publish(obs1);
    marker_pub.publish(obs2);
    marker_pub.publish(obs3);
    marker_pub.publish(obs4);
    marker_pub.publish(obs5);
    marker_pub.publish(obs6);

    obsVec.push_back(obs1);
    obsVec.push_back(obs2);
    obsVec.push_back(obs3);
    obsVec.push_back(obs4);
    obsVec.push_back(obs5);
    obsVec.push_back(obs6);
}
