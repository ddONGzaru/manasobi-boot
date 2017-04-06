package io.manasobi.domain.mng.equip.sh05001140;

import io.manasobi.core.domain.file.AX5File;
import io.manasobi.core.vo.BaseVO;
import io.manasobi.utils.ModelMapperUtils;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.domain.Page;

import java.util.List;

import static java.util.stream.Collectors.*;


@Data
@NoArgsConstructor
public class Sh05001140VO extends BaseVO {

	private String jisaCode;

	private String branchCode;

	private String cornerCode;

	private String overhaulDate;

	private String cornerName;

	private String photoUrl;

	private String terminalFrontGlass;
	private AX5File terminalFrontGlassFile;

	private String terminalFront;
	private AX5File terminalFrontFile;

	private String terminalCracks;
	private AX5File terminalCracksFile;

	private String monitor;
	private AX5File monitorFile;

	private String bnkbPartEntranceCracks;
	private AX5File bnkbPartEntranceCracksFile;

	private String cardPartEntranceCracks;
	private AX5File cardPartEntranceCracksFile;

	private String intercom;
	private AX5File intercomFile;

	private String boardCradle;
	private AX5File boardCradleFile;

	private String branchFloor;
	private AX5File branchFloorFile;

	private String insideWall;
	private AX5File insideWallFile;

	private String outsideWall;
	private AX5File outsideWallFile;

	private String branchGlass;
	private AX5File branchGlassFile;

	private String ceiling;
	private AX5File ceilingFile;

	private String fluorescentLight;
	private AX5File fluorescentLightFile;

	private String stickingBillboard;
	private AX5File stickingBillboardFile;

	private String garbagecan;
	private AX5File garbagecanFile;

	private String coolerHeater;
	private AX5File coolerHeaterFile;

	private String branchPeriphery;
	private AX5File branchPeripheryFile;


    public static Sh05001140VO of(Sh05001140 sh05001140) {
        Sh05001140VO sh05001140VO = ModelMapperUtils.map(sh05001140, Sh05001140VO.class);
        return sh05001140VO;
    }

    public static List<Sh05001140VO> of(List<Sh05001140> sh05001140List) {
        return sh05001140List.stream().map(sh05001140 -> of(sh05001140)).collect(toList());
    }

    public static List<Sh05001140VO> of(Page<Sh05001140> sh05001140Page) {
        return sh05001140Page.getContent().stream().map(sh05001140 -> of(sh05001140)).collect(toList());
    }
}