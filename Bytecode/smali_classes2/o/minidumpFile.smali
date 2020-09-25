.class final Lo/minidumpFile;
.super Lo/deviceFile;
.source ""


# instance fields
.field private ICustomTabsCallback$Stub:Ljava/lang/String;

.field onMessageChannelReady:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Lo/deviceFile;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    iput-object v0, p0, Lo/minidumpFile;->onMessageChannelReady:[Ljava/lang/Object;

    .line 1202
    iget-object v0, p0, Lo/deviceFile;->extraCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/deviceFile;->onNavigationEvent:I

    const/4 v2, 0x6

    aput v2, v0, v1

    return-void
.end method

.method private extraCallback(Ljava/lang/Object;)Lo/minidumpFile;
    .locals 7

    .line 8176
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    if-eqz v0, :cond_8

    .line 8179
    iget-object v0, p0, Lo/deviceFile;->extraCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    .line 281
    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lo/deviceFile;->extraCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    sub-int/2addr v1, v2

    const/4 v3, 0x7

    aput v3, v0, v1

    .line 286
    iget-object v0, p0, Lo/minidumpFile;->onMessageChannelReady:[Ljava/lang/Object;

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    sub-int/2addr v1, v2

    aput-object p1, v0, v1

    goto :goto_0

    .line 283
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JSON must have only one top-level value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 288
    iget-object v1, p0, Lo/minidumpFile;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-eqz v1, :cond_5

    if-nez p1, :cond_2

    .line 289
    iget-boolean v0, p0, Lo/deviceFile;->asInterface:Z

    if-eqz v0, :cond_3

    .line 291
    :cond_2
    iget-object v0, p0, Lo/minidumpFile;->onMessageChannelReady:[Ljava/lang/Object;

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/Map;

    .line 292
    iget-object v1, p0, Lo/minidumpFile;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    const/4 p1, 0x0

    .line 298
    iput-object p1, p0, Lo/minidumpFile;->ICustomTabsCallback$Stub:Ljava/lang/String;

    goto :goto_0

    .line 294
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Map key \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/minidumpFile;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' has multiple values at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8488
    iget v3, p0, Lo/deviceFile;->onNavigationEvent:I

    iget-object v4, p0, Lo/deviceFile;->extraCallback:[I

    iget-object v5, p0, Lo/deviceFile;->onPostMessage:[Ljava/lang/String;

    iget-object v6, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    invoke-static {v3, v4, v5, v6}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-ne v0, v2, :cond_6

    .line 302
    iget-object v0, p0, Lo/minidumpFile;->onMessageChannelReady:[Ljava/lang/Object;

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/List;

    .line 303
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0

    :cond_6
    const/16 p1, 0x9

    if-ne v0, p1, :cond_7

    .line 306
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Sink from valueSink() was not closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 309
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Nesting problem."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8177
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JsonWriter is closed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/deviceFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-boolean v0, p0, Lo/deviceFile;->onTransact:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, v0}, Lo/minidumpFile;->extraCallback(Ljava/lang/Object;)Lo/minidumpFile;

    .line 157
    iget-object v0, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-object p0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "null cannot be used as a map key in JSON at path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6488
    iget v2, p0, Lo/deviceFile;->onNavigationEvent:I

    iget-object v3, p0, Lo/deviceFile;->extraCallback:[I

    iget-object v4, p0, Lo/deviceFile;->onPostMessage:[Ljava/lang/String;

    iget-object v5, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    .line 266
    iget-object v2, p0, Lo/deviceFile;->extraCallback:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 269
    iput v0, p0, Lo/deviceFile;->onNavigationEvent:I

    return-void

    .line 267
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final extraCallback()Lo/deviceFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-boolean v0, p0, Lo/deviceFile;->onTransact:Z

    if-nez v0, :cond_1

    .line 59
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    iget v1, p0, Lo/deviceFile;->asBinder:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/deviceFile;->extraCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    sub-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v2, :cond_0

    .line 61
    iget v0, p0, Lo/deviceFile;->asBinder:I

    not-int v0, v0

    iput v0, p0, Lo/deviceFile;->asBinder:I

    return-object p0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lo/minidumpFile;->onRelationshipValidationResult()Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-direct {p0, v0}, Lo/minidumpFile;->extraCallback(Ljava/lang/Object;)Lo/minidumpFile;

    .line 67
    iget-object v1, p0, Lo/minidumpFile;->onMessageChannelReady:[Ljava/lang/Object;

    iget v3, p0, Lo/deviceFile;->onNavigationEvent:I

    aput-object v0, v1, v3

    .line 68
    iget-object v0, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 2202
    iget-object v0, p0, Lo/deviceFile;->extraCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lo/deviceFile;->onNavigationEvent:I

    aput v2, v0, v1

    return-object p0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Array cannot be used as a map key in JSON at path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1488
    iget v2, p0, Lo/deviceFile;->onNavigationEvent:I

    iget-object v3, p0, Lo/deviceFile;->extraCallback:[I

    iget-object v4, p0, Lo/deviceFile;->onPostMessage:[Ljava/lang/String;

    iget-object v5, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final extraCallback(D)Lo/deviceFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-boolean v0, p0, Lo/deviceFile;->onRelationshipValidationResult:Z

    if-nez v0, :cond_1

    .line 183
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Numeric values must be finite, but was "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lo/deviceFile;->onTransact:Z

    if-eqz v0, :cond_2

    .line 187
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    move-result-object p1

    return-object p1

    .line 189
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/minidumpFile;->extraCallback(Ljava/lang/Object;)Lo/minidumpFile;

    .line 190
    iget-object p1, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    iget p2, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 p2, p2, -0x1

    aget v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, p2

    return-object p0
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/deviceFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-boolean v0, p0, Lo/deviceFile;->onTransact:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    move-result-object p1

    return-object p1

    .line 146
    :cond_0
    invoke-direct {p0, p1}, Lo/minidumpFile;->extraCallback(Ljava/lang/Object;)Lo/minidumpFile;

    .line 147
    iget-object p1, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v0, v0, -0x1

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-object p0
.end method

.method public final extraCallback(Z)Lo/deviceFile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-boolean v0, p0, Lo/deviceFile;->onTransact:Z

    if-nez v0, :cond_0

    .line 166
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/minidumpFile;->extraCallback(Ljava/lang/Object;)Lo/minidumpFile;

    .line 167
    iget-object p1, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v0, v0, -0x1

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-object p0

    .line 163
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Boolean cannot be used as a map key in JSON at path "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7488
    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    iget-object v2, p0, Lo/deviceFile;->extraCallback:[I

    iget-object v3, p0, Lo/deviceFile;->onPostMessage:[Ljava/lang/String;

    iget-object v4, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    invoke-static {v1, v2, v3, v4}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    if-eqz v0, :cond_0

    return-void

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onMessageChannelReady()Lo/deviceFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-boolean v0, p0, Lo/deviceFile;->onTransact:Z

    if-nez v0, :cond_1

    .line 93
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    iget v1, p0, Lo/deviceFile;->asBinder:I

    const/4 v2, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/deviceFile;->extraCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-ne v0, v2, :cond_0

    .line 95
    iget v0, p0, Lo/deviceFile;->asBinder:I

    not-int v0, v0

    iput v0, p0, Lo/deviceFile;->asBinder:I

    return-object p0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lo/minidumpFile;->onRelationshipValidationResult()Z

    .line 99
    new-instance v0, Lo/osFile;

    invoke-direct {v0}, Lo/osFile;-><init>()V

    .line 100
    invoke-direct {p0, v0}, Lo/minidumpFile;->extraCallback(Ljava/lang/Object;)Lo/minidumpFile;

    .line 101
    iget-object v1, p0, Lo/minidumpFile;->onMessageChannelReady:[Ljava/lang/Object;

    iget v3, p0, Lo/deviceFile;->onNavigationEvent:I

    aput-object v0, v1, v3

    .line 4202
    iget-object v0, p0, Lo/deviceFile;->extraCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lo/deviceFile;->onNavigationEvent:I

    aput v2, v0, v1

    return-object p0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Object cannot be used as a map key in JSON at path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3488
    iget v2, p0, Lo/deviceFile;->onNavigationEvent:I

    iget-object v3, p0, Lo/deviceFile;->extraCallback:[I

    iget-object v4, p0, Lo/deviceFile;->onPostMessage:[Ljava/lang/String;

    iget-object v5, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onMessageChannelReady(Ljava/lang/Number;)Lo/deviceFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lo/deviceFile;->extraCallback(D)Lo/deviceFile;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 218
    invoke-virtual {p0}, Lo/deviceFile;->ICustomTabsCallback()Lo/deviceFile;

    move-result-object p1

    return-object p1

    .line 224
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 225
    iget-boolean p1, p0, Lo/deviceFile;->onTransact:Z

    if-eqz p1, :cond_2

    .line 226
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    move-result-object p1

    return-object p1

    .line 228
    :cond_2
    invoke-direct {p0, v0}, Lo/minidumpFile;->extraCallback(Ljava/lang/Object;)Lo/minidumpFile;

    .line 229
    iget-object p1, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v0, v0, -0x1

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-object p0
.end method

.method public final onNavigationEvent()Lo/deviceFile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3176
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    if-eqz v0, :cond_2

    .line 3179
    iget-object v0, p0, Lo/deviceFile;->extraCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v2, :cond_1

    .line 77
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    iget v1, p0, Lo/deviceFile;->asBinder:I

    not-int v1, v1

    if-ne v0, v1, :cond_0

    .line 79
    iget v0, p0, Lo/deviceFile;->asBinder:I

    not-int v0, v0

    iput v0, p0, Lo/deviceFile;->asBinder:I

    return-object p0

    .line 82
    :cond_0
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    sub-int/2addr v0, v2

    iput v0, p0, Lo/deviceFile;->onNavigationEvent:I

    .line 83
    iget-object v0, p0, Lo/minidumpFile;->onMessageChannelReady:[Ljava/lang/Object;

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 84
    iget-object v0, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    sub-int/2addr v1, v2

    aget v3, v0, v1

    add-int/2addr v3, v2

    aput v3, v0, v1

    return-object p0

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3177
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onNavigationEvent(J)Lo/deviceFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-boolean v0, p0, Lo/deviceFile;->onTransact:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    move-result-object p1

    return-object p1

    .line 198
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/minidumpFile;->extraCallback(Ljava/lang/Object;)Lo/minidumpFile;

    .line 199
    iget-object p1, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    iget p2, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 p2, p2, -0x1

    aget v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, p2

    return-object p0
.end method

.method public final onPostMessage()Lo/deviceFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5176
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    if-eqz v0, :cond_3

    .line 5179
    iget-object v0, p0, Lo/deviceFile;->extraCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 110
    iget-object v0, p0, Lo/minidumpFile;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 113
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    iget v1, p0, Lo/deviceFile;->asBinder:I

    not-int v1, v1

    if-ne v0, v1, :cond_0

    .line 115
    iget v0, p0, Lo/deviceFile;->asBinder:I

    not-int v0, v0

    iput v0, p0, Lo/deviceFile;->asBinder:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lo/deviceFile;->onTransact:Z

    .line 119
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/deviceFile;->onNavigationEvent:I

    .line 120
    iget-object v0, p0, Lo/minidumpFile;->onMessageChannelReady:[Ljava/lang/Object;

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 121
    iget-object v0, p0, Lo/deviceFile;->onPostMessage:[Ljava/lang/String;

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    aput-object v2, v0, v1

    .line 122
    iget-object v0, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-object p0

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dangling name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/minidumpFile;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5177
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/deviceFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 130
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    const-string v1, "JsonWriter is closed."

    if-eqz v0, :cond_2

    .line 6176
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    if-eqz v0, :cond_1

    .line 6179
    iget-object v0, p0, Lo/deviceFile;->extraCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lo/minidumpFile;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 136
    iput-object p1, p0, Lo/minidumpFile;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lo/deviceFile;->onPostMessage:[Ljava/lang/String;

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lo/deviceFile;->onTransact:Z

    return-object p0

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Nesting problem."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6177
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
