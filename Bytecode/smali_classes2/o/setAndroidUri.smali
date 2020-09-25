.class public final Lo/setAndroidUri;
.super Ljava/lang/Object;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/getPaymentMethod$onPostMessage<",
            "Lo/onPostMessage$extraCallback;",
            ">;",
            "Lo/FragmentType;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/getPaymentMethod$onPostMessage<",
            "Lo/preferLastSpan$onPostMessage;",
            ">;",
            "Lo/getAndroidUri;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/setContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setContent<",
            "Lo/ButtonFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Landroid/content/Context;

.field private onNavigationEvent:Z

.field private onPostMessage:Landroid/content/ContentProviderClient;

.field private final onTransact:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/getPaymentMethod$onPostMessage<",
            "Ljava/lang/Object;",
            ">;",
            "Lo/getThumbnail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setContent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/setContent<",
            "Lo/ButtonFragment;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/setAndroidUri;->onPostMessage:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/setAndroidUri;->onNavigationEvent:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setAndroidUri;->ICustomTabsCallback:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setAndroidUri;->onTransact:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setAndroidUri;->asInterface:Ljava/util/Map;

    iput-object p1, p0, Lo/setAndroidUri;->onMessageChannelReady:Landroid/content/Context;

    iput-object p2, p0, Lo/setAndroidUri;->extraCallback:Lo/setContent;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/location/Location;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/setAndroidUri;->extraCallback:Lo/setContent;

    invoke-interface {v0}, Lo/setContent;->extraCallback()V

    iget-object v0, p0, Lo/setAndroidUri;->extraCallback:Lo/setContent;

    invoke-interface {v0}, Lo/setContent;->onNavigationEvent()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/ButtonFragment;

    iget-object v1, p0, Lo/setAndroidUri;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/ButtonFragment;->onMessageChannelReady(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/setAndroidUri;->extraCallback:Lo/setContent;

    invoke-interface {v0}, Lo/setContent;->extraCallback()V

    iget-object v0, p0, Lo/setAndroidUri;->extraCallback:Lo/setContent;

    invoke-interface {v0}, Lo/setContent;->onNavigationEvent()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/ButtonFragment;

    invoke-interface {v0, p1}, Lo/ButtonFragment;->ICustomTabsCallback(Z)V

    iput-boolean p1, p0, Lo/setAndroidUri;->onNavigationEvent:Z

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/setAndroidUri;->ICustomTabsCallback:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/setAndroidUri;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/FragmentType;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lo/setAndroidUri;->extraCallback:Lo/setContent;

    invoke-interface {v4}, Lo/setContent;->onNavigationEvent()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lo/ButtonFragment;

    invoke-static {v2, v3}, Lo/getFragmentType;->extraCallback(Lo/zzcl;Lo/AudioFragment;)Lo/getFragmentType;

    move-result-object v2

    invoke-interface {v4, v2}, Lo/ButtonFragment;->ICustomTabsCallback(Lo/getFragmentType;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo/setAndroidUri;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Lo/setAndroidUri;->asInterface:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lo/setAndroidUri;->asInterface:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getAndroidUri;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lo/setAndroidUri;->extraCallback:Lo/setContent;

    invoke-interface {v4}, Lo/setContent;->onNavigationEvent()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lo/ButtonFragment;

    invoke-static {v2, v3}, Lo/getFragmentType;->extraCallback(Lo/zzbav$zzb;Lo/AudioFragment;)Lo/getFragmentType;

    move-result-object v2

    invoke-interface {v4, v2}, Lo/ButtonFragment;->ICustomTabsCallback(Lo/getFragmentType;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lo/setAndroidUri;->asInterface:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lo/setAndroidUri;->onTransact:Ljava/util/Map;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lo/setAndroidUri;->onTransact:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getThumbnail;

    if-eqz v2, :cond_4

    iget-object v4, p0, Lo/setAndroidUri;->extraCallback:Lo/setContent;

    invoke-interface {v4}, Lo/setContent;->onNavigationEvent()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lo/ButtonFragment;

    new-instance v5, Lo/getChannelsCustomResponseTimeMessage;

    const/4 v6, 0x2

    invoke-interface {v2}, Lo/zzatl;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v5, v6, v3, v2, v3}, Lo/getChannelsCustomResponseTimeMessage;-><init>(ILo/getChannelResponseTimesFor7Days;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v4, v5}, Lo/ButtonFragment;->onNavigationEvent(Lo/getChannelsCustomResponseTimeMessage;)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lo/setAndroidUri;->onTransact:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public final onPostMessage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lo/setAndroidUri;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/setAndroidUri;->extraCallback(Z)V

    :cond_0
    return-void
.end method
