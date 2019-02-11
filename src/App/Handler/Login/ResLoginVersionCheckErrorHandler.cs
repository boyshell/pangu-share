using App.Message.Login;

namespace App.Handler.Login
{

    public class ResLoginVersionCheckErrorHandler : Net.Handler {

        // 版本验证
        public void Exec(Net.Message msg0)
        {
            ResLoginVersionCheckErrorMessage msg = (ResLoginVersionCheckErrorMessage)msg0;
            // todo
        }
    }
}