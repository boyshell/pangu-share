using App.Message.Hero;

namespace App.Handler.Hero
{

    public class ResHeroRemoveSkillErrorHandler : Net.Handler {

        // 武将移除技能
        public void Exec(Net.Message msg0)
        {
            ResHeroRemoveSkillErrorMessage msg = (ResHeroRemoveSkillErrorMessage)msg0;
            // todo
        }
    }
}