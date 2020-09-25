.class final Lo/fN;
.super Lo/getCsatResponse$ICustomTabsCallback;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setChipIconTintResource;

.field private final synthetic onPostMessage:Lo/getCsatResponse;


# direct methods
.method constructor <init>(Lo/getCsatResponse;Lo/setChipIconTintResource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/fN;->onPostMessage:Lo/getCsatResponse;

    iput-object p2, p0, Lo/fN;->ICustomTabsCallback:Lo/setChipIconTintResource;

    invoke-direct {p0, p1}, Lo/getCsatResponse$ICustomTabsCallback;-><init>(Lo/getCsatResponse;)V

    return-void
.end method


# virtual methods
.method final onMessageChannelReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lo/fN;->onPostMessage:Lo/getCsatResponse;

    invoke-static {v0}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v0

    new-instance v1, Lo/getCsatResponse$onNavigationEvent;

    iget-object v2, p0, Lo/fN;->ICustomTabsCallback:Lo/setChipIconTintResource;

    invoke-direct {v1, v2}, Lo/getCsatResponse$onNavigationEvent;-><init>(Lo/setChipIconTintResource;)V

    invoke-interface {v0, v1}, Lo/setControllerHideOnTouch;->setEventInterceptor(Lo/getConversations;)V

    return-void
.end method
