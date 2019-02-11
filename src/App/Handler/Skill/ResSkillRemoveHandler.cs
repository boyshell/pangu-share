using App.Message.Skill;

namespace App.Handler.Skill
{

    public class ResSkillRemoveHandler : Net.Handler {

        // 移除技能
        public void Exec(Net.Message msg0)
        {
            ResSkillRemoveMessage msg = (ResSkillRemoveMessage)msg0;
            // todo
        }
    }
}