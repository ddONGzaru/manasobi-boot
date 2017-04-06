package io.manasobi.domain.mng.etc.agent_mng;

import io.manasobi.core.mybatis.MyBatisMapper;

import java.util.List;


public interface AgentMngMapper extends MyBatisMapper {

    List<AgentMng> findAll();

    AgentMng findOne(AgentMng agentMng);

    int update(AgentMng agentMng);

    int delete(AgentMng agentMng);

    int insert(AgentMng agentMng);
}