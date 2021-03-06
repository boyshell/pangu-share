package com.game.net {

import com.game.net.handler.gambling.ResGamblingErrorHandler;
import com.game.net.handler.hero.ResHeroPeiDianResetErrorHandler;
import com.game.net.handler.guild.ResGuildKickHandler;
import com.game.net.handler.qq.ResQQRemoveHandler;
import com.game.net.handler.chat.ResChatHandler;
import com.game.net.handler.hero.ResHeroJinJieHandler;
import com.game.net.handler.login.ResLoginVersionCheckErrorHandler;
import com.game.net.handler.guild.ResGuildDemiseCancelHandler;
import com.game.net.handler.task.ResTaskGetPrizeErrorHandler;
import com.game.net.handler.hero.ResHeroZhuanHuaErrorHandler;
import com.game.net.handler.guild.ResGuildDismissErrorHandler;
import com.game.net.handler.user.ResUserRemoveFightHistoryHandler;
import com.game.net.handler.hero.ResHeroRemoveSkillHandler;
import com.game.net.handler.hero.ResHeroZhuanHuaHandler;
import com.game.net.handler.train.ResTrainRefreshErrorHandler;
import com.game.net.handler.qq.ResQQApplyConfirmErrorHandler;
import com.game.net.handler.hero.ResHeroPeiDianErrorHandler;
import com.game.net.handler.hero.ResHeroJinJieErrorHandler;
import com.game.net.handler.guild.ResGuildDemiseUpdateHandler;
import com.game.net.handler.guild.ResGuildRemoveApplicantHandler;
import com.game.net.handler.user.ResUserUpdateAttributeHandler;
import com.game.net.handler.gambling.ResGamblingAddTBHandler;
import com.game.net.handler.hero.ResHeroAddSkillHandler;
import com.game.net.handler.guild.ResGuildRefuseInviteErrorHandler;
import com.game.net.handler.hero.ResHeroBingZhongJinJieErrorHandler;
import com.game.net.handler.shop.ResShopBuyErrorHandler;
import com.game.net.handler.user.ResUserUpdateValueHandler;
import com.game.net.handler.team.ResTeamZhengBingLiJiErrorHandler;
import com.game.net.handler.team.ResTeamSetHandler;
import com.game.net.handler.hero.ResHeroPeiDianHandler;
import com.game.net.handler.gambling.ResGamblingHandler;
import com.game.net.handler.hero.ResHeroLevelUpdateHandler;
import com.game.net.handler.gambling.ResGamblingAddEXHandler;
import com.game.net.handler.guild.ResGuildRemoveMemberHandler;
import com.game.net.handler.hero.ResHeroBingZhongSelectErrorHandler;
import com.game.net.handler.hero.ResHeroChaiJieErrorHandler;
import com.game.net.handler.guild.ResGuildApplyHandler;
import com.game.net.handler.hero.ResHeroJueXingErrorHandler;
import com.game.net.handler.guild.ResGuildApplyErrorHandler;
import com.game.net.handler.sign.ResSignErrorHandler;
import com.game.net.handler.guild.ResGuildAgreeApplyErrorHandler;
import com.game.net.handler.team.ResTeamSetErrorHandler;
import com.game.net.handler.util.ResKickHandler;
import com.game.net.handler.user.ResUserSetNameHandler;
import com.game.net.handler.user.ResUserUpdateGuildApplyTimeHandler;
import com.game.net.handler.guild.ResGuildChangePositionErrorHandler;
import com.game.net.handler.mail.ResMailPersonalSendHandler;
import com.game.net.handler.hero.ResHeroResetErrorHandler;
import com.game.net.handler.guild.ResGuildDismissHandler;
import com.game.net.handler.mail.ResMailGuildReadErrorHandler;
import com.game.net.handler.guild.ResGuildLevelUpdateHandler;
import com.game.net.handler.hero.ResHeroSkillUpgradeErrorHandler;
import com.game.net.handler.guild.ResGuildCreateErrorHandler;
import com.game.net.handler.skill.ResSkillRemoveHandler;
import com.game.net.handler.gambling.ResGamblingGetHeroesErrorHandler;
import com.game.net.handler.login.ResLoginLocalHandler;
import com.game.net.handler.sign.ResSignHandler;
import com.game.net.handler.qq.ResQQAddHandler;
import com.game.net.handler.guild.ResGuildRefuseInviteHandler;
import com.game.net.handler.shop.ResShopBuyHandler;
import com.game.net.handler.guild.ResGuildKickErrorHandler;
import com.game.net.handler.guanqia.ResGuanQiaFightErrorHandler;
import com.game.net.handler.guild.ResGuildAddApplicantHandler;
import com.game.net.handler.team.ResTeamZhengBingCancelHandler;
import com.game.net.handler.guild.ResGuildRefuseApplyHandler;
import com.game.net.handler.guild.ResGuildDemiseErrorHandler;
import com.game.net.handler.guild.ResGuildBeInvitedHandler;
import com.game.net.handler.train.ResTrainPrizeHandler;
import com.game.net.handler.hero.ResHeroBingZhongUnlockHandler;
import com.game.net.handler.hero.ResHeroBingZhongSelectHandler;
import com.game.net.handler.mail.ResMailSystemRcvHandler;
import com.game.net.handler.team.ResTeamZhengBingLiJiHandler;
import com.game.net.handler.hero.ResHeroAddHandler;
import com.game.net.handler.gambling.ResGamblingAddHDHandler;
import com.game.net.handler.fight.ResFightGetListErrorHandler;
import com.game.net.handler.guild.ResGuildCreateHandler;
import com.game.net.handler.train.ResTrainChallengeHandler;
import com.game.net.handler.chat.ResChatInitHandler;
import com.game.net.handler.guild.ResGuildDemiseCancelErrorHandler;
import com.game.net.handler.gambling.ResGamblingRemoveHandler;
import com.game.net.handler.qq.ResQQCancelErrorHandler;
import com.game.net.handler.guild.ResGuildRemoveInviteeHandler;
import com.game.net.handler.skill.ResSkillAddHandler;
import com.game.net.handler.hero.ResHeroSkillUpgradeHandler;
import com.game.net.handler.guild.ResGuildGetAllHandler;
import com.game.net.handler.qq.ResQQCancelHandler;
import com.game.net.handler.team.ResTeamUnSetErrorHandler;
import com.game.net.handler.guild.ResGuildInitHandler;
import com.game.net.handler.hero.ResHeroBingZhongSkillSelectErrorHandler;
import com.game.net.handler.guild.ResGuildAgreeInviteHandler;
import com.game.net.handler.chat.ResChatErrorHandler;
import com.game.net.handler.gambling.ResGamblingAddMJHandler;
import com.game.net.handler.hero.ResHeroJueXingHandler;
import com.game.net.handler.login.ResLoginLocalErrorHandler;
import com.game.net.handler.guild.ResGuildInviteErrorHandler;
import com.game.net.handler.user.ResUserPayHandler;
import com.game.net.handler.skill.ResSkillResearchHandler;
import com.game.net.handler.mail.ResMailSystemReadHandler;
import com.game.net.handler.guild.ResGuildRefuseApplyErrorHandler;
import com.game.net.handler.hero.ResHeroRemoveSkillErrorHandler;
import com.game.net.handler.building.ResBuildingUpgradeErrorHandler;
import com.game.net.handler.fight.ResFightGetDetailHandler;
import com.game.net.handler.qq.ResQQAddApplicantHandler;
import com.game.net.handler.guild.ResGuildValueUpdateHandler;
import com.game.net.handler.guild.ResGuildInviteHandler;
import com.game.net.handler.skill.ResSkillResearchErrorHandler;
import com.game.net.handler.mail.ResMailPersonalReadHandler;
import com.game.net.handler.guild.ResGuildAddMemberHandler;
import com.game.net.handler.fight.ResFightGetListHandler;
import com.game.net.handler.hero.ResHeroResetHandler;
import com.game.net.handler.mail.ResMailGuildNewHandler;
import com.game.net.handler.hero.ResHeroAddSkillErrorHandler;
import com.game.net.handler.guild.ResGuildAgreeInviteErrorHandler;
import com.game.net.handler.guild.ResGuildExitErrorHandler;
import com.game.net.handler.util.ResHeartBeatHandler;
import com.game.net.handler.hero.ResHeroBingZhongJinJieHandler;
import com.game.net.handler.team.ResTeamZhengBingErrorHandler;
import com.game.net.handler.user.ResUserPayErrorHandler;
import com.game.net.handler.task.ResTaskAddHandler;
import com.game.net.handler.guild.ResGuildMemberPositionUpdateHandler;
import com.game.net.handler.building.ResBuildingUpgradeHandler;
import com.game.net.handler.mail.ResMailPersonalSendErrorHandler;
import com.game.net.handler.qq.ResQQApplyHandler;
import com.game.net.handler.team.ResTeamZhengBingCancelErrorHandler;
import com.game.net.handler.mail.ResMailPersonalReadErrorHandler;
import com.game.net.handler.task.ResTaskGetPrizeHandler;
import com.game.net.handler.mail.ResMailPersonalNewHandler;
import com.game.net.handler.guild.ResGuildChangePositionHandler;
import com.game.net.handler.mail.ResMailGuildReadHandler;
import com.game.net.handler.shop.ResShopRefreshErrorHandler;
import com.game.net.handler.gambling.ResGamblingAddWJHandler;
import com.game.net.handler.util.ResGMHandler;
import com.game.net.handler.mail.ResMailSystemRcvErrorHandler;
import com.game.net.handler.hero.ResHeroRemoveHandler;
import com.game.net.handler.guild.ResGuildAddInviteeHandler;
import com.game.net.handler.fight.ResFightGetDetailErrorHandler;
import com.game.net.handler.hero.ResHeroBingZhongSkillSelectHandler;
import com.game.net.handler.guild.ResGuildAgreeApplyHandler;
import com.game.net.handler.hero.ResHeroChaiJieHandler;
import com.game.net.handler.hero.ResHeroBingZhongUnlockErrorHandler;
import com.game.net.handler.train.ResTrainChallengeErrorHandler;
import com.game.net.handler.gambling.ResGamblingGetHeroesHandler;
import com.game.net.handler.login.ResLoginVersionCheckHandler;
import com.game.net.handler.team.ResTeamZhengBingHandler;
import com.game.net.handler.guild.ResGuildDemiseHandler;
import com.game.net.handler.qq.ResQQApplyConfirmHandler;
import com.game.net.handler.mail.ResMailSystemReadErrorHandler;
import com.game.net.handler.qq.ResQQRemoveApplicantHandler;
import com.game.net.handler.guild.ResGuildExitHandler;
import com.game.net.handler.task.ResTaskUpdateHandler;
import com.game.net.handler.mail.ResMailGuildSendHandler;
import com.game.net.handler.user.ResUserSetNameErrorHandler;
import com.game.net.handler.mail.ResMailSystemNewHandler;
import com.game.net.handler.shop.ResShopRefreshHandler;
import com.game.net.handler.mail.ResMailGuildSendErrorHandler;
import com.game.net.handler.qq.ResQQApplyErrorHandler;
import com.game.net.handler.hero.ResHeroPeiDianResetHandler;
import com.game.net.handler.team.ResTeamUnSetHandler;
import com.game.net.handler.guanqia.ResGuanQiaFightHandler;
import com.game.net.handler.train.ResTrainRefreshHandler;
import com.game.net.handler.qq.ResQQInitHandler;
import com.game.net.handler.guild.ResGuildGetAllErrorHandler;
import com.net.MNetHandler;

/** Created by FreeMarker. DO NOT EDIT!!! */
public class HandlerPool {
  private var handlers = {};

  public function HandlerPool() {
    handlers[328] = ResTeamSetHandler;
    handlers[435] = ResQQRemoveApplicantHandler;
    handlers[225] = ResGuildGetAllHandler;
    handlers[17] = ResUserUpdateValueHandler;
    handlers[222] = ResGuildExitHandler;
    handlers[456] = ResSignHandler;
    handlers[404] = ResGuildAddApplicantHandler;
    handlers[463] = ResFightGetListErrorHandler;
    handlers[227] = ResGuildInitHandler;
    handlers[394] = ResGuildDemiseErrorHandler;
    handlers[479] = ResGamblingAddWJHandler;
    handlers[301] = ResHeroAddSkillErrorHandler;
    handlers[355] = ResBuildingUpgradeHandler;
    handlers[450] = ResGamblingRemoveHandler;
    handlers[459] = ResFightGetDetailHandler;
    handlers[60] = ResMailPersonalReadErrorHandler;
    handlers[229] = ResGuildInviteHandler;
    handlers[340] = ResHeroBingZhongJinJieHandler;
    handlers[230] = ResGuildInviteErrorHandler;
    handlers[419] = ResMailSystemRcvHandler;
    handlers[319] = ResHeroResetErrorHandler;
    handlers[431] = ResQQApplyConfirmErrorHandler;
    handlers[440] = ResUserSetNameHandler;
    handlers[352] = ResHeroJueXingHandler;
    handlers[407] = ResMailGuildSendHandler;
    handlers[397] = ResGuildRefuseInviteErrorHandler;
    handlers[460] = ResFightGetDetailErrorHandler;
    handlers[349] = ResHeroBingZhongSelectHandler;
    handlers[411] = ResMailSystemReadErrorHandler;
    handlers[318] = ResHeroResetHandler;
    handlers[441] = ResUserSetNameErrorHandler;
    handlers[321] = ResHeroPeiDianHandler;
    handlers[447] = ResGuildValueUpdateHandler;
    handlers[474] = ResTaskAddHandler;
    handlers[325] = ResTeamZhengBingLiJiHandler;
    handlers[390] = ResGuildAgreeInviteHandler;
    handlers[453] = ResUserPayHandler;
    handlers[436] = ResQQAddApplicantHandler;
    handlers[180] = ResChatHandler;
    handlers[398] = ResGuildRemoveInviteeHandler;
    handlers[298] = ResHeroAddHandler;
    handlers[466] = ResTrainChallengeErrorHandler;
    handlers[214] = ResGuildChangePositionErrorHandler;
    handlers[337] = ResTeamZhengBingHandler;
    handlers[401] = ResGuildAddInviteeHandler;
    handlers[84] = ResShopRefreshHandler;
    handlers[313] = ResHeroPeiDianResetErrorHandler;
    handlers[338] = ResTeamZhengBingErrorHandler;
    handlers[332] = ResTeamZhengBingCancelErrorHandler;
    handlers[399] = ResGuildRemoveApplicantHandler;
    handlers[2] = ResLoginLocalHandler;
    handlers[207] = ResGuildApplyErrorHandler;
    handlers[226] = ResGuildGetAllErrorHandler;
    handlers[315] = ResHeroRemoveSkillHandler;
    handlers[344] = ResHeroBingZhongUnlockErrorHandler;
    handlers[442] = ResGuildDemiseUpdateHandler;
    handlers[220] = ResGuildDismissErrorHandler;
    handlers[462] = ResFightGetListHandler;
    handlers[473] = ResTaskGetPrizeErrorHandler;
    handlers[3] = ResLoginLocalErrorHandler;
    handlers[422] = ResMailGuildReadHandler;
    handlers[449] = ResUserRemoveFightHistoryHandler;
    handlers[396] = ResGuildRefuseInviteHandler;
    handlers[425] = ResQQRemoveHandler;
    handlers[329] = ResTeamSetErrorHandler;
    handlers[457] = ResSignErrorHandler;
    handlers[388] = ResGuildAgreeApplyErrorHandler;
    handlers[454] = ResUserPayErrorHandler;
    handlers[216] = ResGuildCreateHandler;
    handlers[312] = ResHeroPeiDianResetHandler;
    handlers[7] = ResKickHandler;
    handlers[219] = ResGuildDismissHandler;
    handlers[477] = ResGamblingGetHeroesErrorHandler;
    handlers[343] = ResHeroBingZhongUnlockHandler;
    handlers[414] = ResMailPersonalSendHandler;
    handlers[334] = ResTeamUnSetHandler;
    handlers[347] = ResHeroBingZhongSkillSelectErrorHandler;
    handlers[445] = ResGuildDemiseCancelErrorHandler;
    handlers[444] = ResGuildDemiseCancelHandler;
    handlers[393] = ResGuildDemiseHandler;
    handlers[481] = ResGamblingAddMJHandler;
    handlers[451] = ResGamblingAddEXHandler;
    handlers[468] = ResTrainRefreshHandler;
    handlers[293] = ResSkillRemoveHandler;
    handlers[415] = ResMailPersonalSendErrorHandler;
    handlers[423] = ResMailGuildReadErrorHandler;
    handlers[213] = ResGuildChangePositionHandler;
    handlers[85] = ResShopRefreshErrorHandler;
    handlers[15] = ResGMHandler;
    handlers[470] = ResTrainPrizeHandler;
    handlers[410] = ResMailSystemReadHandler;
    handlers[335] = ResTeamUnSetErrorHandler;
    handlers[307] = ResHeroZhuanHuaErrorHandler;
    handlers[309] = ResHeroSkillUpgradeHandler;
    handlers[380] = ResGuanQiaFightHandler;
    handlers[181] = ResChatErrorHandler;
    handlers[16] = ResUserUpdateAttributeHandler;
    handlers[6] = ResLoginVersionCheckErrorHandler;
    handlers[385] = ResGuildRefuseApplyErrorHandler;
    handlers[5] = ResLoginVersionCheckHandler;
    handlers[361] = ResGamblingErrorHandler;
    handlers[78] = ResShopBuyHandler;
    handlers[480] = ResGamblingAddHDHandler;
    handlers[387] = ResGuildAgreeApplyHandler;
    handlers[402] = ResGuildAddMemberHandler;
    handlers[326] = ResTeamZhengBingLiJiErrorHandler;
    handlers[437] = ResQQInitHandler;
    handlers[381] = ResGuanQiaFightErrorHandler;
    handlers[356] = ResBuildingUpgradeErrorHandler;
    handlers[239] = ResGuildKickErrorHandler;
    handlers[217] = ResGuildCreateErrorHandler;
    handlers[446] = ResUserUpdateGuildApplyTimeHandler;
    handlers[358] = ResHeartBeatHandler;
    handlers[469] = ResTrainRefreshErrorHandler;
    handlers[316] = ResHeroRemoveSkillErrorHandler;
    handlers[350] = ResHeroBingZhongSelectErrorHandler;
    handlers[416] = ResMailPersonalNewHandler;
    handlers[472] = ResTaskGetPrizeHandler;
    handlers[384] = ResGuildRefuseApplyHandler;
    handlers[405] = ResGuildBeInvitedHandler;
    handlers[360] = ResGamblingHandler;
    handlers[291] = ResHeroChaiJieErrorHandler;
    handlers[206] = ResGuildApplyHandler;
    handlers[303] = ResHeroJinJieHandler;
    handlers[377] = ResHeroLevelUpdateHandler;
    handlers[400] = ResGuildMemberPositionUpdateHandler;
    handlers[295] = ResSkillResearchHandler;
    handlers[79] = ResShopBuyErrorHandler;
    handlers[223] = ResGuildExitErrorHandler;
    handlers[428] = ResQQCancelErrorHandler;
    handlers[424] = ResQQAddHandler;
    handlers[403] = ResGuildRemoveMemberHandler;
    handlers[297] = ResHeroRemoveHandler;
    handlers[306] = ResHeroZhuanHuaHandler;
    handlers[391] = ResGuildAgreeInviteErrorHandler;
    handlers[300] = ResHeroAddSkillHandler;
    handlers[292] = ResSkillAddHandler;
    handlers[434] = ResQQApplyErrorHandler;
    handlers[412] = ResMailGuildNewHandler;
    handlers[322] = ResHeroPeiDianErrorHandler;
    handlers[331] = ResTeamZhengBingCancelHandler;
    handlers[341] = ResHeroBingZhongJinJieErrorHandler;
    handlers[290] = ResHeroChaiJieHandler;
    handlers[420] = ResMailSystemRcvErrorHandler;
    handlers[310] = ResHeroSkillUpgradeErrorHandler;
    handlers[417] = ResMailSystemNewHandler;
    handlers[238] = ResGuildKickHandler;
    handlers[346] = ResHeroBingZhongSkillSelectHandler;
    handlers[478] = ResGamblingAddTBHandler;
    handlers[36] = ResTaskUpdateHandler;
    handlers[296] = ResSkillResearchErrorHandler;
    handlers[465] = ResTrainChallengeHandler;
    handlers[427] = ResQQCancelHandler;
    handlers[59] = ResMailPersonalReadHandler;
    handlers[304] = ResHeroJinJieErrorHandler;
    handlers[353] = ResHeroJueXingErrorHandler;
    handlers[430] = ResQQApplyConfirmHandler;
    handlers[433] = ResQQApplyHandler;
    handlers[382] = ResChatInitHandler;
    handlers[476] = ResGamblingGetHeroesHandler;
    handlers[448] = ResGuildLevelUpdateHandler;
    handlers[408] = ResMailGuildSendErrorHandler;
  }

  public function handler(id:int):MNetHandler {
    return handlers[id] == null ? null : new handlers[id] as MNetHandler;
  }
}
}