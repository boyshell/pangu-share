package com.game.net {

import com.game.net.message.util.ResKickMessage;
import com.game.net.message.guild.ResGuildDemiseCancelErrorMessage;
import com.game.net.message.skill.ResSkillResearchMessage;
import com.game.net.message.skill.ResSkillResearchErrorMessage;
import com.game.net.message.hero.ResHeroPeiDianResetErrorMessage;
import com.game.net.message.guild.ResGuildInviteErrorMessage;
import com.game.net.message.guild.ResGuildDemiseCancelMessage;
import com.game.net.message.hero.ResHeroBingZhongJinJieMessage;
import com.game.net.message.guild.ResGuildRemoveApplicantMessage;
import com.game.net.message.guild.ResGuildRemoveMemberMessage;
import com.game.net.message.login.ResLoginLocalErrorMessage;
import com.game.net.message.guild.ResGuildAgreeInviteMessage;
import com.game.net.message.login.ResLoginVersionCheckErrorMessage;
import com.game.net.message.user.ResUserSetNameErrorMessage;
import com.game.net.message.guild.ResGuildCreateErrorMessage;
import com.game.net.message.guild.ResGuildExitErrorMessage;
import com.game.net.message.user.ResUserRemoveFightHistoryMessage;
import com.game.net.message.hero.ResHeroChaiJieMessage;
import com.game.net.message.guild.ResGuildCreateMessage;
import com.game.net.message.guild.ResGuildValueUpdateMessage;
import com.game.net.message.qq.ResQQCancelErrorMessage;
import com.game.net.message.building.ResBuildingUpgradeErrorMessage;
import com.game.net.message.guild.ResGuildDemiseErrorMessage;
import com.game.net.message.guild.ResGuildRefuseApplyMessage;
import com.game.net.message.guild.ResGuildDismissErrorMessage;
import com.game.net.message.hero.ResHeroBingZhongUnlockErrorMessage;
import com.game.net.message.mail.ResMailPersonalReadErrorMessage;
import com.game.net.message.hero.ResHeroPeiDianResetMessage;
import com.game.net.message.guild.ResGuildInviteMessage;
import com.game.net.message.login.ResLoginVersionCheckMessage;
import com.game.net.message.qq.ResQQCancelMessage;
import com.game.net.message.guild.ResGuildApplyErrorMessage;
import com.game.net.message.guild.ResGuildRemoveInviteeMessage;
import com.game.net.message.guild.ResGuildDemiseMessage;
import com.game.net.message.guild.ResGuildChangePositionMessage;
import com.game.net.message.guild.ResGuildGetAllErrorMessage;
import com.game.net.message.mail.ResMailGuildSendErrorMessage;
import com.game.net.message.chat.ResChatInitMessage;
import com.game.net.message.guild.ResGuildAddMemberMessage;
import com.game.net.message.qq.ResQQApplyConfirmMessage;
import com.game.net.message.team.ResTeamUnSetErrorMessage;
import com.game.net.message.hero.ResHeroJinJieErrorMessage;
import com.game.net.message.gambling.ResGamblingErrorMessage;
import com.game.net.message.hero.ResHeroAddSkillMessage;
import com.game.net.message.hero.ResHeroBingZhongSelectMessage;
import com.game.net.message.qq.ResQQApplyErrorMessage;
import com.game.net.message.user.ResUserAddFightHistoryMessage;
import com.game.net.message.mail.ResMailGuildSendMessage;
import com.game.net.message.building.ResBuildingUpgradeMessage;
import com.game.net.message.qq.ResQQApplyMessage;
import com.game.net.message.chat.ResChatMessage;
import com.game.net.message.util.ResGMMessage;
import com.game.net.message.team.ResTeamZhengBingMessage;
import com.game.net.message.user.ResUserUpdateGuildApplyTimeMessage;
import com.game.net.message.guild.ResGuildMemberPositionUpdateMessage;
import com.game.net.message.mail.ResMailSystemRcvErrorMessage;
import com.game.net.message.guild.ResGuildAddInviteeMessage;
import com.game.net.message.team.ResTeamUnSetMessage;
import com.game.net.message.hero.ResHeroBingZhongUnlockMessage;
import com.game.net.message.guild.ResGuildAgreeApplyErrorMessage;
import com.game.net.message.hero.ResHeroRemoveSkillErrorMessage;
import com.game.net.message.hero.ResHeroResetErrorMessage;
import com.game.net.message.hero.ResHeroJueXingErrorMessage;
import com.game.net.message.team.ResTeamSetMessage;
import com.game.net.message.team.ResTeamZhengBingCancelErrorMessage;
import com.game.net.message.qq.ResQQRemoveMessage;
import com.game.net.message.user.ResUserUpdateAttributeMessage;
import com.game.net.message.qq.ResQQApplyConfirmErrorMessage;
import com.game.net.message.skill.ResSkillRemoveMessage;
import com.game.net.message.guild.ResGuildExitMessage;
import com.game.net.message.mail.ResMailPersonalSendMessage;
import com.game.net.message.hero.ResHeroBingZhongSkillSelectMessage;
import com.game.net.message.guild.ResGuildDismissMessage;
import com.game.net.message.mail.ResMailSystemNewMessage;
import com.game.net.message.mail.ResMailGuildReadMessage;
import com.game.net.message.mail.ResMailPersonalNewMessage;
import com.game.net.message.team.ResTeamSetErrorMessage;
import com.game.net.message.qq.ResQQAddMessage;
import com.game.net.message.hero.ResHeroAddMessage;
import com.game.net.message.guild.ResGuildAgreeApplyMessage;
import com.game.net.message.guild.ResGuildAgreeInviteErrorMessage;
import com.game.net.message.guild.ResGuildAddApplicantMessage;
import com.game.net.message.guild.ResGuildBeInvitedMessage;
import com.game.net.message.hero.ResHeroResetMessage;
import com.game.net.message.hero.ResHeroZhuanHuaErrorMessage;
import com.game.net.message.hero.ResHeroRemoveSkillMessage;
import com.game.net.message.hero.ResHeroChaiJieErrorMessage;
import com.game.net.message.util.ResHeartBeatMessage;
import com.game.net.message.guild.ResGuildGetAllMessage;
import com.game.net.message.hero.ResHeroLevelUpdateMessage;
import com.game.net.message.hero.ResHeroRemoveMessage;
import com.game.net.message.hero.ResHeroPeiDianErrorMessage;
import com.game.net.message.team.ResTeamZhengBingErrorMessage;
import com.game.net.message.guild.ResGuildKickErrorMessage;
import com.game.net.message.team.ResTeamZhengBingCancelMessage;
import com.game.net.message.qq.ResQQInitMessage;
import com.game.net.message.user.ResUserUpdateValueMessage;
import com.game.net.message.guild.ResGuildRefuseApplyErrorMessage;
import com.game.net.message.guild.ResGuildChangePositionErrorMessage;
import com.game.net.message.hero.ResHeroPeiDianMessage;
import com.game.net.message.qq.ResQQAddApplicantMessage;
import com.game.net.message.guild.ResGuildApplyMessage;
import com.game.net.message.hero.ResHeroBingZhongSkillSelectErrorMessage;
import com.game.net.message.hero.ResHeroSkillUpgradeMessage;
import com.game.net.message.hero.ResHeroJueXingMessage;
import com.game.net.message.hero.ResHeroSkillUpgradeErrorMessage;
import com.game.net.message.guild.ResGuildDemiseUpdateMessage;
import com.game.net.message.login.ResLoginLocalMessage;
import com.game.net.message.hero.ResHeroBingZhongSelectErrorMessage;
import com.game.net.message.mail.ResMailGuildReadErrorMessage;
import com.game.net.message.gambling.ResGamblingMessage;
import com.game.net.message.guild.ResGuildInitMessage;
import com.game.net.message.mail.ResMailSystemReadErrorMessage;
import com.game.net.message.hero.ResHeroJinJieMessage;
import com.game.net.message.mail.ResMailPersonalReadMessage;
import com.game.net.message.hero.ResHeroBingZhongJinJieErrorMessage;
import com.game.net.message.guild.ResGuildKickMessage;
import com.game.net.message.guild.ResGuildRefuseInviteMessage;
import com.game.net.message.user.ResUserSetNameMessage;
import com.game.net.message.guild.ResGuildRefuseInviteErrorMessage;
import com.game.net.message.skill.ResSkillAddMessage;
import com.game.net.message.qq.ResQQRemoveApplicantMessage;
import com.game.net.message.team.ResTeamZhengBingLiJiMessage;
import com.game.net.message.team.ResTeamZhengBingLiJiErrorMessage;
import com.game.net.message.mail.ResMailPersonalSendErrorMessage;
import com.game.net.message.guanqia.ResGuanQiaFightMessage;
import com.game.net.message.mail.ResMailSystemReadMessage;
import com.game.net.message.mail.ResMailSystemRcvMessage;
import com.game.net.message.guild.ResGuildLevelUpdateMessage;
import com.game.net.message.chat.ResChatErrorMessage;
import com.game.net.message.guanqia.ResGuanQiaFightErrorMessage;
import com.game.net.message.hero.ResHeroZhuanHuaMessage;
import com.game.net.message.hero.ResHeroAddSkillErrorMessage;
import com.game.net.message.mail.ResMailGuildNewMessage;
import com.net.Message;

/** Created by FreeMarker. DO NOT EDIT!!! */
public class MessagePool {
  private var messages = {};

  public function MessagePool() {
    messages[341] = ResHeroBingZhongJinJieErrorMessage;
    messages[440] = ResUserSetNameMessage;
    messages[393] = ResGuildDemiseMessage;
    messages[331] = ResTeamZhengBingCancelMessage;
    messages[449] = ResUserRemoveFightHistoryMessage;
    messages[295] = ResSkillResearchMessage;
    messages[217] = ResGuildCreateErrorMessage;
    messages[318] = ResHeroResetMessage;
    messages[412] = ResMailGuildNewMessage;
    messages[301] = ResHeroAddSkillErrorMessage;
    messages[434] = ResQQApplyErrorMessage;
    messages[230] = ResGuildInviteErrorMessage;
    messages[356] = ResBuildingUpgradeErrorMessage;
    messages[206] = ResGuildApplyMessage;
    messages[220] = ResGuildDismissErrorMessage;
    messages[227] = ResGuildInitMessage;
    messages[360] = ResGamblingMessage;
    messages[329] = ResTeamSetErrorMessage;
    messages[303] = ResHeroJinJieMessage;
    messages[180] = ResChatMessage;
    messages[340] = ResHeroBingZhongJinJieMessage;
    messages[325] = ResTeamZhengBingLiJiMessage;
    messages[448] = ResGuildLevelUpdateMessage;
    messages[5] = ResLoginVersionCheckMessage;
    messages[377] = ResHeroLevelUpdateMessage;
    messages[380] = ResGuanQiaFightMessage;
    messages[304] = ResHeroJinJieErrorMessage;
    messages[17] = ResUserUpdateValueMessage;
    messages[313] = ResHeroPeiDianResetErrorMessage;
    messages[335] = ResTeamUnSetErrorMessage;
    messages[2] = ResLoginLocalMessage;
    messages[239] = ResGuildKickErrorMessage;
    messages[346] = ResHeroBingZhongSkillSelectMessage;
    messages[226] = ResGuildGetAllErrorMessage;
    messages[403] = ResGuildRemoveMemberMessage;
    messages[219] = ResGuildDismissMessage;
    messages[387] = ResGuildAgreeApplyMessage;
    messages[438] = ResUserAddFightHistoryMessage;
    messages[344] = ResHeroBingZhongUnlockErrorMessage;
    messages[321] = ResHeroPeiDianMessage;
    messages[298] = ResHeroAddMessage;
    messages[400] = ResGuildMemberPositionUpdateMessage;
    messages[306] = ResHeroZhuanHuaMessage;
    messages[396] = ResGuildRefuseInviteMessage;
    messages[399] = ResGuildRemoveApplicantMessage;
    messages[6] = ResLoginVersionCheckErrorMessage;
    messages[424] = ResQQAddMessage;
    messages[414] = ResMailPersonalSendMessage;
    messages[433] = ResQQApplyMessage;
    messages[436] = ResQQAddApplicantMessage;
    messages[428] = ResQQCancelErrorMessage;
    messages[442] = ResGuildDemiseUpdateMessage;
    messages[425] = ResQQRemoveMessage;
    messages[447] = ResGuildValueUpdateMessage;
    messages[397] = ResGuildRefuseInviteErrorMessage;
    messages[416] = ResMailPersonalNewMessage;
    messages[207] = ResGuildApplyErrorMessage;
    messages[214] = ResGuildChangePositionErrorMessage;
    messages[343] = ResHeroBingZhongUnlockMessage;
    messages[229] = ResGuildInviteMessage;
    messages[382] = ResChatInitMessage;
    messages[7] = ResKickMessage;
    messages[423] = ResMailGuildReadErrorMessage;
    messages[322] = ResHeroPeiDianErrorMessage;
    messages[290] = ResHeroChaiJieMessage;
    messages[316] = ResHeroRemoveSkillErrorMessage;
    messages[402] = ResGuildAddMemberMessage;
    messages[338] = ResTeamZhengBingErrorMessage;
    messages[417] = ResMailSystemNewMessage;
    messages[355] = ResBuildingUpgradeMessage;
    messages[430] = ResQQApplyConfirmMessage;
    messages[296] = ResSkillResearchErrorMessage;
    messages[353] = ResHeroJueXingErrorMessage;
    messages[415] = ResMailPersonalSendErrorMessage;
    messages[216] = ResGuildCreateMessage;
    messages[59] = ResMailPersonalReadMessage;
    messages[352] = ResHeroJueXingMessage;
    messages[349] = ResHeroBingZhongSelectMessage;
    messages[391] = ResGuildAgreeInviteErrorMessage;
    messages[328] = ResTeamSetMessage;
    messages[404] = ResGuildAddApplicantMessage;
    messages[334] = ResTeamUnSetMessage;
    messages[411] = ResMailSystemReadErrorMessage;
    messages[390] = ResGuildAgreeInviteMessage;
    messages[401] = ResGuildAddInviteeMessage;
    messages[358] = ResHeartBeatMessage;
    messages[384] = ResGuildRefuseApplyMessage;
    messages[398] = ResGuildRemoveInviteeMessage;
    messages[422] = ResMailGuildReadMessage;
    messages[350] = ResHeroBingZhongSelectErrorMessage;
    messages[427] = ResQQCancelMessage;
    messages[181] = ResChatErrorMessage;
    messages[441] = ResUserSetNameErrorMessage;
    messages[312] = ResHeroPeiDianResetMessage;
    messages[347] = ResHeroBingZhongSkillSelectErrorMessage;
    messages[408] = ResMailGuildSendErrorMessage;
    messages[361] = ResGamblingErrorMessage;
    messages[332] = ResTeamZhengBingCancelErrorMessage;
    messages[310] = ResHeroSkillUpgradeErrorMessage;
    messages[293] = ResSkillRemoveMessage;
    messages[309] = ResHeroSkillUpgradeMessage;
    messages[385] = ResGuildRefuseApplyErrorMessage;
    messages[292] = ResSkillAddMessage;
    messages[394] = ResGuildDemiseErrorMessage;
    messages[222] = ResGuildExitMessage;
    messages[225] = ResGuildGetAllMessage;
    messages[60] = ResMailPersonalReadErrorMessage;
    messages[307] = ResHeroZhuanHuaErrorMessage;
    messages[291] = ResHeroChaiJieErrorMessage;
    messages[431] = ResQQApplyConfirmErrorMessage;
    messages[419] = ResMailSystemRcvMessage;
    messages[326] = ResTeamZhengBingLiJiErrorMessage;
    messages[319] = ResHeroResetErrorMessage;
    messages[437] = ResQQInitMessage;
    messages[444] = ResGuildDemiseCancelMessage;
    messages[381] = ResGuanQiaFightErrorMessage;
    messages[315] = ResHeroRemoveSkillMessage;
    messages[337] = ResTeamZhengBingMessage;
    messages[445] = ResGuildDemiseCancelErrorMessage;
    messages[410] = ResMailSystemReadMessage;
    messages[446] = ResUserUpdateGuildApplyTimeMessage;
    messages[300] = ResHeroAddSkillMessage;
    messages[388] = ResGuildAgreeApplyErrorMessage;
    messages[16] = ResUserUpdateAttributeMessage;
    messages[223] = ResGuildExitErrorMessage;
    messages[3] = ResLoginLocalErrorMessage;
    messages[213] = ResGuildChangePositionMessage;
    messages[435] = ResQQRemoveApplicantMessage;
    messages[15] = ResGMMessage;
    messages[407] = ResMailGuildSendMessage;
    messages[297] = ResHeroRemoveMessage;
    messages[238] = ResGuildKickMessage;
    messages[405] = ResGuildBeInvitedMessage;
    messages[420] = ResMailSystemRcvErrorMessage;
  }

  public function message(id:int):Message {
    return messages[id] == null ? null : new messages[id] as Message;
  }
}
}