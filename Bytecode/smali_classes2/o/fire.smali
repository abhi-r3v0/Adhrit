.class final Lo/fire;
.super Ljava/lang/Object;

# interfaces
.implements Lo/SuggestedAmountJsonAdapter;


# instance fields
.field private final synthetic onNavigationEvent:Lo/push;

.field private final synthetic onPostMessage:Lo/updateRangeInNode;


# direct methods
.method constructor <init>(Lo/push;Lo/updateRangeInNode;)V
    .locals 0

    iput-object p1, p0, Lo/fire;->onNavigationEvent:Lo/push;

    iput-object p2, p0, Lo/fire;->onPostMessage:Lo/updateRangeInNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    iget-object v0, p0, Lo/fire;->onNavigationEvent:Lo/push;

    invoke-static {v0}, Lo/push;->onNavigationEvent(Lo/push;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/fire;->onNavigationEvent:Lo/push;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lo/push;->onMessageChannelReady(Lo/push;I)I

    const-string v1, "Failed loading new engine. Marking new engine destroyable."

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    iget-object v1, p0, Lo/fire;->onPostMessage:Lo/updateRangeInNode;

    invoke-virtual {v1}, Lo/updateRangeInNode;->onMessageChannelReady()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
