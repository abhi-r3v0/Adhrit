.class public final Lo/cacheTrackedQuery$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cacheTrackedQuery;->onNavigationEvent(JLo/addMerge;)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "kotlinx/coroutines/RunnableKt$Runnable$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/cacheTrackedQuery;

.field private synthetic onMessageChannelReady:Lo/addMerge;


# direct methods
.method public constructor <init>(Lo/cacheTrackedQuery;Lo/addMerge;)V
    .locals 0

    iput-object p1, p0, Lo/cacheTrackedQuery$onMessageChannelReady;->ICustomTabsCallback:Lo/cacheTrackedQuery;

    iput-object p2, p0, Lo/cacheTrackedQuery$onMessageChannelReady;->onMessageChannelReady:Lo/addMerge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 19
    iget-object v0, p0, Lo/cacheTrackedQuery$onMessageChannelReady;->onMessageChannelReady:Lo/addMerge;

    iget-object v1, p0, Lo/cacheTrackedQuery$onMessageChannelReady;->ICustomTabsCallback:Lo/cacheTrackedQuery;

    sget-object v2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-interface {v0, v1, v2}, Lo/addMerge;->onNavigationEvent(Lo/zombifyForRemove;Ljava/lang/Object;)V

    return-void
.end method
