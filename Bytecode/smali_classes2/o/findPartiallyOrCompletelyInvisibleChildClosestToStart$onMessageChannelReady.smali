.class public final Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/LifestyleCollectionViewModel$Companion;",
        "",
        "()V",
        "MAX_ITEM_PER_CATEGORY",
        "",
        "TAG",
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
.field private final ICustomTabsCallback:Lo/onVerificationFailed;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/onVerificationFailed;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart$onMessageChannelReady;->ICustomTabsCallback:Lo/onVerificationFailed;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 2000
    iget-object v0, p0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart$onMessageChannelReady;->ICustomTabsCallback:Lo/onVerificationFailed;

    .line 3000
    invoke-virtual {v0}, Lo/onVerificationFailed;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {v5}, Lo/onVerificationFailed;->ICustomTabsCallback(Ljava/io/File;)V

    invoke-static {v5}, Lo/onVerificationFailed;->onPostMessage(Ljava/io/File;)J

    move-result-wide v6

    iget-object v8, v0, Lo/onVerificationFailed;->onMessageChannelReady:Lo/lambda$of$1;

    invoke-virtual {v8}, Lo/lambda$of$1;->extraCallback()I

    move-result v8

    int-to-long v8, v8

    cmp-long v10, v8, v6

    if-eqz v10, :cond_1

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/io/File;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "stale.tmp"

    invoke-direct {v8, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v6, Lo/onVerificationFailed;->ICustomTabsCallback:Lo/addItemDecoration$onPostMessage;

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "Could not write staleness marker."

    invoke-virtual {v6, v8, v7}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    invoke-static {v8}, Lo/onVerificationFailed;->ICustomTabsCallback(Ljava/io/File;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
