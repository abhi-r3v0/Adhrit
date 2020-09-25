.class final Lo/zza$extraCallback;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/zza;


# direct methods
.method constructor <init>(Lo/zza;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lo/zza$extraCallback;->onNavigationEvent:Lo/zza;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 186
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p1

    sget-object p2, Lo/zza;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Throwable;

    const-string v1, "Network broadcast received"

    invoke-virtual {p1, p2, v1, v0}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 187
    iget-object p1, p0, Lo/zza$extraCallback;->onNavigationEvent:Lo/zza;

    invoke-virtual {p1}, Lo/zza;->onMessageChannelReady()Lo/onCreate;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/ImmLeaksCleaner;->onPostMessage(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
