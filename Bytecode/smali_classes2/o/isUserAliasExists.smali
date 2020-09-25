.class final Lo/isUserAliasExists;
.super Lo/getCsatResponse$ICustomTabsCallback;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/String;

.field private final synthetic onPostMessage:Lo/getCsatResponse;


# direct methods
.method constructor <init>(Lo/getCsatResponse;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/isUserAliasExists;->onPostMessage:Lo/getCsatResponse;

    iput-object p2, p0, Lo/isUserAliasExists;->ICustomTabsCallback:Ljava/lang/String;

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
    iget-object v0, p0, Lo/isUserAliasExists;->onPostMessage:Lo/getCsatResponse;

    invoke-static {v0}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v0

    iget-object v1, p0, Lo/isUserAliasExists;->ICustomTabsCallback:Ljava/lang/String;

    iget-wide v2, p0, Lo/isUserAliasExists;->onMessageChannelReady:J

    invoke-interface {v0, v1, v2, v3}, Lo/setControllerHideOnTouch;->beginAdUnitExposure(Ljava/lang/String;J)V

    return-void
.end method
