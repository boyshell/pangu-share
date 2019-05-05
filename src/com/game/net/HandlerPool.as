package com.game.net {

import com.game.net.handler.gambling.ResGamblingErrorHandler;
import com.game.net.handler.hero.ResHeroPeiDianResetErrorHandler;
import com.game.net.handler.skill.ResSkillResearchHandler;
import com.game.net.handler.hero.ResHeroJinJieHandler;
import com.game.net.handler.login.ResLoginVersionCheckErrorHandler;
import com.game.net.handler.hero.ResHeroRemoveSkillErrorHandler;
import com.game.net.handler.building.ResBuildingUpgradeErrorHandler;
import com.game.net.handler.hero.ResHeroZhuanHuaErrorHandler;
import com.game.net.handler.hero.ResHeroRemoveSkillHandler;
import com.game.net.handler.hero.ResHeroZhuanHuaHandler;
import com.game.net.handler.skill.ResSkillResearchErrorHandler;
import com.game.net.handler.hero.ResHeroPeiDianErrorHandler;
import com.game.net.handler.hero.ResHeroJinJieErrorHandler;
import com.game.net.handler.user.ResUserUpdateAttributeHandler;
import com.game.net.handler.hero.ResHeroAddSkillHandler;
import com.game.net.handler.hero.ResHeroResetHandler;
import com.game.net.handler.hero.ResHeroAddSkillErrorHandler;
import com.game.net.handler.hero.ResHeroBingZhongJinJieErrorHandler;
import com.game.net.handler.util.ResHeartBeatHandler;
import com.game.net.handler.user.ResUserUpdateValueHandler;
import com.game.net.handler.team.ResTeamZhengBingLiJiErrorHandler;
import com.game.net.handler.team.ResTeamSetHandler;
import com.game.net.handler.hero.ResHeroPeiDianHandler;
import com.game.net.handler.gambling.ResGamblingHandler;
import com.game.net.handler.hero.ResHeroLevelUpdateHandler;
import com.game.net.handler.hero.ResHeroBingZhongJinJieHandler;
import com.game.net.handler.hero.ResHeroBingZhongSelectErrorHandler;
import com.game.net.handler.team.ResTeamZhengBingErrorHandler;
import com.game.net.handler.hero.ResHeroChaiJieErrorHandler;
import com.game.net.handler.hero.ResHeroJueXingErrorHandler;
import com.game.net.handler.team.ResTeamSetErrorHandler;
import com.game.net.handler.util.ResKickHandler;
import com.game.net.handler.building.ResBuildingUpgradeHandler;
import com.game.net.handler.hero.ResHeroResetErrorHandler;
import com.game.net.handler.team.ResTeamZhengBingCancelErrorHandler;
import com.game.net.handler.hero.ResHeroSkillUpgradeErrorHandler;
import com.game.net.handler.skill.ResSkillRemoveHandler;
import com.game.net.handler.login.ResLoginLocalHandler;
import com.game.net.handler.util.ResGMHandler;
import com.game.net.handler.hero.ResHeroRemoveHandler;
import com.game.net.handler.guanqia.ResGuanQiaFightErrorHandler;
import com.game.net.handler.team.ResTeamZhengBingCancelHandler;
import com.game.net.handler.hero.ResHeroBingZhongUnlockHandler;
import com.game.net.handler.hero.ResHeroBingZhongSkillSelectHandler;
import com.game.net.handler.hero.ResHeroBingZhongSelectHandler;
import com.game.net.handler.hero.ResHeroChaiJieHandler;
import com.game.net.handler.team.ResTeamZhengBingLiJiHandler;
import com.game.net.handler.hero.ResHeroAddHandler;
import com.game.net.handler.hero.ResHeroBingZhongUnlockErrorHandler;
import com.game.net.handler.login.ResLoginVersionCheckHandler;
import com.game.net.handler.team.ResTeamZhengBingHandler;
import com.game.net.handler.skill.ResSkillAddHandler;
import com.game.net.handler.hero.ResHeroSkillUpgradeHandler;
import com.game.net.handler.team.ResTeamUnSetErrorHandler;
import com.game.net.handler.hero.ResHeroBingZhongSkillSelectErrorHandler;
import com.game.net.handler.hero.ResHeroPeiDianResetHandler;
import com.game.net.handler.team.ResTeamUnSetHandler;
import com.game.net.handler.guanqia.ResGuanQiaFightHandler;
import com.game.net.handler.hero.ResHeroJueXingHandler;
import com.game.net.handler.login.ResLoginLocalErrorHandler;
import com.net.MNetHandler;

/** Created by FreeMarker. DO NOT EDIT!!! */
public class HandlerPool {
  private var handlers = {};

  public function HandlerPool() {
    handlers[332] = ResTeamZhengBingCancelErrorHandler;
    handlers[318] = ResHeroResetHandler;
    handlers[321] = ResHeroPeiDianHandler;
    handlers[297] = ResHeroRemoveHandler;
    handlers[377] = ResHeroLevelUpdateHandler;
    handlers[309] = ResHeroSkillUpgradeHandler;
    handlers[344] = ResHeroBingZhongUnlockErrorHandler;
    handlers[2] = ResLoginLocalHandler;
    handlers[337] = ResTeamZhengBingHandler;
    handlers[313] = ResHeroPeiDianResetErrorHandler;
    handlers[358] = ResHeartBeatHandler;
    handlers[290] = ResHeroChaiJieHandler;
    handlers[315] = ResHeroRemoveSkillHandler;
    handlers[292] = ResSkillAddHandler;
    handlers[326] = ResTeamZhengBingLiJiErrorHandler;
    handlers[3] = ResLoginLocalErrorHandler;
    handlers[343] = ResHeroBingZhongUnlockHandler;
    handlers[334] = ResTeamUnSetHandler;
    handlers[356] = ResBuildingUpgradeErrorHandler;
    handlers[316] = ResHeroRemoveSkillErrorHandler;
    handlers[291] = ResHeroChaiJieErrorHandler;
    handlers[310] = ResHeroSkillUpgradeErrorHandler;
    handlers[329] = ResTeamSetErrorHandler;
    handlers[300] = ResHeroAddSkillHandler;
    handlers[5] = ResLoginVersionCheckHandler;
    handlers[295] = ResSkillResearchHandler;
    handlers[293] = ResSkillRemoveHandler;
    handlers[16] = ResUserUpdateAttributeHandler;
    handlers[303] = ResHeroJinJieHandler;
    handlers[301] = ResHeroAddSkillErrorHandler;
    handlers[306] = ResHeroZhuanHuaHandler;
    handlers[307] = ResHeroZhuanHuaErrorHandler;
    handlers[15] = ResGMHandler;
    handlers[304] = ResHeroJinJieErrorHandler;
    handlers[319] = ResHeroResetErrorHandler;
    handlers[6] = ResLoginVersionCheckErrorHandler;
    handlers[341] = ResHeroBingZhongJinJieErrorHandler;
    handlers[17] = ResUserUpdateValueHandler;
    handlers[335] = ResTeamUnSetErrorHandler;
    handlers[346] = ResHeroBingZhongSkillSelectHandler;
    handlers[349] = ResHeroBingZhongSelectHandler;
    handlers[350] = ResHeroBingZhongSelectErrorHandler;
    handlers[331] = ResTeamZhengBingCancelHandler;
    handlers[298] = ResHeroAddHandler;
    handlers[353] = ResHeroJueXingErrorHandler;
    handlers[355] = ResBuildingUpgradeHandler;
    handlers[328] = ResTeamSetHandler;
    handlers[381] = ResGuanQiaFightErrorHandler;
    handlers[325] = ResTeamZhengBingLiJiHandler;
    handlers[322] = ResHeroPeiDianErrorHandler;
    handlers[312] = ResHeroPeiDianResetHandler;
    handlers[7] = ResKickHandler;
    handlers[361] = ResGamblingErrorHandler;
    handlers[296] = ResSkillResearchErrorHandler;
    handlers[360] = ResGamblingHandler;
    handlers[380] = ResGuanQiaFightHandler;
    handlers[347] = ResHeroBingZhongSkillSelectErrorHandler;
    handlers[338] = ResTeamZhengBingErrorHandler;
    handlers[340] = ResHeroBingZhongJinJieHandler;
    handlers[352] = ResHeroJueXingHandler;
  }

  public function handler(id:int):MNetHandler {
    return handlers[id] == null ? null : new handlers[id] as MNetHandler;
  }
}
}