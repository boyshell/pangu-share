using System;
using System.Collections.Generic;

namespace App
{
    public class MHPool
    {
        public const string VERSION = "22ee485417134d752d86e7d6cc5920ea";
        private static readonly MHPool instance = new MHPool();

        public static MHPool GetInstance()
        {
            return instance;
        }

        private MHPool()
        {
            Register(3, new App.Handler.Login.ResLoginLocalErrorHandler(), typeof(App.Message.Login.ResLoginLocalErrorMessage));
            Register(292, new App.Handler.Skill.ResSkillAddHandler(), typeof(App.Message.Skill.ResSkillAddMessage));
            Register(7, new App.Handler.Util.ResKickHandler(), typeof(App.Message.Util.ResKickMessage));
            Register(322, new App.Handler.Hero.ResHeroPeiDianErrorHandler(), typeof(App.Message.Hero.ResHeroPeiDianErrorMessage));
            Register(306, new App.Handler.Hero.ResHeroZhuanHuaHandler(), typeof(App.Message.Hero.ResHeroZhuanHuaMessage));
            Register(319, new App.Handler.Hero.ResHeroResetErrorHandler(), typeof(App.Message.Hero.ResHeroResetErrorMessage));
            Register(296, new App.Handler.Skill.ResSkillResearchErrorHandler(), typeof(App.Message.Skill.ResSkillResearchErrorMessage));
            Register(312, new App.Handler.Hero.ResHeroPeiDianResetHandler(), typeof(App.Message.Hero.ResHeroPeiDianResetMessage));
            Register(315, new App.Handler.Hero.ResHeroRemoveSkillHandler(), typeof(App.Message.Hero.ResHeroRemoveSkillMessage));
            Register(290, new App.Handler.Hero.ResHeroChaiJieHandler(), typeof(App.Message.Hero.ResHeroChaiJieMessage));
            Register(303, new App.Handler.Hero.ResHeroJinJieHandler(), typeof(App.Message.Hero.ResHeroJinJieMessage));
            Register(2, new App.Handler.Login.ResLoginLocalHandler(), typeof(App.Message.Login.ResLoginLocalMessage));
            Register(297, new App.Handler.Hero.ResHeroRemoveHandler(), typeof(App.Message.Hero.ResHeroRemoveMessage));
            Register(318, new App.Handler.Hero.ResHeroResetHandler(), typeof(App.Message.Hero.ResHeroResetMessage));
            Register(307, new App.Handler.Hero.ResHeroZhuanHuaErrorHandler(), typeof(App.Message.Hero.ResHeroZhuanHuaErrorMessage));
            Register(316, new App.Handler.Hero.ResHeroRemoveSkillErrorHandler(), typeof(App.Message.Hero.ResHeroRemoveSkillErrorMessage));
            Register(300, new App.Handler.Hero.ResHeroAddSkillHandler(), typeof(App.Message.Hero.ResHeroAddSkillMessage));
            Register(293, new App.Handler.Skill.ResSkillRemoveHandler(), typeof(App.Message.Skill.ResSkillRemoveMessage));
            Register(310, new App.Handler.Hero.ResHeroSkillUpgradeErrorHandler(), typeof(App.Message.Hero.ResHeroSkillUpgradeErrorMessage));
            Register(313, new App.Handler.Hero.ResHeroPeiDianResetErrorHandler(), typeof(App.Message.Hero.ResHeroPeiDianResetErrorMessage));
            Register(298, new App.Handler.Hero.ResHeroAddHandler(), typeof(App.Message.Hero.ResHeroAddMessage));
            Register(321, new App.Handler.Hero.ResHeroPeiDianHandler(), typeof(App.Message.Hero.ResHeroPeiDianMessage));
            Register(295, new App.Handler.Skill.ResSkillResearchHandler(), typeof(App.Message.Skill.ResSkillResearchMessage));
            Register(17, new App.Handler.User.ResUserUpdateValueHandler(), typeof(App.Message.User.ResUserUpdateValueMessage));
            Register(6, new App.Handler.Login.ResLoginVersionCheckErrorHandler(), typeof(App.Message.Login.ResLoginVersionCheckErrorMessage));
            Register(15, new App.Handler.Util.ResGMHandler(), typeof(App.Message.Util.ResGMMessage));
            Register(301, new App.Handler.Hero.ResHeroAddSkillErrorHandler(), typeof(App.Message.Hero.ResHeroAddSkillErrorMessage));
            Register(304, new App.Handler.Hero.ResHeroJinJieErrorHandler(), typeof(App.Message.Hero.ResHeroJinJieErrorMessage));
            Register(309, new App.Handler.Hero.ResHeroSkillUpgradeHandler(), typeof(App.Message.Hero.ResHeroSkillUpgradeMessage));
            Register(291, new App.Handler.Hero.ResHeroChaiJieErrorHandler(), typeof(App.Message.Hero.ResHeroChaiJieErrorMessage));
            Register(5, new App.Handler.Login.ResLoginVersionCheckHandler(), typeof(App.Message.Login.ResLoginVersionCheckMessage));
        }

        private Dictionary<int, Net.Handler> handlers = new Dictionary<int, Net.Handler>();
        private Dictionary<int, Type> messages = new Dictionary<int, Type>();

        private void Register(int id, Net.Handler handler, Type msgType)
        {
            handlers.Add(id, handler);
            messages.Add(id, msgType);
        }

        public Net.Message CreateMessage(int id)
        {
            return (Net.Message)Activator.CreateInstance(messages[id]);
        }

        public Net.Handler GetHandler(Net.Message msg)
        {
            return handlers[msg.Id()];
        }
    }
}
