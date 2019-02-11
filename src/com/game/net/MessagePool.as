package com.game.net {

import com.game.net.message.hero.ResHeroResetErrorMessage;
import com.game.net.message.util.ResKickMessage;
import com.game.net.message.hero.ResHeroJueXingErrorMessage;
import com.game.net.message.team.ResTeamSetMessage;
import com.game.net.message.team.ResTeamZhengBingCancelErrorMessage;
import com.game.net.message.skill.ResSkillResearchMessage;
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
import com.game.net.message.hero.ResHeroRemoveMessage;
import com.game.net.message.hero.ResHeroChaiJieMessage;
import com.game.net.message.hero.ResHeroPeiDianErrorMessage;
import com.game.net.message.team.ResTeamZhengBingErrorMessage;
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
import com.game.net.message.hero.ResHeroJinJieMessage;
import com.game.net.message.team.ResTeamUnSetErrorMessage;
import com.game.net.message.hero.ResHeroBingZhongJinJieErrorMessage;
import com.game.net.message.hero.ResHeroJinJieErrorMessage;
import com.game.net.message.hero.ResHeroAddSkillMessage;
import com.game.net.message.hero.ResHeroBingZhongSelectMessage;
import com.game.net.message.skill.ResSkillAddMessage;
import com.game.net.message.team.ResTeamZhengBingLiJiMessage;
import com.game.net.message.team.ResTeamZhengBingLiJiErrorMessage;
import com.game.net.message.util.ResGMMessage;
import com.game.net.message.team.ResTeamZhengBingMessage;
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
    messages[306] = ResHeroZhuanHuaMessage;
    messages[341] = ResHeroBingZhongJinJieErrorMessage;
    messages[5] = ResLoginVersionCheckMessage;
    messages[290] = ResHeroChaiJieMessage;
    messages[310] = ResHeroSkillUpgradeErrorMessage;
    messages[315] = ResHeroRemoveSkillMessage;
    messages[2] = ResLoginLocalMessage;
    messages[313] = ResHeroPeiDianResetErrorMessage;
    messages[350] = ResHeroBingZhongSelectErrorMessage;
    messages[307] = ResHeroZhuanHuaErrorMessage;
    messages[337] = ResTeamZhengBingMessage;
    messages[328] = ResTeamSetMessage;
    messages[301] = ResHeroAddSkillErrorMessage;
    messages[292] = ResSkillAddMessage;
    messages[300] = ResHeroAddSkillMessage;
    messages[349] = ResHeroBingZhongSelectMessage;
    messages[343] = ResHeroBingZhongUnlockMessage;
    messages[322] = ResHeroPeiDianErrorMessage;
    messages[303] = ResHeroJinJieMessage;
    messages[329] = ResTeamSetErrorMessage;
    messages[319] = ResHeroResetErrorMessage;
    messages[318] = ResHeroResetMessage;
    messages[17] = ResUserUpdateValueMessage;
    messages[7] = ResKickMessage;
    messages[291] = ResHeroChaiJieErrorMessage;
    messages[298] = ResHeroAddMessage;
    messages[325] = ResTeamZhengBingLiJiMessage;
    messages[326] = ResTeamZhengBingLiJiErrorMessage;
    messages[295] = ResSkillResearchMessage;
    messages[293] = ResSkillRemoveMessage;
    messages[340] = ResHeroBingZhongJinJieMessage;
    messages[353] = ResHeroJueXingErrorMessage;
    messages[3] = ResLoginLocalErrorMessage;
    messages[304] = ResHeroJinJieErrorMessage;
    messages[338] = ResTeamZhengBingErrorMessage;
    messages[316] = ResHeroRemoveSkillErrorMessage;
    messages[344] = ResHeroBingZhongUnlockErrorMessage;
    messages[347] = ResHeroBingZhongSkillSelectErrorMessage;
    messages[297] = ResHeroRemoveMessage;
    messages[309] = ResHeroSkillUpgradeMessage;
    messages[335] = ResTeamUnSetErrorMessage;
    messages[332] = ResTeamZhengBingCancelErrorMessage;
    messages[352] = ResHeroJueXingMessage;
    messages[331] = ResTeamZhengBingCancelMessage;
    messages[312] = ResHeroPeiDianResetMessage;
    messages[6] = ResLoginVersionCheckErrorMessage;
    messages[296] = ResSkillResearchErrorMessage;
    messages[321] = ResHeroPeiDianMessage;
    messages[346] = ResHeroBingZhongSkillSelectMessage;
    messages[334] = ResTeamUnSetMessage;
    messages[15] = ResGMMessage;
  }

  public function message(id:int):Message {
    return messages[id] == null ? null : new messages[id] as Message;
  }
}
}