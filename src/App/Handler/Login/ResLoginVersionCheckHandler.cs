using App.Message.Login;

namespace App.Handler.Login
{

    public class ResLoginVersionCheckHandler : Net.Handler {

        // 版本验证
        public void Exec(Net.Message msg0)
        {
            ResLoginVersionCheckMessage msg = (ResLoginVersionCheckMessage)msg0;
            // todo
        }
    }
}