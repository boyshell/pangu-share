package com.game.net {

import com.game.net.handler.gambling.ResGamblingErrorHandler;
import com.game.net.handler.hero.ResHeroPeiDianResetErrorHandler;
import com.game.net.handler.guild.ResGuildKickHandler;
import com.game.net.handler.chat.ResChatHandler;
import com.game.net.handler.hero.ResHeroJinJieHandler;
import com.game.net.handler.login.ResLoginVersionCheckErrorHandler;
import com.game.net.handler.hero.ResHeroZhuanHuaErrorHandler;
import com.game.net.handler.guild.ResGuildDismissErrorHandler;
import com.game.net.handler.hero.ResHeroRemoveSkillHandler;
import com.game.net.handler.hero.ResHeroZhuanHuaHandler;
import com.game.net.handler.hero.ResHeroPeiDianErrorHandler;
import com.game.net.handler.hero.ResHeroJinJieErrorHandler;
import com.game.net.handler.guild.ResGuildRemoveApplicantHandler;
import com.game.net.handler.user.ResUserUpdateAttributeHandler;
import com.game.net.handler.hero.ResHeroAddSkillHandler;
import com.game.net.handler.guild.ResGuildRefuseInviteErrorHandler;
import com.game.net.handler.hero.ResHeroBingZhongJinJieErrorHandler;
import com.game.net.handler.user.ResUserUpdateValueHandler;
import com.game.net.handler.team.ResTeamZhengBingLiJiErrorHandler;
import com.game.net.handler.team.ResTeamSetHandler;
import com.game.net.handler.hero.ResHeroPeiDianHandler;
import com.game.net.handler.gambling.ResGamblingHandler;
import com.game.net.handler.hero.ResHeroLevelUpdateHandler;
import com.game.net.handler.guild.ResGuildRemoveMemberHandler;
import com.game.net.handler.hero.ResHeroBingZhongSelectErrorHandler;
import com.game.net.handler.hero.ResHeroChaiJieErrorHandler;
import com.game.net.handler.guild.ResGuildApplyHandler;
import com.game.net.handler.hero.ResHeroJueXingErrorHandler;
import com.game.net.handler.guild.ResGuildApplyErrorHandler;
import com.game.net.handler.guild.ResGuildAgreeApplyErrorHandler;
import com.game.net.handler.team.ResTeamSetErrorHandler;
import com.game.net.handler.util.ResKickHandler;
import com.game.net.handler.guild.ResGuildChangePositionErrorHandler;
import com.game.net.handler.hero.ResHeroResetErrorHandler;
import com.game.net.handler.guild.ResGuildDismissHandler;
import com.game.net.handler.hero.ResHeroSkillUpgradeErrorHandler;
import com.game.net.handler.guild.ResGuildCreateErrorHandler;
import com.game.net.handler.skill.ResSkillRemoveHandler;
import com.game.net.handler.login.ResLoginLocalHandler;
import com.game.net.handler.guild.ResGuildRefuseInviteHandler;
import com.game.net.handler.guild.ResGuildKickErrorHandler;
import com.game.net.handler.guanqia.ResGuanQiaFightErrorHandler;
import com.game.net.handler.guild.ResGuildAddApplicantHandler;
import com.game.net.handler.team.ResTeamZhengBingCancelHandler;
import com.game.net.handler.guild.ResGuildRefuseApplyHandler;
import com.game.net.handler.guild.ResGuildDemiseErrorHandler;
import com.game.net.handler.guild.ResGuildBeInvitedHandler;
import com.game.net.handler.hero.ResHeroBingZhongUnlockHandler;
import com.game.net.handler.hero.ResHeroBingZhongSelectHandler;
import com.game.net.handler.team.ResTeamZhengBingLiJiHandler;
import com.game.net.handler.hero.ResHeroAddHandler;
import com.game.net.handler.guild.ResGuildCreateHandler;
import com.game.net.handler.chat.ResChatInitHandler;
import com.game.net.handler.guild.ResGuildRemoveInviteeHandler;
import com.game.net.handler.skill.ResSkillAddHandler;
import com.game.net.handler.hero.ResHeroSkillUpgradeHandler;
import com.game.net.handler.guild.ResGuildGetAllHandler;
import com.game.net.handler.team.ResTeamUnSetErrorHandler;
import com.game.net.handler.guild.ResGuildInitHandler;
import com.game.net.handler.hero.ResHeroBingZhongSkillSelectErrorHandler;
import com.game.net.handler.guild.ResGuildAgreeInviteHandler;
import com.game.net.handler.chat.ResChatErrorHandler;
import com.game.net.handler.hero.ResHeroJueXingHandler;
import com.game.net.handler.login.ResLoginLocalErrorHandler;
import com.game.net.handler.guild.ResGuildInviteErrorHandler;
import com.game.net.handler.skill.ResSkillResearchHandler;
import com.game.net.handler.guild.ResGuildRefuseApplyErrorHandler;
import com.game.net.handler.hero.ResHeroRemoveSkillErrorHandler;
import com.game.net.handler.building.ResBuildingUpgradeErrorHandler;
import com.game.net.handler.guild.ResGuildInviteHandler;
import com.game.net.handler.skill.ResSkillResearchErrorHandler;
import com.game.net.handler.guild.ResGuildAddMemberHandler;
import com.game.net.handler.hero.ResHeroResetHandler;
import com.game.net.handler.hero.ResHeroAddSkillErrorHandler;
import com.game.net.handler.guild.ResGuildAgreeInviteErrorHandler;
import com.game.net.handler.guild.ResGuildExitErrorHandler;
import com.game.net.handler.util.ResHeartBeatHandler;
import com.game.net.handler.hero.ResHeroBingZhongJinJieHandler;
import com.game.net.handler.team.ResTeamZhengBingErrorHandler;
import com.game.net.handler.guild.ResGuildMemberPositionUpdateHandler;
import com.game.net.handler.building.ResBuildingUpgradeHandler;
import com.game.net.handler.team.ResTeamZhengBingCancelErrorHandler;
import com.game.net.handler.guild.ResGuildChangePositionHandler;
import com.game.net.handler.util.ResGMHandler;
import com.game.net.handler.hero.ResHeroRemoveHandler;
import com.game.net.handler.guild.ResGuildAddInviteeHandler;
import com.game.net.handler.hero.ResHeroBingZhongSkillSelectHandler;
import com.game.net.handler.guild.ResGuildAgreeApplyHandler;
import com.game.net.handler.hero.ResHeroChaiJieHandler;
import com.game.net.handler.hero.ResHeroBingZhongUnlockErrorHandler;
import com.game.net.handler.login.ResLoginVersionCheckHandler;
import com.game.net.handler.team.ResTeamZhengBingHandler;
import com.game.net.handler.guild.ResGuildDemiseHandler;
import com.game.net.handler.guild.ResGuildExitHandler;
import com.game.net.handler.hero.ResHeroPeiDianResetHandler;
import com.game.net.handler.team.ResTeamUnSetHandler;
import com.game.net.handler.guanqia.ResGuanQiaFightHandler;
import com.game.net.handler.guild.ResGuildGetAllErrorHandler;
import com.net.MNetHandler;

/** Created by FreeMarker. DO NOT EDIT!!! */
public class HandlerPool {
  private var handlers = {};

  public function HandlerPool() {
    handlers[300] = ResHeroAddSkillHandler;
    handlers[297] = ResHeroRemoveHandler;
    handlers[180] = ResChatHandler;
    handlers[207] = ResGuildApplyErrorHandler;
    handlers[295] = ResSkillResearchHandler;
    handlers[217] = ResGuildCreateErrorHandler;
    handlers[382] = ResChatInitHandler;
    handlers[293] = ResSkillRemoveHandler;
    handlers[337] = ResTeamZhengBingHandler;
    handlers[398] = ResGuildRemoveInviteeHandler;
    handlers[385] = ResGuildRefuseApplyErrorHandler;
    handlers[213] = ResGuildChangePositionHandler;
    handlers[329] = ResTeamSetErrorHandler;
    handlers[341] = ResHeroBingZhongJinJieErrorHandler;
    handlers[227] = ResGuildInitHandler;
    handlers[340] = ResHeroBingZhongJinJieHandler;
    handlers[225] = ResGuildGetAllHandler;
    handlers[296] = ResSkillResearchErrorHandler;
    handlers[223] = ResGuildExitErrorHandler;
    handlers[3] = ResLoginLocalErrorHandler;
    handlers[301] = ResHeroAddSkillErrorHandler;
    handlers[229] = ResGuildInviteHandler;
    handlers[298] = ResHeroAddHandler;
    handlers[181] = ResChatErrorHandler;
    handlers[309] = ResHeroSkillUpgradeHandler;
    handlers[349] = ResHeroBingZhongSelectHandler;
    handlers[310] = ResHeroSkillUpgradeErrorHandler;
    handlers[328] = ResTeamSetHandler;
    handlers[394] = ResGuildDemiseErrorHandler;
    handlers[6] = ResLoginVersionCheckErrorHandler;
    handlers[355] = ResBuildingUpgradeHandler;
    handlers[316] = ResHeroRemoveSkillErrorHandler;
    handlers[401] = ResGuildAddInviteeHandler;
    handlers[405] = ResGuildBeInvitedHandler;
    handlers[332] = ResTeamZhengBingCancelErrorHandler;
    handlers[402] = ResGuildAddMemberHandler;
    handlers[238] = ResGuildKickHandler;
    handlers[325] = ResTeamZhengBingLiJiHandler;
    handlers[306] = ResHeroZhuanHuaHandler;
    handlers[335] = ResTeamUnSetErrorHandler;
    handlers[331] = ResTeamZhengBingCancelHandler;
    handlers[219] = ResGuildDismissHandler;
    handlers[352] = ResHeroJueXingHandler;
    handlers[399] = ResGuildRemoveApplicantHandler;
    handlers[397] = ResGuildRefuseInviteErrorHandler;
    handlers[2] = ResLoginLocalHandler;
    handlers[313] = ResHeroPeiDianResetErrorHandler;
    handlers[292] = ResSkillAddHandler;
    handlers[358] = ResHeartBeatHandler;
    handlers[377] = ResHeroLevelUpdateHandler;
    handlers[239] = ResGuildKickErrorHandler;
    handlers[360] = ResGamblingHandler;
    handlers[16] = ResUserUpdateAttributeHandler;
    handlers[400] = ResGuildMemberPositionUpdateHandler;
    handlers[387] = ResGuildAgreeApplyHandler;
    handlers[312] = ResHeroPeiDianResetHandler;
    handlers[291] = ResHeroChaiJieErrorHandler;
    handlers[350] = ResHeroBingZhongSelectErrorHandler;
    handlers[17] = ResUserUpdateValueHandler;
    handlers[338] = ResTeamZhengBingErrorHandler;
    handlers[226] = ResGuildGetAllErrorHandler;
    handlers[303] = ResHeroJinJieHandler;
    handlers[326] = ResTeamZhengBingLiJiErrorHandler;
    handlers[390] = ResGuildAgreeInviteHandler;
    handlers[304] = ResHeroJinJieErrorHandler;
    handlers[322] = ResHeroPeiDianErrorHandler;
    handlers[393] = ResGuildDemiseHandler;
    handlers[7] = ResKickHandler;
    handlers[396] = ResGuildRefuseInviteHandler;
    handlers[356] = ResBuildingUpgradeErrorHandler;
    handlers[403] = ResGuildRemoveMemberHandler;
    handlers[384] = ResGuildRefuseApplyHandler;
    handlers[318] = ResHeroResetHandler;
    handlers[388] = ResGuildAgreeApplyErrorHandler;
    handlers[404] = ResGuildAddApplicantHandler;
    handlers[347] = ResHeroBingZhongSkillSelectErrorHandler;
    handlers[216] = ResGuildCreateHandler;
    handlers[346] = ResHeroBingZhongSkillSelectHandler;
    handlers[5] = ResLoginVersionCheckHandler;
    handlers[381] = ResGuanQiaFightErrorHandler;
    handlers[206] = ResGuildApplyHandler;
    handlers[321] = ResHeroPeiDianHandler;
    handlers[391] = ResGuildAgreeInviteErrorHandler;
    handlers[15] = ResGMHandler;
    handlers[343] = ResHeroBingZhongUnlockHandler;
    handlers[344] = ResHeroBingZhongUnlockErrorHandler;
    handlers[290] = ResHeroChaiJieHandler;
    handlers[353] = ResHeroJueXingErrorHandler;
    handlers[222] = ResGuildExitHandler;
    handlers[220] = ResGuildDismissErrorHandler;
    handlers[214] = ResGuildChangePositionErrorHandler;
    handlers[307] = ResHeroZhuanHuaErrorHandler;
    handlers[361] = ResGamblingErrorHandler;
    handlers[315] = ResHeroRemoveSkillHandler;
    handlers[230] = ResGuildInviteErrorHandler;
    handlers[380] = ResGuanQiaFightHandler;
    handlers[334] = ResTeamUnSetHandler;
    handlers[319] = ResHeroResetErrorHandler;
  }

  public function handler(id:int):MNetHandler {
    return handlers[id] == null ? null : new handlers[id] as MNetHandler;
  }
}
}