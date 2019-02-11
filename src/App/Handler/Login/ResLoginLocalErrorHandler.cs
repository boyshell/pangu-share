using App.Message.Login;

namespace App.Handler.Login
{

    public class ResLoginLocalErrorHandler : Net.Handler {

        // 登录(本地)
        public void Exec(Net.Message msg0)
        {
            ResLoginLocalErrorMessage msg = (ResLoginLocalErrorMessage)msg0;
            // todo
        }
    }
}