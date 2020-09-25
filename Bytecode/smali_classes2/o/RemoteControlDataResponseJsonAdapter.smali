.class final Lo/RemoteControlDataResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Supported$$Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/Supported$$Parcelable<",
        "Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic extraCallback:Lo/push;

.field private final synthetic onMessageChannelReady:Lo/updateRangeInNode;


# direct methods
.method constructor <init>(Lo/push;Lo/updateRangeInNode;)V
    .locals 0

    iput-object p1, p0, Lo/RemoteControlDataResponseJsonAdapter;->extraCallback:Lo/push;

    iput-object p2, p0, Lo/RemoteControlDataResponseJsonAdapter;->onMessageChannelReady:Lo/updateRangeInNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    iget-object p1, p0, Lo/RemoteControlDataResponseJsonAdapter;->extraCallback:Lo/push;

    invoke-static {p1}, Lo/push;->onNavigationEvent(Lo/push;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lo/RemoteControlDataResponseJsonAdapter;->extraCallback:Lo/push;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/push;->onMessageChannelReady(Lo/push;I)I

    iget-object v0, p0, Lo/RemoteControlDataResponseJsonAdapter;->extraCallback:Lo/push;

    invoke-static {v0}, Lo/push;->onPostMessage(Lo/push;)Lo/updateRangeInNode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/RemoteControlDataResponseJsonAdapter;->onMessageChannelReady:Lo/updateRangeInNode;

    iget-object v1, p0, Lo/RemoteControlDataResponseJsonAdapter;->extraCallback:Lo/push;

    invoke-static {v1}, Lo/push;->onPostMessage(Lo/push;)Lo/updateRangeInNode;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/RemoteControlDataResponseJsonAdapter;->extraCallback:Lo/push;

    invoke-static {v0}, Lo/push;->onPostMessage(Lo/push;)Lo/updateRangeInNode;

    move-result-object v0

    invoke-virtual {v0}, Lo/updateRangeInNode;->onMessageChannelReady()V

    :cond_0
    iget-object v0, p0, Lo/RemoteControlDataResponseJsonAdapter;->extraCallback:Lo/push;

    iget-object v1, p0, Lo/RemoteControlDataResponseJsonAdapter;->onMessageChannelReady:Lo/updateRangeInNode;

    invoke-static {v0, v1}, Lo/push;->ICustomTabsCallback(Lo/push;Lo/updateRangeInNode;)Lo/updateRangeInNode;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
