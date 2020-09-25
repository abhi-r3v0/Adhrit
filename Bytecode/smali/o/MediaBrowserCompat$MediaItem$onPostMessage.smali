.class final Lo/MediaBrowserCompat$MediaItem$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private extraCallback:I

.field private onMessageChannelReady:I

.field final synthetic onNavigationEvent:Lo/MediaBrowserCompat$MediaItem;

.field private onPostMessage:Z


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaItem;)V
    .locals 1

    .line 79
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onPostMessage:Z

    .line 80
    invoke-virtual {p1}, Lo/MediaBrowserCompat$MediaItem;->onPostMessage()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onMessageChannelReady:I

    const/4 p1, -0x1

    .line 81
    iput p1, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 137
    iget-boolean v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onPostMessage:Z

    if-eqz v0, :cond_2

    .line 141
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 144
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem;

    iget v3, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->extraCallback:I

    invoke-virtual {v2, v3, v1}, Lo/MediaBrowserCompat$MediaItem;->onMessageChannelReady(II)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem;

    iget v2, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->extraCallback:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lo/MediaBrowserCompat$MediaItem;->onMessageChannelReady(II)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    :cond_1
    return v1

    .line 138
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 110
    iget-boolean v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem;

    iget v1, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->extraCallback:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/MediaBrowserCompat$MediaItem;->onMessageChannelReady(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 119
    iget-boolean v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem;

    iget v1, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->extraCallback:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/MediaBrowserCompat$MediaItem;->onMessageChannelReady(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 86
    iget v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->extraCallback:I

    iget v1, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onMessageChannelReady:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 151
    iget-boolean v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onPostMessage:Z

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem;

    iget v1, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->extraCallback:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/MediaBrowserCompat$MediaItem;->onMessageChannelReady(II)Ljava/lang/Object;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem;

    iget v3, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->extraCallback:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lo/MediaBrowserCompat$MediaItem;->onMessageChannelReady(II)Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    return v0

    .line 152
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .line 1091
    invoke-virtual {p0}, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    iget v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->extraCallback:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->extraCallback:I

    .line 1093
    iput-boolean v1, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onPostMessage:Z

    return-object p0

    .line 1091
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 99
    iget-boolean v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem;

    iget v1, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->extraCallback:I

    invoke-virtual {v0, v1}, Lo/MediaBrowserCompat$MediaItem;->onPostMessage(I)V

    .line 103
    iget v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->extraCallback:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->extraCallback:I

    .line 104
    iget v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onMessageChannelReady:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onMessageChannelReady:I

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onPostMessage:Z

    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem;

    iget v1, p0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->extraCallback:I

    invoke-virtual {v0, v1, p1}, Lo/MediaBrowserCompat$MediaItem;->extraCallback(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/MediaBrowserCompat$MediaItem$onPostMessage;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
