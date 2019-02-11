package com.game.net {

import com.game.net.handler.hero.ResHeroPeiDianResetErrorHandler;
import com.game.net.handler.skill.ResSkillResearchHandler;
import com.game.net.handler.hero.ResHeroJinJieHandler;
import com.game.net.handler.login.ResLoginVersionCheckErrorHandler;
import com.game.net.handler.hero.ResHeroRemoveSkillErrorHandler;
import com.game.net.handler.hero.ResHeroZhuanHuaErrorHandler;
import com.game.net.handler.hero.ResHeroRemoveSkillHandler;
import com.game.net.handler.hero.ResHeroZhuanHuaHandler;
import com.game.net.handler.skill.ResSkillResearchErrorHandler;
import com.game.net.handler.hero.ResHeroPeiDianErrorHandler;
import com.game.net.handler.hero.ResHeroJinJieErrorHandler;
import com.game.net.handler.hero.ResHeroAddSkillHandler;
import com.game.net.handler.hero.ResHeroResetHandler;
import com.game.net.handler.hero.ResHeroAddSkillErrorHandler;
import com.game.net.handler.hero.ResHeroBingZhongJinJieErrorHandler;
import com.game.net.handler.user.ResUserUpdateValueHandler;
import com.game.net.handler.team.ResTeamZhengBingLiJiErrorHandler;
import com.game.net.handler.team.ResTeamSetHandler;
import com.game.net.handler.hero.ResHeroPeiDianHandler;
import com.game.net.handler.hero.ResHeroBingZhongJinJieHandler;
import com.game.net.handler.hero.ResHeroBingZhongSelectErrorHandler;
import com.game.net.handler.team.ResTeamZhengBingErrorHandler;
import com.game.net.handler.hero.ResHeroChaiJieErrorHandler;
import com.game.net.handler.hero.ResHeroJueXingErrorHandler;
import com.game.net.handler.team.ResTeamSetErrorHandler;
import com.game.net.handler.util.ResKickHandler;
import com.game.net.handler.hero.ResHeroResetErrorHandler;
import com.game.net.handler.team.ResTeamZhengBingCancelErrorHandler;
import com.game.net.handler.hero.ResHeroSkillUpgradeErrorHandler;
import com.game.net.handler.skill.ResSkillRemoveHandler;
import com.game.net.handler.login.ResLoginLocalHandler;
import com.game.net.handler.util.ResGMHandler;
import com.game.net.handler.hero.ResHeroRemoveHandler;
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
import com.game.net.handler.hero.ResHeroJueXingHandler;
import com.game.net.handler.login.ResLoginLocalErrorHandler;
import com.net.MNetHandler;

/** Created by FreeMarker. DO NOT EDIT!!! */
public class HandlerPool {
  private var handlers = {};

  public function HandlerPool() {
    handlers[5] = ResLoginVersionCheckHandler;
    handlers[292] = ResSkillAddHandler;
    handlers[296] = ResSkillResearchErrorHandler;
    handlers[325] = ResTeamZhengBingLiJiHandler;
    handlers[7] = ResKickHandler;
    handlers[315] = ResHeroRemoveSkillHandler;
    handlers[15] = ResGMHandler;
    handlers[329] = ResTeamSetErrorHandler;
    handlers[347] = ResHeroBingZhongSkillSelectErrorHandler;
    handlers[290] = ResHeroChaiJieHandler;
    handlers[295] = ResSkillResearchHandler;
    handlers[6] = ResLoginVersionCheckErrorHandler;
    handlers[332] = ResTeamZhengBingCancelErrorHandler;
    handlers[331] = ResTeamZhengBingCancelHandler;
    handlers[2] = ResLoginLocalHandler;
    handlers[313] = ResHeroPeiDianResetErrorHandler;
    handlers[298] = ResHeroAddHandler;
    handlers[297] = ResHeroRemoveHandler;
    handlers[303] = ResHeroJinJieHandler;
    handlers[307] = ResHeroZhuanHuaErrorHandler;
    handlers[321] = ResHeroPeiDianHandler;
    handlers[316] = ResHeroRemoveSkillErrorHandler;
    handlers[344] = ResHeroBingZhongUnlockErrorHandler;
    handlers[328] = ResTeamSetHandler;
    handlers[353] = ResHeroJueXingErrorHandler;
    handlers[306] = ResHeroZhuanHuaHandler;
    handlers[312] = ResHeroPeiDianResetHandler;
    handlers[343] = ResHeroBingZhongUnlockHandler;
    handlers[340] = ResHeroBingZhongJinJieHandler;
    handlers[335] = ResTeamUnSetErrorHandler;
    handlers[3] = ResLoginLocalErrorHandler;
    handlers[338] = ResTeamZhengBingErrorHandler;
    handlers[304] = ResHeroJinJieErrorHandler;
    handlers[310] = ResHeroSkillUpgradeErrorHandler;
    handlers[337] = ResTeamZhengBingHandler;
    handlers[291] = ResHeroChaiJieErrorHandler;
    handlers[349] = ResHeroBingZhongSelectHandler;
    handlers[300] = ResHeroAddSkillHandler;
    handlers[293] = ResSkillRemoveHandler;
    handlers[322] = ResHeroPeiDianErrorHandler;
    handlers[17] = ResUserUpdateValueHandler;
    handlers[341] = ResHeroBingZhongJinJieErrorHandler;
    handlers[334] = ResTeamUnSetHandler;
    handlers[318] = ResHeroResetHandler;
    handlers[352] = ResHeroJueXingHandler;
    handlers[326] = ResTeamZhengBingLiJiErrorHandler;
    handlers[301] = ResHeroAddSkillErrorHandler;
    handlers[346] = ResHeroBingZhongSkillSelectHandler;
    handlers[350] = ResHeroBingZhongSelectErrorHandler;
    handlers[309] = ResHeroSkillUpgradeHandler;
    handlers[319] = ResHeroResetErrorHandler;
  }

  public function handler(id:int):MNetHandler {
    return handlers[id] == null ? null : new handlers[id] as MNetHandler;
  }
}
}