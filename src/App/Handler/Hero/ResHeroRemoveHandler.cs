using App.Message.Hero;

namespace App.Handler.Hero
{

    public class ResHeroRemoveHandler : Net.Handler {

        // 移除武将卡
        public void Exec(Net.Message msg0)
        {
            ResHeroRemoveMessage msg = (ResHeroRemoveMessage)msg0;
            // todo
        }
    }
}