.class public final Lo/getHostName;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getHostName$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setDeviceTrackingDisabled<",
        "TT;>;"
    }
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field private final extraCallback:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:I

.field final onNavigationEvent:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/util/Pair<",
            "Lo/waitForCustomerUserId<",
            "TT;>;",
            "Lo/setPreinstallAttribution;",
            ">;>;"
        }
    .end annotation
.end field

.field final onPostMessage:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/setDeviceTrackingDisabled;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/setDeviceTrackingDisabled<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 37
    iput v0, p0, Lo/getHostName;->onMessageChannelReady:I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 38
    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lo/getHostName;->onPostMessage:Ljava/util/concurrent/Executor;

    if-eqz p2, :cond_0

    .line 39
    check-cast p2, Lo/setDeviceTrackingDisabled;

    iput-object p2, p0, Lo/getHostName;->extraCallback:Lo/setDeviceTrackingDisabled;

    .line 40
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lo/getHostName;->onNavigationEvent:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lo/getHostName;->ICustomTabsCallback:I

    return-void

    .line 2215
    :cond_0
    throw v0

    .line 1215
    :cond_1
    throw v0
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "TT;>;",
            "Lo/setPreinstallAttribution;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v0

    const-string v1, "ThrottlingProducer"

    const/4 v2, 0x0

    .line 67
    invoke-interface {v0, p2, v1, v2}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    iget-object v0, p0, Lo/getHostName;->extraCallback:Lo/setDeviceTrackingDisabled;

    new-instance v1, Lo/getHostName$ICustomTabsCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lo/getHostName$ICustomTabsCallback;-><init>(Lo/getHostName;Lo/waitForCustomerUserId;B)V

    invoke-interface {v0, v1, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void
.end method

.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "TT;>;",
            "Lo/setPreinstallAttribution;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v0

    const-string v1, "ThrottlingProducer"

    .line 47
    invoke-interface {v0, p2, v1}, Lo/unregisterConversionListener;->onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V

    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget v0, p0, Lo/getHostName;->ICustomTabsCallback:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lo/getHostName;->onNavigationEvent:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_0
    iget v0, p0, Lo/getHostName;->ICustomTabsCallback:I

    add-int/2addr v0, v2

    iput v0, p0, Lo/getHostName;->ICustomTabsCallback:I

    const/4 v2, 0x0

    .line 58
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 61
    invoke-virtual {p0, p1, p2}, Lo/getHostName;->ICustomTabsCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 58
    monitor-exit p0

    throw p1
.end method
