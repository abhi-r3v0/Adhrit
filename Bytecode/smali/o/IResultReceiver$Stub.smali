.class public final Lo/IResultReceiver$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/picasso/Picasso$ICustomTabsCallback;


# static fields
.field private static final onMessageChannelReady:Ljava/lang/String;


# instance fields
.field private final onPostMessage:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemAlarmScheduler"

    .line 36
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/IResultReceiver$Stub;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/IResultReceiver$Stub;->onPostMessage:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lo/IResultReceiver$Stub;->onPostMessage:Landroid/content/Context;

    invoke-static {v0, p1}, Lo/send;->extraCallback(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lo/IResultReceiver$Stub;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final varargs onMessageChannelReady([Lo/onDestroy;)V
    .locals 8

    .line 46
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 1067
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v4

    sget-object v5, Lo/IResultReceiver$Stub;->onMessageChannelReady:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v3, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    aput-object v7, v6, v1

    const-string v7, "Scheduling work with workSpecId %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6, v7}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 1068
    iget-object v4, p0, Lo/IResultReceiver$Stub;->onPostMessage:Landroid/content/Context;

    iget-object v3, v3, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-static {v4, v3}, Lo/send;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1069
    iget-object v4, p0, Lo/IResultReceiver$Stub;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
