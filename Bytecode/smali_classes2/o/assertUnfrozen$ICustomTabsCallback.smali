.class final Lo/assertUnfrozen$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/assertUnfrozen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/updatePriority;


# direct methods
.method constructor <init>(Lo/updatePriority;)V
    .locals 0

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lo/assertUnfrozen$ICustomTabsCallback;->onMessageChannelReady:Lo/updatePriority;

    return-void
.end method

.method private onMessageChannelReady(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ge p1, p2, :cond_0

    .line 399
    iget-object p2, p0, Lo/assertUnfrozen$ICustomTabsCallback;->onMessageChannelReady:Lo/updatePriority;

    or-int/lit8 p1, p1, 0x0

    invoke-virtual {p2, p1}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lo/assertUnfrozen$ICustomTabsCallback;->onMessageChannelReady:Lo/updatePriority;

    or-int/lit8 v1, p2, 0x0

    invoke-virtual {v0, v1}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 v0, p1, 0x7f

    .line 410
    iget-object v1, p0, Lo/assertUnfrozen$ICustomTabsCallback;->onMessageChannelReady:Lo/updatePriority;

    or-int/2addr p2, v0

    invoke-virtual {v1, p2}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 413
    :cond_1
    iget-object p2, p0, Lo/assertUnfrozen$ICustomTabsCallback;->onMessageChannelReady:Lo/updatePriority;

    invoke-virtual {p2, p1}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    return-void
.end method

.method private onPostMessage(Lo/matches;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    invoke-virtual {p1}, Lo/matches;->onTransact()I

    move-result v0

    const/16 v1, 0x7f

    invoke-direct {p0, v0, v1}, Lo/assertUnfrozen$ICustomTabsCallback;->onMessageChannelReady(II)V

    .line 418
    iget-object v0, p0, Lo/assertUnfrozen$ICustomTabsCallback;->onMessageChannelReady:Lo/updatePriority;

    if-eqz p1, :cond_0

    .line 2956
    invoke-virtual {p1, v0}, Lo/matches;->onMessageChannelReady(Lo/updatePriority;)V

    return-void

    .line 2955
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/setPersistenceCacheSizeBytes;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 381
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setPersistenceCacheSizeBytes;

    iget-object v3, v3, Lo/setPersistenceCacheSizeBytes;->asBinder:Lo/matches;

    invoke-virtual {v3}, Lo/matches;->asBinder()Lo/matches;

    move-result-object v3

    .line 382
    invoke-static {}, Lo/assertUnfrozen;->onMessageChannelReady()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 385
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xf

    invoke-direct {p0, v3, v4}, Lo/assertUnfrozen$ICustomTabsCallback;->onMessageChannelReady(II)V

    .line 386
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setPersistenceCacheSizeBytes;

    iget-object v3, v3, Lo/setPersistenceCacheSizeBytes;->onRelationshipValidationResult:Lo/matches;

    .line 1417
    invoke-virtual {v3}, Lo/matches;->onTransact()I

    move-result v4

    const/16 v5, 0x7f

    invoke-direct {p0, v4, v5}, Lo/assertUnfrozen$ICustomTabsCallback;->onMessageChannelReady(II)V

    .line 1418
    iget-object v4, p0, Lo/assertUnfrozen$ICustomTabsCallback;->onMessageChannelReady:Lo/updatePriority;

    if-eqz v3, :cond_0

    .line 1956
    invoke-virtual {v3, v4}, Lo/matches;->onMessageChannelReady(Lo/updatePriority;)V

    goto :goto_1

    .line 1955
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 388
    :cond_1
    iget-object v4, p0, Lo/assertUnfrozen$ICustomTabsCallback;->onMessageChannelReady:Lo/updatePriority;

    invoke-virtual {v4, v1}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 389
    invoke-direct {p0, v3}, Lo/assertUnfrozen$ICustomTabsCallback;->onPostMessage(Lo/matches;)V

    .line 390
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setPersistenceCacheSizeBytes;

    iget-object v3, v3, Lo/setPersistenceCacheSizeBytes;->onRelationshipValidationResult:Lo/matches;

    invoke-direct {p0, v3}, Lo/assertUnfrozen$ICustomTabsCallback;->onPostMessage(Lo/matches;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
