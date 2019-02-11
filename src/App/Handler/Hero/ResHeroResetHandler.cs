using App.Message.Hero;

namespace App.Handler.Hero
{

    public class ResHeroResetHandler : Net.Handler {

        // 武将重置
        public void Exec(Net.Message msg0)
        {
            ResHeroResetMessage msg = (ResHeroResetMessage)msg0;
            // todo
        }
    }
}