using App.Message.Hero;

namespace App.Handler.Hero
{

    public class ResHeroResetErrorHandler : Net.Handler {

        // 武将重置
        public void Exec(Net.Message msg0)
        {
            ResHeroResetErrorMessage msg = (ResHeroResetErrorMessage)msg0;
            // todo
        }
    }
}