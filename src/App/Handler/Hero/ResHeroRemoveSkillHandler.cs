using App.Message.Hero;

namespace App.Handler.Hero
{

    public class ResHeroRemoveSkillHandler : Net.Handler {

        // 武将移除技能
        public void Exec(Net.Message msg0)
        {
            ResHeroRemoveSkillMessage msg = (ResHeroRemoveSkillMessage)msg0;
            // todo
        }
    }
}