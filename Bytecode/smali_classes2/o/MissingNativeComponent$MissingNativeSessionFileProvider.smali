.class final Lo/MissingNativeComponent$MissingNativeSessionFileProvider;
.super Lo/writeBeginSession;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/writeBeginSession<",
        "Lo/getSessionFileProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/requestChildFocus$onMessageChannelReady;Lo/doOnboarding;)V
    .locals 2

    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "OnRequestInstallCallback"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lo/writeBeginSession;-><init>(Lo/requestChildFocus$onMessageChannelReady;Lo/addItemDecoration$onPostMessage;Lo/doOnboarding;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0, p1}, Lo/writeBeginSession;->extraCallback(Landroid/os/Bundle;)V

    const-string v0, "confirmation_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    iget-object v0, p0, Lo/writeBeginSession;->onNavigationEvent:Lo/doOnboarding;

    .line 1000
    new-instance v1, Lo/Logger;

    invoke-direct {v1, p1}, Lo/Logger;-><init>(Landroid/app/PendingIntent;)V

    .line 2000
    iget-object p1, v0, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    invoke-virtual {p1, v1}, Lo/Onboarding;->ICustomTabsCallback(Ljava/lang/Object;)Z

    return-void
.end method
