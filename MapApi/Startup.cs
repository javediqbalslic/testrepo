using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MapApi.Startup))]
namespace MapApi
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
