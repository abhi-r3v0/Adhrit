.class public final Lo/getExtraLayoutSpace$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getExtraLayoutSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/LeaderBoardInnerAdapter$Companion;",
        "",
        "()V",
        "LEADERBOARD_INNER",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final extraCallback:I

.field private final onPostMessage:Lo/resolveIsInfinite$onPostMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/resolveIsInfinite$onPostMessage;I)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getExtraLayoutSpace$onPostMessage;->onPostMessage:Lo/resolveIsInfinite$onPostMessage;

    iput p2, p0, Lo/getExtraLayoutSpace$onPostMessage;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/Object;
    .locals 10

    .line 2000
    iget-object v0, p0, Lo/getExtraLayoutSpace$onPostMessage;->onPostMessage:Lo/resolveIsInfinite$onPostMessage;

    iget v1, p0, Lo/getExtraLayoutSpace$onPostMessage;->extraCallback:I

    .line 3000
    invoke-virtual {v0, v1}, Lo/resolveIsInfinite$onPostMessage;->onPostMessage(I)Lo/computeScrollRange$extraCallback;

    move-result-object v2

    iget-object v3, v2, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget v3, v3, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x5

    if-eq v3, v7, :cond_1

    if-eq v3, v5, :cond_1

    const/4 v8, 0x4

    if-ne v3, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_5

    iget-object v1, v0, Lo/resolveIsInfinite$onPostMessage;->ICustomTabsCallback:Lo/onVerificationFailed;

    iget-object v3, v2, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v4, v3, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget v6, v2, Lo/computeScrollRange$extraCallback;->onMessageChannelReady:I

    iget-wide v8, v3, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onPostMessage:J

    .line 5000
    invoke-virtual {v1, v4, v6, v8, v9}, Lo/onVerificationFailed;->onPostMessage(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v4, v6, v8, v9}, Lo/onVerificationFailed;->onPostMessage(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lo/onVerificationFailed;->onMessageChannelReady(Ljava/io/File;)Z

    .line 3000
    :cond_2
    iget-object v1, v2, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget v2, v1, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    if-eq v2, v7, :cond_3

    if-ne v2, v5, :cond_4

    :cond_3
    iget-object v0, v0, Lo/resolveIsInfinite$onPostMessage;->ICustomTabsCallback:Lo/onVerificationFailed;

    iget-object v1, v1, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    .line 7000
    new-instance v2, Ljava/io/File;

    .line 8000
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "assetpacks"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7000
    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6000
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9000
    new-instance v2, Ljava/io/File;

    .line 10000
    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9000
    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6000
    invoke-static {v2}, Lo/onVerificationFailed;->onMessageChannelReady(Ljava/io/File;)Z

    :cond_4
    const/4 v0, 0x0

    return-object v0

    .line 3000
    :cond_5
    new-instance v0, Lo/getFactory;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Could not safely delete session %d because it is not in a terminal state."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
