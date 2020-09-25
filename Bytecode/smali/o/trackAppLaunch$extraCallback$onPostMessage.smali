.class final Lo/trackAppLaunch$extraCallback$onPostMessage;
.super Lo/setAndroidIdData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/trackAppLaunch$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAndroidIdData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/trackAppLaunch$extraCallback;


# direct methods
.method private constructor <init>(Lo/trackAppLaunch$extraCallback;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lo/trackAppLaunch$extraCallback$onPostMessage;->extraCallback:Lo/trackAppLaunch$extraCallback;

    invoke-direct {p0}, Lo/setAndroidIdData;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/trackAppLaunch$extraCallback;B)V
    .locals 0

    .line 562
    invoke-direct {p0, p1}, Lo/trackAppLaunch$extraCallback$onPostMessage;-><init>(Lo/trackAppLaunch$extraCallback;)V

    return-void
.end method


# virtual methods
.method protected final onMessageChannelReady(F)V
    .locals 3

    .line 608
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 611
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback$onPostMessage;->extraCallback:Lo/trackAppLaunch$extraCallback;

    .line 1533
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1535
    :try_start_1
    iget-object v1, v0, Lo/trackAppLaunch$extraCallback;->onNavigationEvent:Lo/trackAppLaunch$extraCallback$onPostMessage;

    if-eq v1, p0, :cond_0

    .line 1536
    monitor-exit v0

    goto :goto_1

    .line 1539
    :cond_0
    iput p1, v0, Lo/trackAppLaunch$extraCallback;->ICustomTabsCallback:F

    .line 1540
    iget-object v1, v0, Lo/trackAppLaunch$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1541
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1543
    :goto_0
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1544
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1545
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1546
    :try_start_3
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lo/waitForCustomerUserId;

    invoke-interface {v2, p1}, Lo/waitForCustomerUserId;->extraCallback(F)V

    .line 1547
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v0

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 613
    :cond_1
    :goto_1
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_1
    move-exception p1

    .line 1541
    :try_start_5
    monitor-exit v0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 613
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 614
    throw p1
.end method

.method protected final synthetic onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 1

    .line 562
    check-cast p1, Ljava/io/Closeable;

    .line 1566
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1569
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback$onPostMessage;->extraCallback:Lo/trackAppLaunch$extraCallback;

    invoke-virtual {v0, p0, p1, p2}, Lo/trackAppLaunch$extraCallback;->ICustomTabsCallback(Lo/trackAppLaunch$extraCallback$onPostMessage;Ljava/io/Closeable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1571
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1572
    throw p1
.end method

.method protected final onMessageChannelReady(Ljava/lang/Throwable;)V
    .locals 1

    .line 580
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 583
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback$onPostMessage;->extraCallback:Lo/trackAppLaunch$extraCallback;

    invoke-virtual {v0, p0, p1}, Lo/trackAppLaunch$extraCallback;->onNavigationEvent(Lo/trackAppLaunch$extraCallback$onPostMessage;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 586
    throw p1
.end method

.method protected final onNavigationEvent()V
    .locals 1

    .line 594
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 597
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback$onPostMessage;->extraCallback:Lo/trackAppLaunch$extraCallback;

    invoke-virtual {v0, p0}, Lo/trackAppLaunch$extraCallback;->extraCallback(Lo/trackAppLaunch$extraCallback$onPostMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 600
    throw v0
.end method
