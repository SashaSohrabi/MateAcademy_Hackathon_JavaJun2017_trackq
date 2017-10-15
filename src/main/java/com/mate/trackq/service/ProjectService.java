package com.mate.trackq.service;

import com.mate.trackq.dao.ProjectDao;
import com.mate.trackq.model.Project;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public interface ProjectService {

    void create(Project project);

    Project getById(Integer projectId);
}
