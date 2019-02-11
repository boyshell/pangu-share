using App.Message.Hero;

namespace App.Handler.Hero
{

    public class ResHeroAddSkillErrorHandler : Net.Handler {

        // 装配技能
        public void Exec(Net.Message msg0)
        {
            ResHeroAddSkillErrorMessage msg = (ResHeroAddSkillErrorMessage)msg0;
            // todo
        }
    }
}