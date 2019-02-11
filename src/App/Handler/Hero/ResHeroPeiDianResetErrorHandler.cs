using App.Message.Hero;

namespace App.Handler.Hero
{

    public class ResHeroPeiDianResetErrorHandler : Net.Handler {

        // 重置武将配点
        public void Exec(Net.Message msg0)
        {
            ResHeroPeiDianResetErrorMessage msg = (ResHeroPeiDianResetErrorMessage)msg0;
            // todo
        }
    }
}