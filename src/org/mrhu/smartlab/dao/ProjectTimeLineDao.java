package org.mrhu.smartlab.dao;


import org.mrhu.smartlab.model.ProjectTimeline;

import java.util.List;

public interface ProjectTimeLineDao {

    /**
     * 持久化一个指定对象
     * @param projectTimeline 要持久化的对象
     */
    void save(ProjectTimeline projectTimeline);

    /**
     * 从数据库中获取类似的对象
     * @param exampleProjectTimeline 类似的对象
     * @return  获取到的对象
     */
    ProjectTimeline load(ProjectTimeline exampleProjectTimeline);

    /**
     * 从数据库中删除指定的对象
     * @param projectTimeline 指定的对象
     */
    void delete(ProjectTimeline projectTimeline);

    /**
     * 更新指定对象
     * @param projectTimeline 要更新的对象
     * @return 更新前的对象状态
     */
    ProjectTimeline update(ProjectTimeline projectTimeline);

    /**
     * 根据传入的projectID获取其下所有时间轴
     * @param projectID 传入的projectID
     * @return 返回指定的时间轴
     */
    List<ProjectTimeline> loadByProjectId(String projectID);

}
