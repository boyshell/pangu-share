using App.Message.Hero;

namespace App.Handler.Hero
{

    public class ResHeroAddHandler : Net.Handler {

        // 添加武将卡
        public void Exec(Net.Message msg0)
        {
            ResHeroAddMessage msg = (ResHeroAddMessage)msg0;
            // todo
        }
    }
}