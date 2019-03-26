using System;
using System.Collections.Generic;

namespace App
{
    public class MHPool
    {
        public const string VERSION = "1a75ce4bd0cf16eb5053a39b7e3776fb";
        private static readonly MHPool instance = new MHPool();

        public static MHPool GetInstance()
        {
            return instance;
        }

        private MHPool()
        {
            Register(328, new App.PacketHandler.Team.ResTeamSetPacketHandler(), typeof(App.PacketMessage.Team.ResTeamSetPacketMessage));
            Register(312, new App.PacketHandler.Hero.ResHeroPeiDianResetPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroPeiDianResetPacketMessage));
            Register(337, new App.PacketHandler.Team.ResTeamZhengBingPacketHandler(), typeof(App.PacketMessage.Team.ResTeamZhengBingPacketMessage));
            Register(370, new App.PacketHandler.Land.ResLandTunTianErrorPacketHandler(), typeof(App.PacketMessage.Land.ResLandTunTianErrorPacketMessage));
            Register(17, new App.PacketHandler.User.ResUserUpdateValuePacketHandler(), typeof(App.PacketMessage.User.ResUserUpdateValuePacketMessage));
            Register(295, new App.PacketHandler.Skill.ResSkillResearchPacketHandler(), typeof(App.PacketMessage.Skill.ResSkillResearchPacketMessage));
            Register(293, new App.PacketHandler.Skill.ResSkillRemovePacketHandler(), typeof(App.PacketMessage.Skill.ResSkillRemovePacketMessage));
            Register(349, new App.PacketHandler.Hero.ResHeroBingZhongSelectPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroBingZhongSelectPacketMessage));
            Register(340, new App.PacketHandler.Hero.ResHeroBingZhongJinJiePacketHandler(), typeof(App.PacketMessage.Hero.ResHeroBingZhongJinJiePacketMessage));
            Register(350, new App.PacketHandler.Hero.ResHeroBingZhongSelectErrorPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroBingZhongSelectErrorPacketMessage));
            Register(15, new App.PacketHandler.Util.ResGMPacketHandler(), typeof(App.PacketMessage.Util.ResGMPacketMessage));
            Register(3, new App.PacketHandler.Login.ResLoginLocalErrorPacketHandler(), typeof(App.PacketMessage.Login.ResLoginLocalErrorPacketMessage));
            Register(300, new App.PacketHandler.Hero.ResHeroAddSkillPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroAddSkillPacketMessage));
            Register(325, new App.PacketHandler.Team.ResTeamZhengBingLiJiPacketHandler(), typeof(App.PacketMessage.Team.ResTeamZhengBingLiJiPacketMessage));
            Register(309, new App.PacketHandler.Hero.ResHeroSkillUpgradePacketHandler(), typeof(App.PacketMessage.Hero.ResHeroSkillUpgradePacketMessage));
            Register(341, new App.PacketHandler.Hero.ResHeroBingZhongJinJieErrorPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroBingZhongJinJieErrorPacketMessage));
            Register(292, new App.PacketHandler.Skill.ResSkillAddPacketHandler(), typeof(App.PacketMessage.Skill.ResSkillAddPacketMessage));
            Register(306, new App.PacketHandler.Hero.ResHeroZhuanHuaPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroZhuanHuaPacketMessage));
            Register(326, new App.PacketHandler.Team.ResTeamZhengBingLiJiErrorPacketHandler(), typeof(App.PacketMessage.Team.ResTeamZhengBingLiJiErrorPacketMessage));
            Register(321, new App.PacketHandler.Hero.ResHeroPeiDianPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroPeiDianPacketMessage));
            Register(6, new App.PacketHandler.Login.ResLoginVersionCheckErrorPacketHandler(), typeof(App.PacketMessage.Login.ResLoginVersionCheckErrorPacketMessage));
            Register(301, new App.PacketHandler.Hero.ResHeroAddSkillErrorPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroAddSkillErrorPacketMessage));
            Register(346, new App.PacketHandler.Hero.ResHeroBingZhongSkillSelectPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroBingZhongSkillSelectPacketMessage));
            Register(296, new App.PacketHandler.Skill.ResSkillResearchErrorPacketHandler(), typeof(App.PacketMessage.Skill.ResSkillResearchErrorPacketMessage));
            Register(364, new App.PacketHandler.Land.ResLandZhanLingErrorPacketHandler(), typeof(App.PacketMessage.Land.ResLandZhanLingErrorPacketMessage));
            Register(297, new App.PacketHandler.Hero.ResHeroRemovePacketHandler(), typeof(App.PacketMessage.Hero.ResHeroRemovePacketMessage));
            Register(344, new App.PacketHandler.Hero.ResHeroBingZhongUnlockErrorPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroBingZhongUnlockErrorPacketMessage));
            Register(5, new App.PacketHandler.Login.ResLoginVersionCheckPacketHandler(), typeof(App.PacketMessage.Login.ResLoginVersionCheckPacketMessage));
            Register(372, new App.PacketHandler.Land.ResLandLianBingPacketHandler(), typeof(App.PacketMessage.Land.ResLandLianBingPacketMessage));
            Register(366, new App.PacketHandler.Land.ResLandFangQiPacketHandler(), typeof(App.PacketMessage.Land.ResLandFangQiPacketMessage));
            Register(352, new App.PacketHandler.Hero.ResHeroJueXingPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroJueXingPacketMessage));
            Register(343, new App.PacketHandler.Hero.ResHeroBingZhongUnlockPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroBingZhongUnlockPacketMessage));
            Register(291, new App.PacketHandler.Hero.ResHeroChaiJieErrorPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroChaiJieErrorPacketMessage));
            Register(375, new App.PacketHandler.Land.ResLandSaoDangPacketHandler(), typeof(App.PacketMessage.Land.ResLandSaoDangPacketMessage));
            Register(376, new App.PacketHandler.Land.ResLandSaoDangErrorPacketHandler(), typeof(App.PacketMessage.Land.ResLandSaoDangErrorPacketMessage));
            Register(355, new App.PacketHandler.Building.ResBuildingUpgradePacketHandler(), typeof(App.PacketMessage.Building.ResBuildingUpgradePacketMessage));
            Register(373, new App.PacketHandler.Land.ResLandLianBingErrorPacketHandler(), typeof(App.PacketMessage.Land.ResLandLianBingErrorPacketMessage));
            Register(313, new App.PacketHandler.Hero.ResHeroPeiDianResetErrorPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroPeiDianResetErrorPacketMessage));
            Register(329, new App.PacketHandler.Team.ResTeamSetErrorPacketHandler(), typeof(App.PacketMessage.Team.ResTeamSetErrorPacketMessage));
            Register(303, new App.PacketHandler.Hero.ResHeroJinJiePacketHandler(), typeof(App.PacketMessage.Hero.ResHeroJinJiePacketMessage));
            Register(319, new App.PacketHandler.Hero.ResHeroResetErrorPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroResetErrorPacketMessage));
            Register(369, new App.PacketHandler.Land.ResLandTunTianPacketHandler(), typeof(App.PacketMessage.Land.ResLandTunTianPacketMessage));
            Register(318, new App.PacketHandler.Hero.ResHeroResetPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroResetPacketMessage));
            Register(316, new App.PacketHandler.Hero.ResHeroRemoveSkillErrorPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroRemoveSkillErrorPacketMessage));
            Register(310, new App.PacketHandler.Hero.ResHeroSkillUpgradeErrorPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroSkillUpgradeErrorPacketMessage));
            Register(322, new App.PacketHandler.Hero.ResHeroPeiDianErrorPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroPeiDianErrorPacketMessage));
            Register(290, new App.PacketHandler.Hero.ResHeroChaiJiePacketHandler(), typeof(App.PacketMessage.Hero.ResHeroChaiJiePacketMessage));
            Register(7, new App.PacketHandler.Util.ResKickPacketHandler(), typeof(App.PacketMessage.Util.ResKickPacketMessage));
            Register(331, new App.PacketHandler.Team.ResTeamZhengBingCancelPacketHandler(), typeof(App.PacketMessage.Team.ResTeamZhengBingCancelPacketMessage));
            Register(332, new App.PacketHandler.Team.ResTeamZhengBingCancelErrorPacketHandler(), typeof(App.PacketMessage.Team.ResTeamZhengBingCancelErrorPacketMessage));
            Register(356, new App.PacketHandler.Building.ResBuildingUpgradeErrorPacketHandler(), typeof(App.PacketMessage.Building.ResBuildingUpgradeErrorPacketMessage));
            Register(361, new App.PacketHandler.Gambling.ResGamblingErrorPacketHandler(), typeof(App.PacketMessage.Gambling.ResGamblingErrorPacketMessage));
            Register(335, new App.PacketHandler.Team.ResTeamUnSetErrorPacketHandler(), typeof(App.PacketMessage.Team.ResTeamUnSetErrorPacketMessage));
            Register(304, new App.PacketHandler.Hero.ResHeroJinJieErrorPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroJinJieErrorPacketMessage));
            Register(298, new App.PacketHandler.Hero.ResHeroAddPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroAddPacketMessage));
            Register(338, new App.PacketHandler.Team.ResTeamZhengBingErrorPacketHandler(), typeof(App.PacketMessage.Team.ResTeamZhengBingErrorPacketMessage));
            Register(347, new App.PacketHandler.Hero.ResHeroBingZhongSkillSelectErrorPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroBingZhongSkillSelectErrorPacketMessage));
            Register(358, new App.PacketHandler.Util.ResHeartBeatPacketHandler(), typeof(App.PacketMessage.Util.ResHeartBeatPacketMessage));
            Register(2, new App.PacketHandler.Login.ResLoginLocalPacketHandler(), typeof(App.PacketMessage.Login.ResLoginLocalPacketMessage));
            Register(353, new App.PacketHandler.Hero.ResHeroJueXingErrorPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroJueXingErrorPacketMessage));
            Register(307, new App.PacketHandler.Hero.ResHeroZhuanHuaErrorPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroZhuanHuaErrorPacketMessage));
            Register(315, new App.PacketHandler.Hero.ResHeroRemoveSkillPacketHandler(), typeof(App.PacketMessage.Hero.ResHeroRemoveSkillPacketMessage));
            Register(360, new App.PacketHandler.Gambling.ResGamblingPacketHandler(), typeof(App.PacketMessage.Gambling.ResGamblingPacketMessage));
            Register(363, new App.PacketHandler.Land.ResLandZhanLingPacketHandler(), typeof(App.PacketMessage.Land.ResLandZhanLingPacketMessage));
            Register(367, new App.PacketHandler.Land.ResLandFangQiErrorPacketHandler(), typeof(App.PacketMessage.Land.ResLandFangQiErrorPacketMessage));
            Register(334, new App.PacketHandler.Team.ResTeamUnSetPacketHandler(), typeof(App.PacketMessage.Team.ResTeamUnSetPacketMessage));
        }

        private Dictionary<int, Network.PacketHandler> handlers = new Dictionary<int, Network.PacketHandler>();
        private Dictionary<int, Type> messages = new Dictionary<int, Type>();

        private void Register(int id, Network.PacketHandler PacketHandler, Type msgType)
        {
            handlers.Add(id, PacketHandler);
            messages.Add(id, msgType);
        }

        public Type GetMessageType(int id)
        {
            return messages[id];
        }

        public Network.PacketHandler GetHandler(int id)
        {
            return handlers[id];
        }
    }
}
