.class final Lo/binaryImagesFile;
.super Lo/deviceFile;
.source ""


# static fields
.field private static final onMessageChannelReady:[Ljava/lang/String;


# instance fields
.field private final ICustomTabsCallback$Stub:Lo/filtersNodes;

.field private ICustomTabsService:Ljava/lang/String;

.field private newSession:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    .line 49
    sput-object v0, Lo/binaryImagesFile;->onMessageChannelReady:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 51
    sget-object v2, Lo/binaryImagesFile;->onMessageChannelReady:[Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "\\u%04x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    sget-object v0, Lo/binaryImagesFile;->onMessageChannelReady:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    .line 54
    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\\t"

    .line 55
    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\\b"

    .line 56
    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\\n"

    .line 57
    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\\r"

    .line 58
    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\\f"

    .line 59
    aput-object v2, v0, v1

    return-void
.end method

.method constructor <init>(Lo/filtersNodes;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Lo/deviceFile;-><init>()V

    const-string v0, ":"

    .line 66
    iput-object v0, p0, Lo/binaryImagesFile;->newSession:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 74
    iput-object p1, p0, Lo/binaryImagesFile;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    .line 1202
    iget-object p1, p0, Lo/deviceFile;->extraCallback:[I

    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lo/deviceFile;->onNavigationEvent:I

    const/4 v1, 0x6

    aput v1, p1, v0

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9176
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    if-eqz v0, :cond_2

    .line 9179
    iget-object v0, p0, Lo/deviceFile;->extraCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Lo/binaryImagesFile;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 10207
    :goto_0
    iget-object v0, p0, Lo/deviceFile;->extraCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void

    .line 392
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9177
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private asInterface()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11176
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    if-eqz v0, :cond_7

    .line 11179
    iget-object v0, p0, Lo/deviceFile;->extraCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    const/4 v1, 0x7

    const/4 v3, 0x2

    if-eq v0, v2, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    const/16 v3, 0x9

    if-eq v0, v3, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_6

    if-ne v0, v1, :cond_1

    .line 408
    iget-boolean v0, p0, Lo/deviceFile;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sink from valueSink() was not closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v1, 0x5

    .line 427
    iget-object v0, p0, Lo/binaryImagesFile;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    iget-object v3, p0, Lo/binaryImagesFile;->newSession:Ljava/lang/String;

    invoke-interface {v0, v3}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    goto :goto_0

    .line 418
    :cond_4
    iget-object v0, p0, Lo/binaryImagesFile;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    :cond_5
    const/4 v1, 0x2

    .line 12207
    :cond_6
    :goto_0
    iget-object v0, p0, Lo/deviceFile;->extraCallback:[I

    iget v3, p0, Lo/deviceFile;->onNavigationEvent:I

    sub-int/2addr v3, v2

    aput v1, v0, v3

    return-void

    .line 11177
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onMessageChannelReady(IIC)Lo/deviceFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4176
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    if-eqz v0, :cond_4

    .line 4179
    iget-object v0, p0, Lo/deviceFile;->extraCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-eq v0, p2, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Nesting problem."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/binaryImagesFile;->ICustomTabsService:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 141
    iget p1, p0, Lo/deviceFile;->onNavigationEvent:I

    iget p2, p0, Lo/deviceFile;->asBinder:I

    not-int p2, p2

    if-ne p1, p2, :cond_2

    .line 143
    iget p1, p0, Lo/deviceFile;->asBinder:I

    not-int p1, p1

    iput p1, p0, Lo/deviceFile;->asBinder:I

    return-object p0

    .line 147
    :cond_2
    iget p1, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/deviceFile;->onNavigationEvent:I

    .line 148
    iget-object p1, p0, Lo/deviceFile;->onPostMessage:[Ljava/lang/String;

    iget p2, p0, Lo/deviceFile;->onNavigationEvent:I

    const/4 v0, 0x0

    aput-object v0, p1, p2

    .line 149
    iget-object p1, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    iget p2, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 p2, p2, -0x1

    aget v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, p2

    .line 153
    iget-object p1, p0, Lo/binaryImagesFile;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    invoke-interface {p1, p3}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    return-object p0

    .line 139
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Dangling name: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lo/binaryImagesFile;->ICustomTabsService:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4177
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "JsonWriter is closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onNavigationEvent(IIC)Lo/deviceFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    iget v1, p0, Lo/deviceFile;->asBinder:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lo/deviceFile;->extraCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lo/deviceFile;->extraCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-ne v0, p2, :cond_1

    .line 118
    :cond_0
    iget p1, p0, Lo/deviceFile;->asBinder:I

    not-int p1, p1

    iput p1, p0, Lo/deviceFile;->asBinder:I

    return-object p0

    .line 121
    :cond_1
    invoke-direct {p0}, Lo/binaryImagesFile;->asInterface()V

    .line 122
    invoke-virtual {p0}, Lo/binaryImagesFile;->onRelationshipValidationResult()Z

    .line 3202
    iget-object p2, p0, Lo/deviceFile;->extraCallback:[I

    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lo/deviceFile;->onNavigationEvent:I

    aput p1, p2, v0

    .line 124
    iget-object p1, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    iget p2, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    aput v0, p1, p2

    .line 125
    iget-object p1, p0, Lo/binaryImagesFile;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    invoke-interface {p1, p3}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    return-object p0
.end method

.method static onPostMessage(Lo/filtersNodes;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    sget-object v0, Lo/binaryImagesFile;->onMessageChannelReady:[Ljava/lang/String;

    const/16 v1, 0x22

    .line 342
    invoke-interface {p0, v1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 344
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    .line 346
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-ge v5, v6, :cond_0

    .line 349
    aget-object v5, v0, v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_0
    const/16 v6, 0x2028

    if-ne v5, v6, :cond_1

    const-string v5, "\\u2028"

    goto :goto_1

    :cond_1
    const/16 v6, 0x2029

    if-ne v5, v6, :cond_4

    const-string v5, "\\u2029"

    :cond_2
    :goto_1
    if-ge v4, v3, :cond_3

    .line 361
    invoke-interface {p0, p1, v4, v3}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;II)Lo/filtersNodes;

    .line 363
    :cond_3
    invoke-interface {p0, v5}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    add-int/lit8 v4, v3, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-ge v4, v2, :cond_6

    .line 367
    invoke-interface {p0, p1, v4, v2}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;II)Lo/filtersNodes;

    .line 369
    :cond_6
    invoke-interface {p0, v1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    return-void
.end method

.method private onTransact()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lo/binaryImagesFile;->ICustomTabsService:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Lo/binaryImagesFile;->ICustomTabsCallback$Stub()V

    .line 177
    iget-object v0, p0, Lo/binaryImagesFile;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    iget-object v1, p0, Lo/binaryImagesFile;->ICustomTabsService:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/binaryImagesFile;->onPostMessage(Lo/filtersNodes;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lo/binaryImagesFile;->ICustomTabsService:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/deviceFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-boolean v0, p0, Lo/deviceFile;->onTransact:Z

    if-nez v0, :cond_2

    .line 201
    iget-object v0, p0, Lo/binaryImagesFile;->ICustomTabsService:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 202
    iget-boolean v0, p0, Lo/deviceFile;->asInterface:Z

    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0}, Lo/binaryImagesFile;->onTransact()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lo/binaryImagesFile;->ICustomTabsService:Ljava/lang/String;

    return-object p0

    .line 209
    :cond_1
    :goto_0
    invoke-direct {p0}, Lo/binaryImagesFile;->asInterface()V

    .line 210
    iget-object v0, p0, Lo/binaryImagesFile;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    const-string v1, "null"

    invoke-interface {v0, v1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 211
    iget-object v0, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-object p0

    .line 198
    :cond_2
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

    .line 199
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

    .line 327
    iget-object v0, p0, Lo/binaryImagesFile;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->close()V

    .line 329
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    .line 330
    iget-object v2, p0, Lo/deviceFile;->extraCallback:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 333
    iput v0, p0, Lo/deviceFile;->onNavigationEvent:I

    return-void

    .line 331
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

    .line 84
    iget-boolean v0, p0, Lo/deviceFile;->onTransact:Z

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lo/binaryImagesFile;->onTransact()V

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0x5b

    .line 89
    invoke-direct {p0, v0, v1, v2}, Lo/binaryImagesFile;->onNavigationEvent(IIC)Lo/deviceFile;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
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

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final extraCallback(D)Lo/deviceFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    iget-boolean v0, p0, Lo/deviceFile;->onRelationshipValidationResult:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Numeric values must be finite, but was "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lo/deviceFile;->onTransact:Z

    if-eqz v0, :cond_2

    .line 239
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    move-result-object p1

    return-object p1

    .line 241
    :cond_2
    invoke-direct {p0}, Lo/binaryImagesFile;->onTransact()V

    .line 242
    invoke-direct {p0}, Lo/binaryImagesFile;->asInterface()V

    .line 243
    iget-object v0, p0, Lo/binaryImagesFile;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 244
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

    if-nez p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lo/deviceFile;->ICustomTabsCallback()Lo/deviceFile;

    move-result-object p1

    return-object p1

    .line 186
    :cond_0
    iget-boolean v0, p0, Lo/deviceFile;->onTransact:Z

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p0, p1}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    move-result-object p1

    return-object p1

    .line 6175
    :cond_1
    iget-object v0, p0, Lo/binaryImagesFile;->ICustomTabsService:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6176
    invoke-direct {p0}, Lo/binaryImagesFile;->ICustomTabsCallback$Stub()V

    .line 6177
    iget-object v0, p0, Lo/binaryImagesFile;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    iget-object v1, p0, Lo/binaryImagesFile;->ICustomTabsService:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/binaryImagesFile;->onPostMessage(Lo/filtersNodes;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6178
    iput-object v0, p0, Lo/binaryImagesFile;->ICustomTabsService:Ljava/lang/String;

    .line 190
    :cond_2
    invoke-direct {p0}, Lo/binaryImagesFile;->asInterface()V

    .line 191
    iget-object v0, p0, Lo/binaryImagesFile;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    invoke-static {v0, p1}, Lo/binaryImagesFile;->onPostMessage(Lo/filtersNodes;Ljava/lang/String;)V

    .line 192
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

    .line 216
    iget-boolean v0, p0, Lo/deviceFile;->onTransact:Z

    if-nez v0, :cond_1

    .line 220
    invoke-direct {p0}, Lo/binaryImagesFile;->onTransact()V

    .line 221
    invoke-direct {p0}, Lo/binaryImagesFile;->asInterface()V

    .line 222
    iget-object v0, p0, Lo/binaryImagesFile;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-interface {v0, p1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 223
    iget-object p1, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v0, v0, -0x1

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-object p0

    .line 217
    :cond_1
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

    .line 218
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

    .line 315
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lo/binaryImagesFile;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->flush()V

    return-void

    .line 316
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

    .line 97
    iget-boolean v0, p0, Lo/deviceFile;->onTransact:Z

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lo/binaryImagesFile;->onTransact()V

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/16 v2, 0x7b

    .line 102
    invoke-direct {p0, v0, v1, v2}, Lo/binaryImagesFile;->onNavigationEvent(IIC)Lo/deviceFile;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Object cannot be used as a map key in JSON at path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2488
    iget v2, p0, Lo/deviceFile;->onNavigationEvent:I

    iget-object v3, p0, Lo/deviceFile;->extraCallback:[I

    iget-object v4, p0, Lo/deviceFile;->onPostMessage:[Ljava/lang/String;

    iget-object v5, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 99
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

    if-nez p1, :cond_0

    .line 261
    invoke-virtual {p0}, Lo/deviceFile;->ICustomTabsCallback()Lo/deviceFile;

    move-result-object p1

    return-object p1

    .line 264
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    iget-boolean v1, p0, Lo/deviceFile;->onRelationshipValidationResult:Z

    if-nez v1, :cond_2

    const-string v1, "-Infinity"

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 267
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Numeric values must be finite, but was "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lo/deviceFile;->onTransact:Z

    if-eqz p1, :cond_3

    .line 270
    invoke-virtual {p0, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    move-result-object p1

    return-object p1

    .line 272
    :cond_3
    invoke-direct {p0}, Lo/binaryImagesFile;->onTransact()V

    .line 273
    invoke-direct {p0}, Lo/binaryImagesFile;->asInterface()V

    .line 274
    iget-object p1, p0, Lo/binaryImagesFile;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    invoke-interface {p1, v0}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 275
    iget-object p1, p0, Lo/deviceFile;->ICustomTabsCallback:[I

    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v0, v0, -0x1

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-object p0
.end method

.method public final onNavigationEvent()Lo/deviceFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0x5d

    .line 93
    invoke-direct {p0, v0, v1, v2}, Lo/binaryImagesFile;->onMessageChannelReady(IIC)Lo/deviceFile;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(J)Lo/deviceFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-boolean v0, p0, Lo/deviceFile;->onTransact:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    move-result-object p1

    return-object p1

    .line 8175
    :cond_0
    iget-object v0, p0, Lo/binaryImagesFile;->ICustomTabsService:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8176
    invoke-direct {p0}, Lo/binaryImagesFile;->ICustomTabsCallback$Stub()V

    .line 8177
    iget-object v0, p0, Lo/binaryImagesFile;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    iget-object v1, p0, Lo/binaryImagesFile;->ICustomTabsService:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/binaryImagesFile;->onPostMessage(Lo/filtersNodes;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8178
    iput-object v0, p0, Lo/binaryImagesFile;->ICustomTabsService:Ljava/lang/String;

    .line 253
    :cond_1
    invoke-direct {p0}, Lo/binaryImagesFile;->asInterface()V

    .line 254
    iget-object v0, p0, Lo/binaryImagesFile;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 255
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

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lo/deviceFile;->onTransact:Z

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/16 v2, 0x7d

    .line 107
    invoke-direct {p0, v0, v1, v2}, Lo/binaryImagesFile;->onMessageChannelReady(IIC)Lo/deviceFile;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/deviceFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 161
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    const-string v1, "JsonWriter is closed."

    if-eqz v0, :cond_3

    .line 5176
    iget v0, p0, Lo/deviceFile;->onNavigationEvent:I

    if-eqz v0, :cond_2

    .line 5179
    iget-object v0, p0, Lo/deviceFile;->extraCallback:[I

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 165
    :cond_0
    iget-object v0, p0, Lo/binaryImagesFile;->ICustomTabsService:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 168
    iput-object p1, p0, Lo/binaryImagesFile;->ICustomTabsService:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lo/deviceFile;->onPostMessage:[Ljava/lang/String;

    iget v1, p0, Lo/deviceFile;->onNavigationEvent:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lo/deviceFile;->onTransact:Z

    return-object p0

    .line 166
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Nesting problem."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5177
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
