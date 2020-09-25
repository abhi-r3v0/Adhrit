.class public final Lo/hasFlexibleChildInBothOrientations$onMessageChannelReady;
.super Landroid/content/BroadcastReceiver;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hasFlexibleChildInBothOrientations;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLo/onDisconnectSetValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/onDisconnectSetValue;

.field private final onNavigationEvent:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lo/onDisconnectSetValue;)V
    .locals 3

    .line 65
    iput-object p1, p0, Lo/hasFlexibleChildInBothOrientations$onMessageChannelReady;->extraCallback:Lo/onDisconnectSetValue;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 66
    move-object p1, p0

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lo/hasFlexibleChildInBothOrientations$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Runnable;

    .line 71
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lo/hasFlexibleChildInBothOrientations$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 74
    iget-object p2, p0, Lo/hasFlexibleChildInBothOrientations$onMessageChannelReady;->extraCallback:Lo/onDisconnectSetValue;

    new-instance v0, Lo/addWrite;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SMS_DELIVERED"

    invoke-direct {v0, v2, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 75
    move-object p2, p0

    check-cast p2, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    :cond_0
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lo/hasFlexibleChildInBothOrientations$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final run()V
    .locals 4

    .line 1067
    sget-object v0, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 1122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1067
    :cond_0
    move-object v1, p0

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1068
    iget-object v0, p0, Lo/hasFlexibleChildInBothOrientations$onMessageChannelReady;->extraCallback:Lo/onDisconnectSetValue;

    new-instance v1, Lo/addWrite;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SMS_DELIVERED"

    invoke-direct {v1, v3, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
