.class public Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/ForceStopRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastReceiver"
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ForceStopRunnable$Rcvr"

    .line 233
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 240
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 241
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 242
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p2

    sget-object v0, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "Rescheduling alarm that keeps track of force-stops."

    invoke-virtual {p2, v0, v1}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {p1}, Landroidx/work/impl/utils/ForceStopRunnable;->onPostMessage(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
