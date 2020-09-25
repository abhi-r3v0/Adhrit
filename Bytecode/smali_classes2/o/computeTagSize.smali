.class public Lo/computeTagSize;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final ICustomTabsCallback:[Ljava/lang/String;

.field private static final onPostMessage:[Ljava/lang/String;


# instance fields
.field public ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

.field private final asBinder:Ljava/io/Writer;

.field public asInterface:Z

.field public extraCallback:Ljava/lang/String;

.field public onMessageChannelReady:Z

.field public onNavigationEvent:Ljava/lang/String;

.field private onRelationshipValidationResult:[I

.field private onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    .line 146
    sput-object v0, Lo/computeTagSize;->ICustomTabsCallback:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 148
    sget-object v2, Lo/computeTagSize;->ICustomTabsCallback:[Ljava/lang/String;

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

    .line 150
    :cond_0
    sget-object v0, Lo/computeTagSize;->ICustomTabsCallback:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    .line 151
    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\\t"

    .line 152
    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\\b"

    .line 153
    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\\n"

    .line 154
    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\\r"

    .line 155
    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\\f"

    .line 156
    aput-object v2, v0, v1

    .line 157
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 158
    sput-object v0, Lo/computeTagSize;->onPostMessage:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string v2, "\\u003c"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\\u003e"

    .line 159
    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\\u0026"

    .line 160
    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\\u003d"

    .line 161
    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\\u0027"

    .line 162
    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 168
    iput-object v0, p0, Lo/computeTagSize;->onRelationshipValidationResult:[I

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lo/computeTagSize;->onTransact:I

    const/4 v0, 0x6

    .line 171
    invoke-direct {p0, v0}, Lo/computeTagSize;->onNavigationEvent(I)V

    const-string v0, ":"

    .line 183
    iput-object v0, p0, Lo/computeTagSize;->onNavigationEvent:Ljava/lang/String;

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub:Z

    if-eqz p1, :cond_0

    .line 202
    iput-object p1, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    return-void

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "out == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private asBinder()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10365
    iget v0, p0, Lo/computeTagSize;->onTransact:I

    if-eqz v0, :cond_6

    .line 10368
    iget-object v1, p0, Lo/computeTagSize;->onRelationshipValidationResult:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_4

    const/4 v0, 0x4

    if-eq v2, v0, :cond_3

    const/4 v0, 0x6

    const/4 v1, 0x7

    if-eq v2, v0, :cond_2

    if-ne v2, v1, :cond_1

    .line 630
    iget-boolean v0, p0, Lo/computeTagSize;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10375
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/computeTagSize;->onRelationshipValidationResult:[I

    iget v2, p0, Lo/computeTagSize;->onTransact:I

    sub-int/2addr v2, v4

    aput v1, v0, v2

    return-void

    .line 650
    :cond_3
    iget-object v0, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    iget-object v1, p0, Lo/computeTagSize;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 12375
    iget-object v0, p0, Lo/computeTagSize;->onRelationshipValidationResult:[I

    iget v1, p0, Lo/computeTagSize;->onTransact:I

    sub-int/2addr v1, v4

    const/4 v2, 0x5

    aput v2, v0, v1

    return-void

    .line 645
    :cond_4
    iget-object v0, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 646
    invoke-direct {p0}, Lo/computeTagSize;->asInterface()V

    return-void

    :cond_5
    sub-int/2addr v0, v4

    .line 11375
    aput v3, v1, v0

    .line 641
    invoke-direct {p0}, Lo/computeTagSize;->asInterface()V

    return-void

    .line 10366
    :cond_6
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

    .line 596
    iget-object v0, p0, Lo/computeTagSize;->extraCallback:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 601
    iget v0, p0, Lo/computeTagSize;->onTransact:I

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 602
    iget-object v2, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    iget-object v3, p0, Lo/computeTagSize;->extraCallback:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onMessageChannelReady(IIC)Lo/computeTagSize;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3365
    iget v0, p0, Lo/computeTagSize;->onTransact:I

    if-eqz v0, :cond_4

    .line 3368
    iget-object v1, p0, Lo/computeTagSize;->onRelationshipValidationResult:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    if-eq v0, p2, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Nesting problem."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 346
    iget p1, p0, Lo/computeTagSize;->onTransact:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/computeTagSize;->onTransact:I

    if-ne v0, p2, :cond_2

    .line 348
    invoke-direct {p0}, Lo/computeTagSize;->asInterface()V

    .line 350
    :cond_2
    iget-object p1, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(I)V

    return-object p0

    .line 343
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Dangling name: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3366
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "JsonWriter is closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onNavigationEvent(I)V
    .locals 3

    .line 355
    iget v0, p0, Lo/computeTagSize;->onTransact:I

    iget-object v1, p0, Lo/computeTagSize;->onRelationshipValidationResult:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    shl-int/lit8 v0, v0, 0x1

    .line 356
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lo/computeTagSize;->onRelationshipValidationResult:[I

    .line 358
    :cond_0
    iget-object v0, p0, Lo/computeTagSize;->onRelationshipValidationResult:[I

    iget v1, p0, Lo/computeTagSize;->onTransact:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/computeTagSize;->onTransact:I

    aput p1, v0, v1

    return-void
.end method

.method private onNavigationEvent(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    iget-boolean v0, p0, Lo/computeTagSize;->asInterface:Z

    if-eqz v0, :cond_0

    sget-object v0, Lo/computeTagSize;->onPostMessage:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lo/computeTagSize;->ICustomTabsCallback:[Ljava/lang/String;

    .line 565
    :goto_0
    iget-object v1, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 567
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v1, :cond_6

    .line 569
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-ge v5, v6, :cond_1

    .line 572
    aget-object v5, v0, v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_1
    const/16 v6, 0x2028

    if-ne v5, v6, :cond_2

    const-string v5, "\\u2028"

    goto :goto_2

    :cond_2
    const/16 v6, 0x2029

    if-ne v5, v6, :cond_5

    const-string v5, "\\u2029"

    :cond_3
    :goto_2
    if-ge v4, v3, :cond_4

    .line 584
    iget-object v6, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    sub-int v7, v3, v4

    invoke-virtual {v6, p1, v4, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 586
    :cond_4
    iget-object v4, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v4, v3, 0x1

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    if-ge v4, v1, :cond_7

    .line 590
    iget-object v0, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    sub-int/2addr v1, v4

    invoke-virtual {v0, p1, v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 592
    :cond_7
    iget-object p1, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method private onRelationshipValidationResult()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9365
    iget v0, p0, Lo/computeTagSize;->onTransact:I

    if-eqz v0, :cond_2

    .line 9368
    iget-object v1, p0, Lo/computeTagSize;->onRelationshipValidationResult:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 613
    iget-object v0, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 617
    :goto_0
    invoke-direct {p0}, Lo/computeTagSize;->asInterface()V

    .line 9375
    iget-object v0, p0, Lo/computeTagSize;->onRelationshipValidationResult:[I

    iget v1, p0, Lo/computeTagSize;->onTransact:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void

    .line 615
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9366
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ICustomTabsCallback()Lo/computeTagSize;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1399
    iget-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1400
    invoke-direct {p0}, Lo/computeTagSize;->onRelationshipValidationResult()V

    .line 1401
    iget-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/computeTagSize;->onNavigationEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1402
    iput-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 2326
    :cond_0
    invoke-direct {p0}, Lo/computeTagSize;->asBinder()V

    const/4 v0, 0x1

    .line 2327
    invoke-direct {p0, v0}, Lo/computeTagSize;->onNavigationEvent(I)V

    .line 2328
    iget-object v0, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    return-object p0
.end method

.method public ICustomTabsCallback(Ljava/lang/String;)Lo/computeTagSize;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 388
    iget-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 391
    iget v0, p0, Lo/computeTagSize;->onTransact:I

    if-eqz v0, :cond_0

    .line 394
    iput-object p1, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    return-object p0

    .line 392
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JsonWriter is closed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 389
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 386
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 556
    iget v0, p0, Lo/computeTagSize;->onTransact:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    .line 557
    iget-object v2, p0, Lo/computeTagSize;->onRelationshipValidationResult:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 560
    iput v0, p0, Lo/computeTagSize;->onTransact:I

    return-void

    .line 558
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public extraCallback()Lo/computeTagSize;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 446
    iget-boolean v1, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 4400
    invoke-direct {p0}, Lo/computeTagSize;->onRelationshipValidationResult()V

    .line 4401
    iget-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/computeTagSize;->onNavigationEvent(Ljava/lang/String;)V

    .line 4402
    iput-object v2, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    goto :goto_0

    .line 449
    :cond_0
    iput-object v2, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    return-object p0

    .line 453
    :cond_1
    :goto_0
    invoke-direct {p0}, Lo/computeTagSize;->asBinder()V

    .line 454
    iget-object v0, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public extraCallback(Ljava/lang/String;)Lo/computeTagSize;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 414
    invoke-virtual {p0}, Lo/computeTagSize;->extraCallback()Lo/computeTagSize;

    move-result-object p1

    return-object p1

    .line 3399
    :cond_0
    iget-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3400
    invoke-direct {p0}, Lo/computeTagSize;->onRelationshipValidationResult()V

    .line 3401
    iget-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/computeTagSize;->onNavigationEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3402
    iput-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 417
    :cond_1
    invoke-direct {p0}, Lo/computeTagSize;->asBinder()V

    .line 418
    invoke-direct {p0, p1}, Lo/computeTagSize;->onNavigationEvent(Ljava/lang/String;)V

    return-object p0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    iget v0, p0, Lo/computeTagSize;->onTransact:I

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void

    .line 543
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onMessageChannelReady()Lo/computeTagSize;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0x5d

    .line 298
    invoke-direct {p0, v0, v1, v2}, Lo/computeTagSize;->onMessageChannelReady(IIC)Lo/computeTagSize;

    move-result-object v0

    return-object v0
.end method

.method public onMessageChannelReady(Ljava/lang/Number;)Lo/computeTagSize;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 523
    invoke-virtual {p0}, Lo/computeTagSize;->extraCallback()Lo/computeTagSize;

    move-result-object p1

    return-object p1

    .line 8399
    :cond_0
    iget-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8400
    invoke-direct {p0}, Lo/computeTagSize;->onRelationshipValidationResult()V

    .line 8401
    iget-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/computeTagSize;->onNavigationEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8402
    iput-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 527
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 528
    iget-boolean v1, p0, Lo/computeTagSize;->onMessageChannelReady:Z

    if-nez v1, :cond_3

    const-string v1, "-Infinity"

    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 530
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Numeric values must be finite, but was "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_3
    :goto_0
    invoke-direct {p0}, Lo/computeTagSize;->asBinder()V

    .line 533
    iget-object p1, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public onMessageChannelReady(Z)Lo/computeTagSize;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5399
    iget-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5400
    invoke-direct {p0}, Lo/computeTagSize;->onRelationshipValidationResult()V

    .line 5401
    iget-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/computeTagSize;->onNavigationEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5402
    iput-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 465
    :cond_0
    invoke-direct {p0}, Lo/computeTagSize;->asBinder()V

    .line 466
    iget-object v0, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public onNavigationEvent()Lo/computeTagSize;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2399
    iget-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2400
    invoke-direct {p0}, Lo/computeTagSize;->onRelationshipValidationResult()V

    .line 2401
    iget-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/computeTagSize;->onNavigationEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2402
    iput-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 3326
    :cond_0
    invoke-direct {p0}, Lo/computeTagSize;->asBinder()V

    const/4 v0, 0x3

    .line 3327
    invoke-direct {p0, v0}, Lo/computeTagSize;->onNavigationEvent(I)V

    .line 3328
    iget-object v0, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    return-object p0
.end method

.method public onPostMessage()Lo/computeTagSize;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/16 v2, 0x7d

    .line 318
    invoke-direct {p0, v0, v1, v2}, Lo/computeTagSize;->onMessageChannelReady(IIC)Lo/computeTagSize;

    move-result-object v0

    return-object v0
.end method

.method public onPostMessage(J)Lo/computeTagSize;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7399
    iget-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7400
    invoke-direct {p0}, Lo/computeTagSize;->onRelationshipValidationResult()V

    .line 7401
    iget-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/computeTagSize;->onNavigationEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7402
    iput-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 509
    :cond_0
    invoke-direct {p0}, Lo/computeTagSize;->asBinder()V

    .line 510
    iget-object v0, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public onPostMessage(Ljava/lang/Boolean;)Lo/computeTagSize;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 477
    invoke-virtual {p0}, Lo/computeTagSize;->extraCallback()Lo/computeTagSize;

    move-result-object p1

    return-object p1

    .line 6399
    :cond_0
    iget-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6400
    invoke-direct {p0}, Lo/computeTagSize;->onRelationshipValidationResult()V

    .line 6401
    iget-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/computeTagSize;->onNavigationEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6402
    iput-object v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 480
    :cond_1
    invoke-direct {p0}, Lo/computeTagSize;->asBinder()V

    .line 481
    iget-object v0, p0, Lo/computeTagSize;->asBinder:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "true"

    goto :goto_0

    :cond_2
    const-string p1, "false"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method
