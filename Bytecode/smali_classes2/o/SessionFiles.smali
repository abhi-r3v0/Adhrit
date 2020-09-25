.class public abstract Lo/SessionFiles;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SessionFiles$onPostMessage;,
        Lo/SessionFiles$onNavigationEvent;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:[Ljava/lang/String;

.field public extraCallback:I

.field onMessageChannelReady:Z

.field public onNavigationEvent:[I

.field public onPostMessage:[I

.field onRelationshipValidationResult:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 201
    iput-object v1, p0, Lo/SessionFiles;->onNavigationEvent:[I

    new-array v1, v0, [Ljava/lang/String;

    .line 202
    iput-object v1, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 203
    iput-object v0, p0, Lo/SessionFiles;->onPostMessage:[I

    return-void
.end method

.method public static onNavigationEvent(Lo/fullLimitUpdateChild;)Lo/SessionFiles;
    .locals 1

    .line 196
    new-instance v0, Lo/SessionFiles$Builder;

    invoke-direct {v0, p0}, Lo/SessionFiles$Builder;-><init>(Lo/fullLimitUpdateChild;)V

    return-object v0
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/squareup/moshi/JsonEncodingException;
        }
    .end annotation

    .line 233
    new-instance v0, Lcom/squareup/moshi/JsonEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at path "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2508
    iget p1, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v2, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v3, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v4, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {p1, v2, v3, v4}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/squareup/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final ICustomTabsCallback(I)V
    .locals 5

    .line 217
    iget v0, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v1, p0, Lo/SessionFiles;->onNavigationEvent:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1

    const/16 v2, 0x100

    if-eq v0, v2, :cond_0

    .line 221
    array-length v0, v1

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lo/SessionFiles;->onNavigationEvent:[I

    .line 222
    iget-object v0, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lo/SessionFiles;->onPostMessage:[I

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lo/SessionFiles;->onPostMessage:[I

    goto :goto_0

    .line 219
    :cond_0
    new-instance p1, Lcom/squareup/moshi/JsonDataException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Nesting too deep at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1508
    iget v1, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v2, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v3, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v4, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v1, v2, v3, v4}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget v1, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/SessionFiles;->extraCallback:I

    aput p1, v0, v1

    return-void
.end method

.method public abstract ICustomTabsCallback()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback$Stub()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback$Stub$Proxy()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsService()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract asBinder()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract asInterface()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getInterfaceDescriptor()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract newSession()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Lo/SessionFiles$onNavigationEvent;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(Lo/SessionFiles$onNavigationEvent;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onRelationshipValidationResult()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onTransact()Lo/SessionFiles$onPostMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final postMessage()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    sget-object v0, Lo/SessionFiles$4;->onPostMessage:[I

    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 472
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a value but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 473
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :pswitch_0
    invoke-virtual {p0}, Lo/SessionFiles;->warmup()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 466
    :pswitch_1
    invoke-virtual {p0}, Lo/SessionFiles;->onRelationshipValidationResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 463
    :pswitch_2
    invoke-virtual {p0}, Lo/SessionFiles;->ICustomTabsService()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 460
    :pswitch_3
    invoke-virtual {p0}, Lo/SessionFiles;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 445
    :pswitch_4
    new-instance v0, Lo/osFile;

    invoke-direct {v0}, Lo/osFile;-><init>()V

    .line 446
    invoke-virtual {p0}, Lo/SessionFiles;->extraCallback()V

    .line 447
    :goto_0
    invoke-virtual {p0}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {p0}, Lo/SessionFiles;->asInterface()Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-virtual {p0}, Lo/SessionFiles;->postMessage()Ljava/lang/Object;

    move-result-object v2

    .line 450
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Map key \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' has multiple values at path "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3508
    iget v1, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v5, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v6, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v7, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v1, v5, v6, v7}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_1
    invoke-virtual {p0}, Lo/SessionFiles;->onPostMessage()V

    return-object v0

    .line 436
    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 437
    invoke-virtual {p0}, Lo/SessionFiles;->onMessageChannelReady()V

    .line 438
    :goto_1
    invoke-virtual {p0}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    invoke-virtual {p0}, Lo/SessionFiles;->postMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 441
    :cond_2
    invoke-virtual {p0}, Lo/SessionFiles;->onNavigationEvent()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method abstract requestPostMessageChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract warmup()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
