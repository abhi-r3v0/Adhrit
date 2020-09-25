.class public abstract Lo/deviceFile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field ICustomTabsCallback:[I

.field asBinder:I

.field asInterface:Z

.field extraCallback:[I

.field onNavigationEvent:I

.field onPostMessage:[Ljava/lang/String;

.field onRelationshipValidationResult:Z

.field onTransact:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lo/deviceFile;->onNavigationEvent:I

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 132
    iput-object v1, p0, Lo/deviceFile;->extraCallback:[I

    new-array v1, v0, [Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lo/deviceFile;->onPostMessage:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 134
    iput-object v0, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    const/4 v0, -0x1

    .line 163
    iput v0, p0, Lo/deviceFile;->asBinder:I

    return-void
.end method

.method public static onMessageChannelReady(Lo/filtersNodes;)Lo/deviceFile;
    .locals 1

    .line 167
    new-instance v0, Lo/binaryImagesFile;

    invoke-direct {v0, p0}, Lo/binaryImagesFile;-><init>(Lo/filtersNodes;)V

    return-object v0
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Lo/deviceFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback()Lo/deviceFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback(D)Lo/deviceFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback(Ljava/lang/String;)Lo/deviceFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback(Z)Lo/deviceFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady()Lo/deviceFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/Number;)Lo/deviceFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent()Lo/deviceFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(J)Lo/deviceFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage()Lo/deviceFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;)Lo/deviceFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final onRelationshipValidationResult()Z
    .locals 6

    .line 184
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    iget-object v1, p0, Lo/deviceFile;->extraCallback:[I

    array-length v2, v1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v2, 0x100

    if-eq v0, v2, :cond_2

    .line 190
    array-length v0, v1

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lo/deviceFile;->extraCallback:[I

    .line 191
    iget-object v0, p0, Lo/deviceFile;->onPostMessage:[Ljava/lang/String;

    array-length v1, v0

    shl-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lo/deviceFile;->onPostMessage:[Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    array-length v1, v0

    shl-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    .line 193
    instance-of v0, p0, Lo/minidumpFile;

    if-eqz v0, :cond_1

    .line 194
    move-object v0, p0

    check-cast v0, Lo/minidumpFile;

    iget-object v1, v0, Lo/minidumpFile;->onMessageChannelReady:[Ljava/lang/Object;

    iget-object v3, v0, Lo/minidumpFile;->onMessageChannelReady:[Ljava/lang/Object;

    array-length v3, v3

    shl-int/2addr v3, v2

    .line 195
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lo/minidumpFile;->onMessageChannelReady:[Ljava/lang/Object;

    :cond_1
    return v2

    .line 187
    :cond_2
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Nesting too deep at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1488
    iget v2, p0, Lo/deviceFile;->onNavigationEvent:I

    iget-object v3, p0, Lo/deviceFile;->extraCallback:[I

    iget-object v4, p0, Lo/deviceFile;->onPostMessage:[Ljava/lang/String;

    iget-object v5, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": circular reference?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
