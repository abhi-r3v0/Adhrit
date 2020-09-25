.class public final Lo/foldKeptNodes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/pruneAll;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\n\u001a\u00020\u000bH\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/InactiveNodeList;",
        "Lkotlinx/coroutines/Incomplete;",
        "list",
        "Lkotlinx/coroutines/NodeList;",
        "(Lkotlinx/coroutines/NodeList;)V",
        "isActive",
        "",
        "()Z",
        "getList",
        "()Lkotlinx/coroutines/NodeList;",
        "toString",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final extraCallback:Lo/pruneOldQueries;


# direct methods
.method public constructor <init>(Lo/pruneOldQueries;)V
    .locals 0

    .line 1375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/foldKeptNodes;->extraCallback:Lo/pruneOldQueries;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/pruneOldQueries;
    .locals 1

    .line 1376
    iget-object v0, p0, Lo/foldKeptNodes;->extraCallback:Lo/pruneOldQueries;

    return-object v0
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1379
    invoke-static {}, Lo/getSnapshot;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2376
    iget-object v0, p0, Lo/foldKeptNodes;->extraCallback:Lo/pruneOldQueries;

    const-string v1, "New"

    .line 1379
    invoke-virtual {v0, v1}, Lo/pruneOldQueries;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
