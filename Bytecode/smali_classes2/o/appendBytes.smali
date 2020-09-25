.class public final Lo/appendBytes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ensureIndexed;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ensureIndexed<",
        "Lo/getChildKey;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/writeStringNoTag;

.field private final onPostMessage:Lo/computeDoubleSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeDoubleSize<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/writeStringNoTag;Lo/computeDoubleSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/writeStringNoTag;",
            "Lo/computeDoubleSize<",
            "TT;>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lo/appendBytes;->onMessageChannelReady:Lo/writeStringNoTag;

    .line 31
    iput-object p2, p0, Lo/appendBytes;->onPostMessage:Lo/computeDoubleSize;

    return-void
.end method

.method private onMessageChannelReady(Lo/getChildKey;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getChildKey;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lo/appendBytes;->onMessageChannelReady:Lo/writeStringNoTag;

    .line 1158
    iget-object v1, p1, Lo/getChildKey;->onPostMessage:Ljava/io/Reader;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1159
    :cond_0
    new-instance v1, Lo/getChildKey$onMessageChannelReady;

    invoke-virtual {p1}, Lo/getChildKey;->onMessageChannelReady()Lo/fullLimitUpdateChild;

    move-result-object v2

    .line 1183
    invoke-virtual {p1}, Lo/getChildKey;->onNavigationEvent()Lo/isFiltered;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1184
    sget-object v4, Lo/generateEventsForType;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Lo/isFiltered;->onMessageChannelReady(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v3

    goto :goto_0

    :cond_1
    sget-object v3, Lo/generateEventsForType;->onMessageChannelReady:Ljava/nio/charset/Charset;

    .line 1159
    :goto_0
    invoke-direct {v1, v2, v3}, Lo/getChildKey$onMessageChannelReady;-><init>(Lo/fullLimitUpdateChild;Ljava/nio/charset/Charset;)V

    iput-object v1, p1, Lo/getChildKey;->onPostMessage:Ljava/io/Reader;

    .line 1767
    :goto_1
    new-instance v2, Lo/checkNoSpaceLeft;

    invoke-direct {v2, v1}, Lo/checkNoSpaceLeft;-><init>(Ljava/io/Reader;)V

    .line 1768
    iget-boolean v0, v0, Lo/writeStringNoTag;->onMessageChannelReady:Z

    .line 2327
    iput-boolean v0, v2, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    .line 37
    :try_start_0
    iget-object v0, p0, Lo/appendBytes;->onPostMessage:Lo/computeDoubleSize;

    invoke-virtual {v0, v2}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {p1}, Lo/getChildKey;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lo/getChildKey;->close()V

    throw v0
.end method


# virtual methods
.method public final synthetic onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    check-cast p1, Lo/getChildKey;

    invoke-direct {p0, p1}, Lo/appendBytes;->onMessageChannelReady(Lo/getChildKey;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
