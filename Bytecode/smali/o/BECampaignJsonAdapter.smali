.class final Lo/BECampaignJsonAdapter;
.super Lo/BECampaign;
.source ""


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private final extraCallback:Landroid/os/Handler;

.field private final onMessageChannelReady:Ljava/lang/Runnable;

.field private onNavigationEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/BECampaign$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/BECampaign$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lo/BECampaign;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/BECampaignJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    .line 28
    new-instance v0, Lo/BECampaignJsonAdapter$3;

    invoke-direct {v0, p0}, Lo/BECampaignJsonAdapter$3;-><init>(Lo/BECampaignJsonAdapter;)V

    iput-object v0, p0, Lo/BECampaignJsonAdapter;->onMessageChannelReady:Ljava/lang/Runnable;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/BECampaignJsonAdapter;->onPostMessage:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/BECampaignJsonAdapter;->onNavigationEvent:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/BECampaignJsonAdapter;->extraCallback:Landroid/os/Handler;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/BECampaignJsonAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/BECampaignJsonAdapter;->onNavigationEvent:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/BECampaignJsonAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/BECampaignJsonAdapter;->onPostMessage:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/BECampaignJsonAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iput-object p1, p0, Lo/BECampaignJsonAdapter;->onNavigationEvent:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic onMessageChannelReady(Lo/BECampaignJsonAdapter;)Ljava/lang/Object;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/BECampaignJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/BECampaignJsonAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iput-object p1, p0, Lo/BECampaignJsonAdapter;->onPostMessage:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public final extraCallback(Lo/BECampaign$ICustomTabsCallback;)V
    .locals 4

    .line 1058
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 58
    invoke-interface {p1}, Lo/BECampaign$ICustomTabsCallback;->ICustomTabsCallback()V

    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lo/BECampaignJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lo/BECampaignJsonAdapter;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    monitor-exit v0

    return-void

    .line 67
    :cond_2
    iget-object v1, p0, Lo/BECampaignJsonAdapter;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object p1, p0, Lo/BECampaignJsonAdapter;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-ne p1, v3, :cond_3

    const/4 v2, 0x1

    .line 69
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 74
    iget-object p1, p0, Lo/BECampaignJsonAdapter;->extraCallback:Landroid/os/Handler;

    iget-object v0, p0, Lo/BECampaignJsonAdapter;->onMessageChannelReady:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 69
    monitor-exit v0

    throw p1
.end method

.method public final onNavigationEvent(Lo/BECampaign$ICustomTabsCallback;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lo/BECampaignJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lo/BECampaignJsonAdapter;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
