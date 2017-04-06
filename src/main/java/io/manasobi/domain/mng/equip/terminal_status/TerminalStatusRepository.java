package io.manasobi.domain.mng.equip.terminal_status;

import io.manasobi.core.base.BaseJPAQueryDSLRepo;
import org.springframework.stereotype.Repository;

@Repository
public interface TerminalStatusRepository extends BaseJPAQueryDSLRepo<TerminalStatus, TerminalStatus.TerminalStatusId> {
}
