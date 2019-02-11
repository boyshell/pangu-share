using App.Message.Hero;

namespace App.Handler.Hero
{

    public class ResHeroSkillUpgradeErrorHandler : Net.Handler {

        // 武将技能升级
        public void Exec(Net.Message msg0)
        {
            ResHeroSkillUpgradeErrorMessage msg = (ResHeroSkillUpgradeErrorMessage)msg0;
            // todo
        }
    }
}