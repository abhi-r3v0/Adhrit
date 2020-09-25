.class public final Lo/loadTile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/findLastReferenceChildPosition;


# instance fields
.field public final onMessageChannelReady:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 25
    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lo/loadTile;->onMessageChannelReady:Ljava/io/File;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1215
    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 49
    instance-of v0, p1, Lo/loadTile;

    if-nez v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    check-cast p1, Lo/loadTile;

    .line 53
    iget-object v0, p0, Lo/loadTile;->onMessageChannelReady:Ljava/io/File;

    iget-object p1, p1, Lo/loadTile;->onMessageChannelReady:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final extraCallback()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lo/loadTile;->onMessageChannelReady:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 58
    iget-object v0, p0, Lo/loadTile;->onMessageChannelReady:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()J
    .locals 2

    .line 39
    iget-object v0, p0, Lo/loadTile;->onMessageChannelReady:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
