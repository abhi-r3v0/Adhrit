.class Lo/access$1702;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lo/access$1702;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/util/List;)Lo/getPredecessorKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getOptExclusiveStart;",
            ">;)",
            "Lo/getPredecessorKey;"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lo/access$1702;->onPostMessage(Ljava/util/List;)[[B

    move-result-object p0

    invoke-static {p0}, Lo/onNodeValue;->extraCallback([[B)Lo/getPredecessorKey;

    move-result-object p0

    return-object p0
.end method

.method public static extraCallback(Ljava/util/List;)Lo/getPredecessorKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getOptExclusiveStart;",
            ">;)",
            "Lo/getPredecessorKey;"
        }
    .end annotation

    .line 53
    invoke-static {p0}, Lo/access$1702;->onPostMessage(Ljava/util/List;)[[B

    move-result-object p0

    invoke-static {p0}, Lo/onNodeValue;->extraCallback([[B)Lo/getPredecessorKey;

    move-result-object p0

    return-object p0
.end method

.method private static onPostMessage(Ljava/util/List;)[[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getOptExclusiveStart;",
            ">;)[[B"
        }
    .end annotation

    .line 58
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[B

    .line 60
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getOptExclusiveStart;

    add-int/lit8 v3, v1, 0x1

    .line 61
    iget-object v4, v2, Lo/getOptExclusiveStart;->asInterface:Lo/matches;

    invoke-virtual {v4}, Lo/matches;->asInterface()[B

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v3, 0x1

    .line 62
    iget-object v2, v2, Lo/getOptExclusiveStart;->asBinder:Lo/matches;

    invoke-virtual {v2}, Lo/matches;->asInterface()[B

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v0}, Lo/sendAuthAndRestoreState;->onMessageChannelReady([[B)[[B

    move-result-object p0

    return-object p0
.end method
