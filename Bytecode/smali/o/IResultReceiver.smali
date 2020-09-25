.class public abstract Lo/IResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/IResultReceiver$onPostMessage;,
        Lo/IResultReceiver$ICustomTabsCallback;,
        Lo/IResultReceiver$onMessageChannelReady;,
        Lo/IResultReceiver$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintProxy"

    .line 31
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/IResultReceiver;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static onMessageChannelReady(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lo/onDestroy;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/onDestroy;

    .line 77
    iget-object v5, v5, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 1155
    iget-boolean v6, v5, Lo/getErrorCode;->onPostMessage:Z

    or-int/2addr v1, v6

    .line 2121
    iget-boolean v6, v5, Lo/getErrorCode;->ICustomTabsCallback:Z

    or-int/2addr v2, v6

    .line 2171
    iget-boolean v6, v5, Lo/getErrorCode;->ICustomTabsCallback$Stub:Z

    or-int/2addr v3, v6

    .line 3105
    iget-object v5, v5, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    .line 82
    sget-object v6, Lo/addCustomAction;->onNavigationEvent:Lo/addCustomAction;

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    or-int/2addr v4, v5

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-nez v4, :cond_2

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->onNavigationEvent(Landroid/content/Context;ZZZZ)Landroid/content/Intent;

    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 35
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/IResultReceiver;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string p2, "onReceive : %s"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v2, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p2, v2}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 36
    invoke-static {p1}, Lo/send;->ICustomTabsCallback(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
