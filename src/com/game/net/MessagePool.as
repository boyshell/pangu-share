package com.game.net {

import com.game.net.message.hero.ResHeroResetErrorMessage;
import com.game.net.message.util.ResKickMessage;
import com.game.net.message.hero.ResHeroJueXingErrorMessage;
import com.game.net.message.team.ResTeamSetMessage;
import com.game.net.message.team.ResTeamZhengBingCancelErrorMessage;
import com.game.net.message.skill.ResSkillResearchMessage;
import com.game.net.message.user.ResUserUpdateAttributeMessage;
import com.game.net.message.skill.ResSkillResearchErrorMessage;
import com.game.net.message.skill.ResSkillRemoveMessage;
import com.game.net.message.hero.ResHeroPeiDianResetErrorMessage;
import com.game.net.message.hero.ResHeroBingZhongSkillSelectMessage;
import com.game.net.message.hero.ResHeroBingZhongJinJieMessage;
import com.game.net.message.team.ResTeamSetErrorMessage;
import com.game.net.message.login.ResLoginLocalErrorMessage;
import com.game.net.message.hero.ResHeroAddMessage;
import com.game.net.message.hero.ResHeroResetMessage;
import com.game.net.message.hero.ResHeroZhuanHuaErrorMessage;
import com.game.net.message.hero.ResHeroRemoveSkillMessage;
import com.game.net.message.hero.ResHeroChaiJieErrorMessage;
import com.game.net.message.login.ResLoginVersionCheckErrorMessage;
import com.game.net.message.util.ResHeartBeatMessage;
import com.game.net.message.hero.ResHeroLevelUpdateMessage;
import com.game.net.message.hero.ResHeroRemoveMessage;
import com.game.net.message.hero.ResHeroChaiJieMessage;
import com.game.net.message.hero.ResHeroPeiDianErrorMessage;
import com.game.net.message.team.ResTeamZhengBingErrorMessage;
import com.game.net.message.building.ResBuildingUpgradeErrorMessage;
import com.game.net.message.team.ResTeamZhengBingCancelMessage;
import com.game.net.message.hero.ResHeroBingZhongUnlockErrorMessage;
import com.game.net.message.user.ResUserUpdateValueMessage;
import com.game.net.message.hero.ResHeroPeiDianMessage;
import com.game.net.message.hero.ResHeroPeiDianResetMessage;
import com.game.net.message.hero.ResHeroBingZhongSkillSelectErrorMessage;
import com.game.net.message.hero.ResHeroSkillUpgradeMessage;
import com.game.net.message.hero.ResHeroJueXingMessage;
import com.game.net.message.login.ResLoginVersionCheckMessage;
import com.game.net.message.hero.ResHeroSkillUpgradeErrorMessage;
import com.game.net.message.login.ResLoginLocalMessage;
import com.game.net.message.hero.ResHeroBingZhongSelectErrorMessage;
import com.game.net.message.gambling.ResGamblingMessage;
import com.game.net.message.hero.ResHeroJinJieMessage;
import com.game.net.message.team.ResTeamUnSetErrorMessage;
import com.game.net.message.hero.ResHeroBingZhongJinJieErrorMessage;
import com.game.net.message.hero.ResHeroJinJieErrorMessage;
import com.game.net.message.gambling.ResGamblingErrorMessage;
import com.game.net.message.hero.ResHeroAddSkillMessage;
import com.game.net.message.hero.ResHeroBingZhongSelectMessage;
import com.game.net.message.building.ResBuildingUpgradeMessage;
import com.game.net.message.skill.ResSkillAddMessage;
import com.game.net.message.team.ResTeamZhengBingLiJiMessage;
import com.game.net.message.team.ResTeamZhengBingLiJiErrorMessage;
import com.game.net.message.util.ResGMMessage;
import com.game.net.message.guanqia.ResGuanQiaFightMessage;
import com.game.net.message.team.ResTeamZhengBingMessage;
import com.game.net.message.guanqia.ResGuanQiaFightErrorMessage;
import com.game.net.message.team.ResTeamUnSetMessage;
import com.game.net.message.hero.ResHeroZhuanHuaMessage;
import com.game.net.message.hero.ResHeroBingZhongUnlockMessage;
import com.game.net.message.hero.ResHeroAddSkillErrorMessage;
import com.game.net.message.hero.ResHeroRemoveSkillErrorMessage;
import com.net.Message;

/** Created by FreeMarker. DO NOT EDIT!!! */
public class MessagePool {
  private var messages = {};

  public function MessagePool() {
    messages[360] = ResGamblingMessage;
    messages[291] = ResHeroChaiJieErrorMessage;
    messages[5] = ResLoginVersionCheckMessage;
    messages[297] = ResHeroRemoveMessage;
    messages[2] = ResLoginLocalMessage;
    messages[7] = ResKickMessage;
    messages[295] = ResSkillResearchMessage;
    messages[380] = ResGuanQiaFightMessage;
    messages[337] = ResTeamZhengBingMessage;
    messages[377] = ResHeroLevelUpdateMessage;
    messages[306] = ResHeroZhuanHuaMessage;
    messages[356] = ResBuildingUpgradeErrorMessage;
    messages[293] = ResSkillRemoveMessage;
    messages[315] = ResHeroRemoveSkillMessage;
    messages[290] = ResHeroChaiJieMessage;
    messages[319] = ResHeroResetErrorMessage;
    messages[329] = ResTeamSetErrorMessage;
    messages[296] = ResSkillResearchErrorMessage;
    messages[313] = ResHeroPeiDianResetErrorMessage;
    messages[347] = ResHeroBingZhongSkillSelectErrorMessage;
    messages[334] = ResTeamUnSetMessage;
    messages[346] = ResHeroBingZhongSkillSelectMessage;
    messages[292] = ResSkillAddMessage;
    messages[331] = ResTeamZhengBingCancelMessage;
    messages[328] = ResTeamSetMessage;
    messages[349] = ResHeroBingZhongSelectMessage;
    messages[352] = ResHeroJueXingMessage;
    messages[381] = ResGuanQiaFightErrorMessage;
    messages[301] = ResHeroAddSkillErrorMessage;
    messages[325] = ResTeamZhengBingLiJiMessage;
    messages[300] = ResHeroAddSkillMessage;
    messages[343] = ResHeroBingZhongUnlockMessage;
    messages[6] = ResLoginVersionCheckErrorMessage;
    messages[321] = ResHeroPeiDianMessage;
    messages[361] = ResGamblingErrorMessage;
    messages[341] = ResHeroBingZhongJinJieErrorMessage;
    messages[298] = ResHeroAddMessage;
    messages[303] = ResHeroJinJieMessage;
    messages[353] = ResHeroJueXingErrorMessage;
    messages[344] = ResHeroBingZhongUnlockErrorMessage;
    messages[316] = ResHeroRemoveSkillErrorMessage;
    messages[3] = ResLoginLocalErrorMessage;
    messages[338] = ResTeamZhengBingErrorMessage;
    messages[335] = ResTeamUnSetErrorMessage;
    messages[358] = ResHeartBeatMessage;
    messages[350] = ResHeroBingZhongSelectErrorMessage;
    messages[17] = ResUserUpdateValueMessage;
    messages[304] = ResHeroJinJieErrorMessage;
    messages[312] = ResHeroPeiDianResetMessage;
    messages[355] = ResBuildingUpgradeMessage;
    messages[310] = ResHeroSkillUpgradeErrorMessage;
    messages[318] = ResHeroResetMessage;
    messages[322] = ResHeroPeiDianErrorMessage;
    messages[16] = ResUserUpdateAttributeMessage;
    messages[340] = ResHeroBingZhongJinJieMessage;
    messages[309] = ResHeroSkillUpgradeMessage;
    messages[326] = ResTeamZhengBingLiJiErrorMessage;
    messages[332] = ResTeamZhengBingCancelErrorMessage;
    messages[307] = ResHeroZhuanHuaErrorMessage;
    messages[15] = ResGMMessage;
  }

  public function message(id:int):Message {
    return messages[id] == null ? null : new messages[id] as Message;
  }
}
}