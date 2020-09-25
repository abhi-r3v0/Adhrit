.class final Lo/Report$Type$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Report$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private extraCallback:I

.field private synthetic onMessageChannelReady:Lo/Report$Type;

.field private onNavigationEvent:Z

.field private onPostMessage:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/Report$Type;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lo/Report$Type$onMessageChannelReady;->onMessageChannelReady:Lo/Report$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 536
    iput p1, p0, Lo/Report$Type$onMessageChannelReady;->extraCallback:I

    return-void
.end method

.method synthetic constructor <init>(Lo/Report$Type;B)V
    .locals 0

    .line 534
    invoke-direct {p0, p1}, Lo/Report$Type$onMessageChannelReady;-><init>(Lo/Report$Type;)V

    return-void
.end method

.method private onPostMessage()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lo/Report$Type$onMessageChannelReady;->onPostMessage:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lo/Report$Type$onMessageChannelReady;->onMessageChannelReady:Lo/Report$Type;

    .line 6083
    iget-object v0, v0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    .line 579
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lo/Report$Type$onMessageChannelReady;->onPostMessage:Ljava/util/Iterator;

    .line 581
    :cond_0
    iget-object v0, p0, Lo/Report$Type$onMessageChannelReady;->onPostMessage:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    .line 542
    iget v0, p0, Lo/Report$Type$onMessageChannelReady;->extraCallback:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lo/Report$Type$onMessageChannelReady;->onMessageChannelReady:Lo/Report$Type;

    .line 1083
    iget-object v2, v2, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    .line 542
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lo/Report$Type$onMessageChannelReady;->onMessageChannelReady:Lo/Report$Type;

    .line 2083
    iget-object v0, v0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    .line 543
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo/Report$Type$onMessageChannelReady;->onPostMessage()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 6548
    iput-boolean v0, p0, Lo/Report$Type$onMessageChannelReady;->onNavigationEvent:Z

    .line 6551
    iget v1, p0, Lo/Report$Type$onMessageChannelReady;->extraCallback:I

    add-int/2addr v1, v0

    iput v1, p0, Lo/Report$Type$onMessageChannelReady;->extraCallback:I

    iget-object v0, p0, Lo/Report$Type$onMessageChannelReady;->onMessageChannelReady:Lo/Report$Type;

    .line 7083
    iget-object v0, v0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    .line 6551
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 6552
    iget-object v0, p0, Lo/Report$Type$onMessageChannelReady;->onMessageChannelReady:Lo/Report$Type;

    .line 8083
    iget-object v0, v0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    .line 6552
    iget v1, p0, Lo/Report$Type$onMessageChannelReady;->extraCallback:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 6554
    :cond_0
    invoke-direct {p0}, Lo/Report$Type$onMessageChannelReady;->onPostMessage()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .line 559
    iget-boolean v0, p0, Lo/Report$Type$onMessageChannelReady;->onNavigationEvent:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 562
    iput-boolean v0, p0, Lo/Report$Type$onMessageChannelReady;->onNavigationEvent:Z

    .line 563
    iget-object v0, p0, Lo/Report$Type$onMessageChannelReady;->onMessageChannelReady:Lo/Report$Type;

    .line 3368
    iget-boolean v0, v0, Lo/Report$Type;->ICustomTabsCallback:Z

    if-nez v0, :cond_1

    .line 565
    iget v0, p0, Lo/Report$Type$onMessageChannelReady;->extraCallback:I

    iget-object v1, p0, Lo/Report$Type$onMessageChannelReady;->onMessageChannelReady:Lo/Report$Type;

    .line 4083
    iget-object v1, v1, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    .line 565
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 566
    iget-object v0, p0, Lo/Report$Type$onMessageChannelReady;->onMessageChannelReady:Lo/Report$Type;

    iget v1, p0, Lo/Report$Type$onMessageChannelReady;->extraCallback:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lo/Report$Type$onMessageChannelReady;->extraCallback:I

    .line 5083
    invoke-virtual {v0, v1}, Lo/Report$Type;->onPostMessage(I)Ljava/lang/Object;

    return-void

    .line 568
    :cond_0
    invoke-direct {p0}, Lo/Report$Type$onMessageChannelReady;->onPostMessage()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 3369
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 560
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
