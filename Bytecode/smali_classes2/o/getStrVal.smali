.class final Lo/getStrVal;
.super Lo/getCsatResponse$ICustomTabsCallback;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/String;

.field private final synthetic asInterface:Lo/getCsatResponse;

.field private final synthetic extraCallback:Ljava/lang/String;

.field private final synthetic onPostMessage:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lo/getCsatResponse;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getStrVal;->asInterface:Lo/getCsatResponse;

    iput-object p2, p0, Lo/getStrVal;->extraCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/getStrVal;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p4, p0, Lo/getStrVal;->onPostMessage:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lo/getCsatResponse$ICustomTabsCallback;-><init>(Lo/getCsatResponse;)V

    return-void
.end method


# virtual methods
.method final onMessageChannelReady()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lo/getStrVal;->asInterface:Lo/getCsatResponse;

    invoke-static {v0}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v0

    iget-object v1, p0, Lo/getStrVal;->extraCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/getStrVal;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v3, p0, Lo/getStrVal;->onPostMessage:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lo/setControllerHideOnTouch;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
