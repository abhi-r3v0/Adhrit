.class public Lo/checkNoSpaceLeft;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final extraCallback:[C


# instance fields
.field private final ICustomTabsCallback:[C

.field private ICustomTabsCallback$Stub:J

.field private ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

.field private ICustomTabsService:I

.field private asBinder:I

.field private asInterface:I

.field private getInterfaceDescriptor:I

.field private newSession:[Ljava/lang/String;

.field public onMessageChannelReady:Z

.field onNavigationEvent:I

.field private final onPostMessage:Ljava/io/Reader;

.field private onRelationshipValidationResult:I

.field private onTransact:I

.field private postMessage:[I

.field private warmup:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ")]}\'\n"

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lo/checkNoSpaceLeft;->extraCallback:[C

    .line 1590
    new-instance v0, Lo/checkNoSpaceLeft$4;

    invoke-direct {v0}, Lo/checkNoSpaceLeft$4;-><init>()V

    sput-object v0, Lo/computeSInt32Size;->ICustomTabsCallback:Lo/computeSInt32Size;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 239
    iput-object v1, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    .line 240
    iput v0, p0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 241
    iput v0, p0, Lo/checkNoSpaceLeft;->asInterface:I

    .line 243
    iput v0, p0, Lo/checkNoSpaceLeft;->asBinder:I

    .line 244
    iput v0, p0, Lo/checkNoSpaceLeft;->onRelationshipValidationResult:I

    .line 246
    iput v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    const/16 v1, 0x20

    new-array v2, v1, [I

    .line 270
    iput-object v2, p0, Lo/checkNoSpaceLeft;->warmup:[I

    .line 271
    iput v0, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    const/4 v3, 0x0

    add-int/lit8 v3, v3, 0x1

    .line 273
    iput v3, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    const/4 v3, 0x6

    aput v3, v2, v0

    new-array v0, v1, [Ljava/lang/String;

    .line 284
    iput-object v0, p0, Lo/checkNoSpaceLeft;->newSession:[Ljava/lang/String;

    new-array v0, v1, [I

    .line 285
    iput-object v0, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    if-eqz p1, :cond_0

    .line 294
    iput-object p1, p0, Lo/checkNoSpaceLeft;->onPostMessage:Ljava/io/Reader;

    return-void

    .line 292
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "in == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ICustomTabsCallback(I)V
    .locals 3

    .line 1265
    iget v0, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    iget-object v1, p0, Lo/checkNoSpaceLeft;->warmup:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    shl-int/lit8 v0, v0, 0x1

    .line 1267
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lo/checkNoSpaceLeft;->warmup:[I

    .line 1268
    iget-object v1, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    .line 1269
    iget-object v1, p0, Lo/checkNoSpaceLeft;->newSession:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lo/checkNoSpaceLeft;->newSession:[Ljava/lang/String;

    .line 1271
    :cond_0
    iget-object v0, p0, Lo/checkNoSpaceLeft;->warmup:[I

    iget v1, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    aput p1, v0, v1

    return-void
.end method

.method private ICustomTabsCallback(C)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    .line 18404
    :cond_0
    :pswitch_0
    iget-boolean p1, p0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 18564
    :cond_1
    new-instance p1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    :pswitch_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private ICustomTabsCallback(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1431
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1433
    :goto_0
    iget v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/2addr v1, v0

    iget v2, p0, Lo/checkNoSpaceLeft;->asInterface:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    invoke-direct {p0, v0}, Lo/checkNoSpaceLeft;->onPostMessage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    return v3

    .line 1434
    :cond_1
    :goto_1
    iget-object v1, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    iget v2, p0, Lo/checkNoSpaceLeft;->onTransact:I

    aget-char v1, v1, v2

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ne v1, v4, :cond_2

    .line 1435
    iget v1, p0, Lo/checkNoSpaceLeft;->asBinder:I

    add-int/2addr v1, v5

    iput v1, p0, Lo/checkNoSpaceLeft;->asBinder:I

    add-int/lit8 v2, v2, 0x1

    .line 1436
    iput v2, p0, Lo/checkNoSpaceLeft;->onRelationshipValidationResult:I

    goto :goto_3

    :cond_2
    :goto_2
    if-ge v3, v0, :cond_4

    .line 1440
    iget-object v1, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    iget v2, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/2addr v2, v3

    aget-char v1, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1433
    :cond_3
    :goto_3
    iget v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/2addr v1, v5

    iput v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    goto :goto_0

    :cond_4
    return v5
.end method

.method private ICustomTabsService$Stub$Proxy()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1500
    iget v0, p0, Lo/checkNoSpaceLeft;->onTransact:I

    iget v1, p0, Lo/checkNoSpaceLeft;->asInterface:I

    const-string v2, "Unterminated escape sequence"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v3}, Lo/checkNoSpaceLeft;->onPostMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 26564
    :cond_0
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1504
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    iget v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lo/checkNoSpaceLeft;->onTransact:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_e

    const/16 v3, 0x22

    if-eq v0, v3, :cond_f

    const/16 v3, 0x27

    if-eq v0, v3, :cond_f

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_f

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_f

    const/16 v3, 0x62

    if-eq v0, v3, :cond_d

    const/16 v3, 0x66

    if-eq v0, v3, :cond_c

    const/16 v5, 0x6e

    if-eq v0, v5, :cond_b

    const/16 v5, 0x72

    if-eq v0, v5, :cond_a

    const/16 v5, 0x74

    if-eq v0, v5, :cond_9

    const/16 v5, 0x75

    if-ne v0, v5, :cond_8

    const/4 v0, 0x4

    add-int/2addr v4, v0

    .line 1507
    iget v5, p0, Lo/checkNoSpaceLeft;->asInterface:I

    if-le v4, v5, :cond_3

    invoke-direct {p0, v0}, Lo/checkNoSpaceLeft;->onPostMessage(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 27564
    :cond_2
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 1512
    iget v4, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/lit8 v5, v4, 0x4

    :goto_2
    if-ge v4, v5, :cond_7

    .line 1513
    iget-object v6, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    aget-char v6, v6, v4

    shl-int/lit8 v2, v2, 0x4

    int-to-char v2, v2

    const/16 v7, 0x30

    if-lt v6, v7, :cond_4

    const/16 v7, 0x39

    if-gt v6, v7, :cond_4

    add-int/lit8 v6, v6, -0x30

    :goto_3
    add-int/2addr v2, v6

    int-to-char v2, v2

    goto :goto_5

    :cond_4
    const/16 v7, 0x61

    if-lt v6, v7, :cond_5

    if-gt v6, v3, :cond_5

    add-int/lit8 v6, v6, -0x61

    :goto_4
    add-int/2addr v6, v1

    goto :goto_3

    :cond_5
    const/16 v7, 0x41

    if-lt v6, v7, :cond_6

    const/16 v7, 0x46

    if-gt v6, v7, :cond_6

    add-int/lit8 v6, v6, -0x41

    goto :goto_4

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1522
    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\u"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    iget v5, p0, Lo/checkNoSpaceLeft;->onTransact:I

    invoke-direct {v3, v4, v5, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1525
    :cond_7
    iget v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/2addr v1, v0

    iput v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    return v2

    .line 28564
    :cond_8
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid escape sequence"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/16 v0, 0x9

    return v0

    :cond_a
    const/16 v0, 0xd

    return v0

    :cond_b
    return v1

    :cond_c
    const/16 v0, 0xc

    return v0

    :cond_d
    const/16 v0, 0x8

    return v0

    .line 1544
    :cond_e
    iget v1, p0, Lo/checkNoSpaceLeft;->asBinder:I

    add-int/2addr v1, v3

    iput v1, p0, Lo/checkNoSpaceLeft;->asBinder:I

    .line 1545
    iput v4, p0, Lo/checkNoSpaceLeft;->onRelationshipValidationResult:I

    :cond_f
    return v0
.end method

.method private IPostMessageService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1415
    :cond_0
    iget v0, p0, Lo/checkNoSpaceLeft;->onTransact:I

    iget v1, p0, Lo/checkNoSpaceLeft;->asInterface:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-direct {p0, v2}, Lo/checkNoSpaceLeft;->onPostMessage(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1416
    :cond_1
    iget-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    iget v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lo/checkNoSpaceLeft;->onTransact:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 1418
    iget v0, p0, Lo/checkNoSpaceLeft;->asBinder:I

    add-int/2addr v0, v2

    iput v0, p0, Lo/checkNoSpaceLeft;->asBinder:I

    .line 1419
    iput v3, p0, Lo/checkNoSpaceLeft;->onRelationshipValidationResult:I

    return-void

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_3
    return-void
.end method

.method private mayLaunchUrl()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    iget v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    aget-char v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x74

    if-eq v0, v2, :cond_5

    const/16 v2, 0x54

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/16 v2, 0x66

    if-eq v0, v2, :cond_4

    const/16 v2, 0x46

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x7

    const-string v2, "null"

    const-string v3, "NULL"

    goto :goto_3

    :cond_4
    :goto_1
    const/4 v0, 0x6

    const-string v2, "false"

    const-string v3, "FALSE"

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x5

    const-string v2, "true"

    const-string v3, "TRUE"

    .line 621
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    :goto_4
    if-ge v5, v4, :cond_8

    .line 623
    iget v6, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/2addr v6, v5

    iget v7, p0, Lo/checkNoSpaceLeft;->asInterface:I

    if-lt v6, v7, :cond_6

    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, v6}, Lo/checkNoSpaceLeft;->onPostMessage(I)Z

    move-result v6

    if-nez v6, :cond_6

    return v1

    .line 626
    :cond_6
    iget-object v6, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    iget v7, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/2addr v7, v5

    aget-char v6, v6, v7

    .line 627
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    return v1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 632
    :cond_8
    iget v2, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/2addr v2, v4

    iget v3, p0, Lo/checkNoSpaceLeft;->asInterface:I

    if-lt v2, v3, :cond_9

    add-int/lit8 v2, v4, 0x1

    invoke-direct {p0, v2}, Lo/checkNoSpaceLeft;->onPostMessage(I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    iget v3, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/2addr v3, v4

    aget-char v2, v2, v3

    .line 633
    invoke-direct {p0, v2}, Lo/checkNoSpaceLeft;->ICustomTabsCallback(C)Z

    move-result v2

    if-eqz v2, :cond_a

    return v1

    .line 638
    :cond_a
    iget v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/2addr v1, v4

    iput v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 639
    iput v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return v0
.end method

.method private onMessageChannelReady(Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1323
    iget-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    .line 1324
    iget v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 1325
    iget v2, p0, Lo/checkNoSpaceLeft;->asInterface:I

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 1328
    iput v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 1329
    invoke-direct {p0, v3}, Lo/checkNoSpaceLeft;->onPostMessage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1332
    iget v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 1333
    iget v2, p0, Lo/checkNoSpaceLeft;->asInterface:I

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 1397
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v4, v1, 0x1

    .line 1336
    aget-char v1, v0, v1

    const/16 v5, 0xa

    if-ne v1, v5, :cond_3

    .line 1338
    iget v1, p0, Lo/checkNoSpaceLeft;->asBinder:I

    add-int/2addr v1, v3

    iput v1, p0, Lo/checkNoSpaceLeft;->asBinder:I

    .line 1339
    iput v4, p0, Lo/checkNoSpaceLeft;->onRelationshipValidationResult:I

    goto/16 :goto_2

    :cond_3
    const/16 v5, 0x20

    if-eq v1, v5, :cond_c

    const/16 v5, 0xd

    if-eq v1, v5, :cond_c

    const/16 v5, 0x9

    if-eq v1, v5, :cond_c

    const-string v5, "Use JsonReader.setLenient(true) to accept malformed JSON"

    const/16 v6, 0x2f

    if-ne v1, v6, :cond_9

    .line 1346
    iput v4, p0, Lo/checkNoSpaceLeft;->onTransact:I

    const/4 v7, 0x2

    if-ne v4, v2, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 1348
    iput v4, p0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 1349
    invoke-direct {p0, v7}, Lo/checkNoSpaceLeft;->onPostMessage(I)Z

    move-result v2

    .line 1350
    iget v4, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/2addr v4, v3

    iput v4, p0, Lo/checkNoSpaceLeft;->onTransact:I

    if-nez v2, :cond_4

    return v1

    .line 23404
    :cond_4
    iget-boolean v2, p0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    if-eqz v2, :cond_8

    .line 1357
    iget v2, p0, Lo/checkNoSpaceLeft;->onTransact:I

    aget-char v3, v0, v2

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_6

    if-eq v3, v6, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 1371
    iput v2, p0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 1372
    invoke-direct {p0}, Lo/checkNoSpaceLeft;->IPostMessageService()V

    .line 1373
    iget v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 1374
    iget v2, p0, Lo/checkNoSpaceLeft;->asInterface:I

    goto :goto_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 1361
    iput v2, p0, Lo/checkNoSpaceLeft;->onTransact:I

    const-string v1, "*/"

    .line 1362
    invoke-direct {p0, v1}, Lo/checkNoSpaceLeft;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1365
    iget v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/2addr v1, v7

    .line 1366
    iget v2, p0, Lo/checkNoSpaceLeft;->asInterface:I

    goto/16 :goto_0

    .line 24564
    :cond_7
    new-instance p1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unterminated comment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23564
    :cond_8
    new-instance p1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const/16 v2, 0x23

    if-ne v1, v2, :cond_b

    .line 1381
    iput v4, p0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 25404
    iget-boolean v1, p0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    if-eqz v1, :cond_a

    .line 1388
    invoke-direct {p0}, Lo/checkNoSpaceLeft;->IPostMessageService()V

    .line 1389
    iget v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 1390
    iget v2, p0, Lo/checkNoSpaceLeft;->asInterface:I

    goto/16 :goto_0

    .line 25564
    :cond_a
    new-instance p1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1392
    :cond_b
    iput v4, p0, Lo/checkNoSpaceLeft;->onTransact:I

    return v1

    :cond_c
    :goto_2
    move v1, v4

    goto/16 :goto_0
.end method

.method private onMessageChannelReady(C)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 988
    iget-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    const/4 v1, 0x0

    .line 991
    :goto_0
    iget v2, p0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 992
    iget v3, p0, Lo/checkNoSpaceLeft;->asInterface:I

    move v4, v2

    :goto_1
    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v4, v3, :cond_5

    add-int/lit8 v7, v4, 0x1

    .line 996
    aget-char v4, v0, v4

    if-ne v4, p1, :cond_1

    .line 999
    iput v7, p0, Lo/checkNoSpaceLeft;->onTransact:I

    sub-int/2addr v7, v2

    sub-int/2addr v7, v6

    if-nez v1, :cond_0

    .line 1002
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v2, v7}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 1004
    :cond_0
    invoke-virtual {v1, v0, v2, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1005
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v8, 0x5c

    if-ne v4, v8, :cond_3

    .line 1008
    iput v7, p0, Lo/checkNoSpaceLeft;->onTransact:I

    sub-int/2addr v7, v2

    sub-int/2addr v7, v6

    if-nez v1, :cond_2

    add-int/lit8 v1, v7, 0x1

    shl-int/2addr v1, v6

    .line 1012
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    .line 1014
    :cond_2
    invoke-virtual {v1, v0, v2, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1015
    invoke-direct {p0}, Lo/checkNoSpaceLeft;->ICustomTabsService$Stub$Proxy()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 1020
    iget v4, p0, Lo/checkNoSpaceLeft;->asBinder:I

    add-int/2addr v4, v6

    iput v4, p0, Lo/checkNoSpaceLeft;->asBinder:I

    .line 1021
    iput v7, p0, Lo/checkNoSpaceLeft;->onRelationshipValidationResult:I

    :cond_4
    move v4, v7

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    sub-int v1, v4, v2

    shl-int/2addr v1, v6

    .line 1027
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    :cond_6
    sub-int v3, v4, v2

    .line 1029
    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1030
    iput v4, p0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 1031
    invoke-direct {p0, v6}, Lo/checkNoSpaceLeft;->onPostMessage(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    .line 19564
    :cond_7
    new-instance p1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unterminated string"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onNavigationEvent(C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1098
    iget-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    .line 1100
    :goto_0
    iget v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 1101
    iget v2, p0, Lo/checkNoSpaceLeft;->asInterface:I

    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    add-int/lit8 v4, v1, 0x1

    .line 1104
    aget-char v1, v0, v1

    if-ne v1, p1, :cond_0

    .line 1106
    iput v4, p0, Lo/checkNoSpaceLeft;->onTransact:I

    return-void

    :cond_0
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    .line 1109
    iput v4, p0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 1110
    invoke-direct {p0}, Lo/checkNoSpaceLeft;->ICustomTabsService$Stub$Proxy()C

    goto :goto_0

    :cond_1
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    .line 1114
    iget v1, p0, Lo/checkNoSpaceLeft;->asBinder:I

    add-int/2addr v1, v3

    iput v1, p0, Lo/checkNoSpaceLeft;->asBinder:I

    .line 1115
    iput v4, p0, Lo/checkNoSpaceLeft;->onRelationshipValidationResult:I

    :cond_2
    move v1, v4

    goto :goto_1

    .line 1118
    :cond_3
    iput v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 1119
    invoke-direct {p0, v3}, Lo/checkNoSpaceLeft;->onPostMessage(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 21564
    :cond_4
    new-instance p1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unterminated string"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onPostMessage(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1280
    iget-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    .line 1281
    iget v1, p0, Lo/checkNoSpaceLeft;->onRelationshipValidationResult:I

    iget v2, p0, Lo/checkNoSpaceLeft;->onTransact:I

    sub-int/2addr v1, v2

    iput v1, p0, Lo/checkNoSpaceLeft;->onRelationshipValidationResult:I

    .line 1282
    iget v1, p0, Lo/checkNoSpaceLeft;->asInterface:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 1283
    iput v1, p0, Lo/checkNoSpaceLeft;->asInterface:I

    .line 1284
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1286
    :cond_0
    iput v3, p0, Lo/checkNoSpaceLeft;->asInterface:I

    .line 1289
    :goto_0
    iput v3, p0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 1291
    :cond_1
    iget-object v1, p0, Lo/checkNoSpaceLeft;->onPostMessage:Ljava/io/Reader;

    iget v2, p0, Lo/checkNoSpaceLeft;->asInterface:I

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1292
    iget v2, p0, Lo/checkNoSpaceLeft;->asInterface:I

    add-int/2addr v2, v1

    iput v2, p0, Lo/checkNoSpaceLeft;->asInterface:I

    .line 1295
    iget v1, p0, Lo/checkNoSpaceLeft;->asBinder:I

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Lo/checkNoSpaceLeft;->onRelationshipValidationResult:I

    if-nez v1, :cond_2

    if-lez v2, :cond_2

    aget-char v2, v0, v3

    const v5, 0xfeff

    if-ne v2, v5, :cond_2

    .line 1296
    iget v2, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/2addr v2, v4

    iput v2, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/lit8 v1, v1, 0x1

    .line 1297
    iput v1, p0, Lo/checkNoSpaceLeft;->onRelationshipValidationResult:I

    add-int/lit8 p1, p1, 0x1

    .line 1301
    :cond_2
    iget v1, p0, Lo/checkNoSpaceLeft;->asInterface:I

    if-lt v1, p1, :cond_1

    return v4

    :cond_3
    return v3
.end method

.method private postMessage()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    .line 1047
    :goto_0
    iget v3, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int v4, v3, v2

    iget v5, p0, Lo/checkNoSpaceLeft;->asInterface:I

    if-ge v4, v5, :cond_3

    .line 1048
    iget-object v4, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    add-int/2addr v3, v2

    aget-char v3, v4, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_4

    const/16 v4, 0xc

    if-eq v3, v4, :cond_4

    const/16 v4, 0xd

    if-eq v3, v4, :cond_4

    const/16 v4, 0x20

    if-eq v3, v4, :cond_4

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_4

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_4

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_4

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20404
    :cond_1
    :pswitch_0
    iget-boolean v0, p0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 20564
    :cond_2
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :cond_3
    iget-object v3, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    array-length v3, v3

    if-ge v2, v3, :cond_5

    add-int/lit8 v3, v2, 0x1

    .line 1072
    invoke-direct {p0, v3}, Lo/checkNoSpaceLeft;->onPostMessage(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    :pswitch_1
    move v0, v2

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1083
    :cond_6
    iget-object v3, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    iget v4, p0, Lo/checkNoSpaceLeft;->onTransact:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1084
    iget v3, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/2addr v3, v2

    iput v3, p0, Lo/checkNoSpaceLeft;->onTransact:I

    const/4 v2, 0x1

    .line 1086
    invoke-direct {p0, v2}, Lo/checkNoSpaceLeft;->onPostMessage(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    if-nez v1, :cond_7

    .line 1091
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    iget v3, p0, Lo/checkNoSpaceLeft;->onTransact:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    iget v3, p0, Lo/checkNoSpaceLeft;->onTransact:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1092
    :goto_3
    iget v2, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/2addr v2, v0

    iput v2, p0, Lo/checkNoSpaceLeft;->onTransact:I

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateVisuals()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 644
    iget-object v1, v0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    .line 645
    iget v2, v0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 646
    iget v3, v0, Lo/checkNoSpaceLeft;->asInterface:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    :goto_0
    add-int v14, v2, v8

    const/4 v15, 0x2

    if-ne v14, v3, :cond_1

    .line 658
    array-length v2, v1

    if-ne v8, v2, :cond_0

    return v7

    :cond_0
    add-int/lit8 v2, v8, 0x1

    .line 663
    invoke-direct {v0, v2}, Lo/checkNoSpaceLeft;->onPostMessage(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 666
    iget v2, v0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 667
    iget v3, v0, Lo/checkNoSpaceLeft;->asInterface:I

    :cond_1
    add-int v14, v2, v8

    .line 670
    aget-char v14, v1, v14

    const/16 v7, 0x2b

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-eq v14, v7, :cond_1c

    const/16 v7, 0x45

    if-eq v14, v7, :cond_19

    const/16 v7, 0x65

    if-eq v14, v7, :cond_19

    const/16 v7, 0x2d

    if-eq v14, v7, :cond_16

    const/16 v7, 0x2e

    if-eq v14, v7, :cond_14

    const/16 v7, 0x30

    if-lt v14, v7, :cond_c

    const/16 v7, 0x39

    if-le v14, v7, :cond_2

    goto :goto_7

    :cond_2
    if-eq v9, v6, :cond_b

    if-nez v9, :cond_3

    goto :goto_5

    :cond_3
    if-ne v9, v15, :cond_7

    const-wide/16 v16, 0x0

    cmp-long v4, v11, v16

    if-nez v4, :cond_4

    const/4 v4, 0x0

    return v4

    :cond_4
    const-wide/16 v4, 0xa

    mul-long v4, v4, v11

    add-int/lit8 v14, v14, -0x30

    int-to-long v14, v14

    sub-long/2addr v4, v14

    const-wide v14, -0xcccccccccccccccL

    cmp-long v7, v11, v14

    if-gtz v7, :cond_6

    if-nez v7, :cond_5

    cmp-long v7, v4, v11

    if-gez v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v7, 0x1

    :goto_2
    and-int/2addr v10, v7

    move-wide v11, v4

    goto :goto_3

    :cond_7
    if-ne v9, v4, :cond_8

    const/4 v7, 0x0

    const/4 v9, 0x4

    goto :goto_6

    :cond_8
    if-eq v9, v5, :cond_a

    const/4 v4, 0x6

    if-ne v9, v4, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v7, 0x0

    goto :goto_6

    :cond_a
    :goto_4
    const/4 v7, 0x0

    const/4 v9, 0x7

    goto :goto_6

    :cond_b
    :goto_5
    add-int/lit8 v14, v14, -0x30

    neg-int v4, v14

    int-to-long v11, v4

    const/4 v7, 0x0

    const/4 v9, 0x2

    :goto_6
    const-wide/16 v16, 0x0

    goto/16 :goto_c

    .line 707
    :cond_c
    :goto_7
    invoke-direct {v0, v14}, Lo/checkNoSpaceLeft;->ICustomTabsCallback(C)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    return v1

    :cond_d
    if-ne v9, v15, :cond_11

    if-eqz v10, :cond_11

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, v11, v1

    if-nez v3, :cond_e

    if-eqz v13, :cond_11

    :cond_e
    const-wide/16 v16, 0x0

    cmp-long v1, v11, v16

    if-nez v1, :cond_f

    if-nez v13, :cond_11

    :cond_f
    if-eqz v13, :cond_10

    goto :goto_8

    :cond_10
    neg-long v11, v11

    .line 733
    :goto_8
    iput-wide v11, v0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub:J

    .line 734
    iget v1, v0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/2addr v1, v8

    iput v1, v0, Lo/checkNoSpaceLeft;->onTransact:I

    const/16 v1, 0xf

    .line 735
    iput v1, v0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return v1

    :cond_11
    if-eq v9, v15, :cond_13

    const/4 v1, 0x4

    if-eq v9, v1, :cond_13

    const/4 v1, 0x7

    if-ne v9, v1, :cond_12

    goto :goto_9

    :cond_12
    const/4 v7, 0x0

    return v7

    .line 738
    :cond_13
    :goto_9
    iput v8, v0, Lo/checkNoSpaceLeft;->ICustomTabsService:I

    const/16 v1, 0x10

    .line 739
    iput v1, v0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return v1

    :cond_14
    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-ne v9, v15, :cond_15

    const/4 v9, 0x3

    goto :goto_c

    :cond_15
    return v7

    :cond_16
    const/4 v4, 0x6

    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-nez v9, :cond_17

    const/4 v9, 0x1

    const/4 v13, 0x1

    goto :goto_c

    :cond_17
    if-ne v9, v5, :cond_18

    goto :goto_b

    :cond_18
    return v7

    :cond_19
    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-eq v9, v15, :cond_1b

    const/4 v4, 0x4

    if-ne v9, v4, :cond_1a

    goto :goto_a

    :cond_1a
    return v7

    :cond_1b
    :goto_a
    const/4 v9, 0x5

    goto :goto_c

    :cond_1c
    const/4 v4, 0x6

    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-ne v9, v5, :cond_1d

    :goto_b
    const/4 v9, 0x6

    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_1d
    return v7
.end method

.method private validateRelationship()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1572
    invoke-direct {p0, v0}, Lo/checkNoSpaceLeft;->onMessageChannelReady(Z)I

    .line 1573
    iget v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    sub-int/2addr v1, v0

    iput v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 1575
    sget-object v0, Lo/checkNoSpaceLeft;->extraCallback:[C

    array-length v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Lo/checkNoSpaceLeft;->asInterface:I

    if-le v1, v2, :cond_0

    array-length v0, v0

    invoke-direct {p0, v0}, Lo/checkNoSpaceLeft;->onPostMessage(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1579
    :goto_0
    sget-object v1, Lo/checkNoSpaceLeft;->extraCallback:[C

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1580
    iget-object v2, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    iget v3, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    aget-char v1, v1, v0

    if-eq v2, v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1586
    :cond_2
    iget v0, p0, Lo/checkNoSpaceLeft;->onTransact:I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lo/checkNoSpaceLeft;->onTransact:I

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    iget v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    if-nez v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->requestPostMessageChannel()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ICustomTabsCallback$Stub()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 841
    iget v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    if-nez v0, :cond_0

    .line 843
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->requestPostMessageChannel()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 846
    iput v2, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    .line 847
    iget-object v0, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    iget v1, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 850
    iput v2, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    .line 851
    iget-object v0, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    iget v1, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    sub-int/2addr v1, v3

    aget v4, v0, v1

    add-int/2addr v4, v3

    aput v4, v0, v1

    return v2

    .line 854
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ICustomTabsCallback$Stub$Proxy()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 887
    iget v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    if-nez v0, :cond_0

    .line 889
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->requestPostMessageChannel()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 893
    iput v2, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    .line 894
    iget-object v0, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    iget v1, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 895
    iget-wide v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_2

    .line 899
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    iget v4, p0, Lo/checkNoSpaceLeft;->onTransact:I

    iget v5, p0, Lo/checkNoSpaceLeft;->ICustomTabsService:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 900
    iget v0, p0, Lo/checkNoSpaceLeft;->onTransact:I

    iget v1, p0, Lo/checkNoSpaceLeft;->ICustomTabsService:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/checkNoSpaceLeft;->onTransact:I

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 904
    invoke-direct {p0}, Lo/checkNoSpaceLeft;->postMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 906
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    .line 902
    :goto_1
    invoke-direct {p0, v0}, Lo/checkNoSpaceLeft;->onMessageChannelReady(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 909
    :goto_2
    iput v3, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    .line 910
    iget-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 911
    iget-boolean v3, p0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    if-nez v3, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    .line 912
    :cond_8
    new-instance v2, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 913
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_3
    const/4 v3, 0x0

    .line 915
    iput-object v3, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 916
    iput v2, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    .line 917
    iget-object v2, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    iget v3, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0
.end method

.method public ICustomTabsService()Ljava/lang/String;
    .locals 5

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1465
    iget v1, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 1466
    iget-object v3, p0, Lo/checkNoSpaceLeft;->warmup:[I

    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x2e

    .line 1475
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1476
    iget-object v3, p0, Lo/checkNoSpaceLeft;->newSession:[Ljava/lang/String;

    aget-object v4, v3, v2

    if-eqz v4, :cond_2

    .line 1477
    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0x5b

    .line 1469
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1487
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asBinder()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 778
    iget v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    if-nez v0, :cond_0

    .line 780
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->requestPostMessageChannel()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 784
    invoke-direct {p0}, Lo/checkNoSpaceLeft;->postMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    .line 786
    invoke-direct {p0, v0}, Lo/checkNoSpaceLeft;->onMessageChannelReady(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    .line 788
    invoke-direct {p0, v0}, Lo/checkNoSpaceLeft;->onMessageChannelReady(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 792
    iput v1, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    .line 793
    iget-object v1, p0, Lo/checkNoSpaceLeft;->newSession:[Ljava/lang/String;

    iget v2, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    .line 790
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asInterface()Lo/writeRawBytes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    iget v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    if-nez v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->requestPostMessageChannel()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 458
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 456
    :pswitch_0
    sget-object v0, Lo/writeRawBytes;->ICustomTabsCallback$Stub:Lo/writeRawBytes;

    return-object v0

    .line 454
    :pswitch_1
    sget-object v0, Lo/writeRawBytes;->onTransact:Lo/writeRawBytes;

    return-object v0

    .line 441
    :pswitch_2
    sget-object v0, Lo/writeRawBytes;->onNavigationEvent:Lo/writeRawBytes;

    return-object v0

    .line 451
    :pswitch_3
    sget-object v0, Lo/writeRawBytes;->asInterface:Lo/writeRawBytes;

    return-object v0

    .line 446
    :pswitch_4
    sget-object v0, Lo/writeRawBytes;->onRelationshipValidationResult:Lo/writeRawBytes;

    return-object v0

    .line 444
    :pswitch_5
    sget-object v0, Lo/writeRawBytes;->asBinder:Lo/writeRawBytes;

    return-object v0

    .line 437
    :pswitch_6
    sget-object v0, Lo/writeRawBytes;->extraCallback:Lo/writeRawBytes;

    return-object v0

    .line 435
    :pswitch_7
    sget-object v0, Lo/writeRawBytes;->onMessageChannelReady:Lo/writeRawBytes;

    return-object v0

    .line 433
    :pswitch_8
    sget-object v0, Lo/writeRawBytes;->onPostMessage:Lo/writeRawBytes;

    return-object v0

    .line 431
    :pswitch_9
    sget-object v0, Lo/writeRawBytes;->ICustomTabsCallback:Lo/writeRawBytes;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1217
    iput v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    .line 1218
    iget-object v1, p0, Lo/checkNoSpaceLeft;->warmup:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    .line 1219
    iput v0, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    .line 1220
    iget-object v0, p0, Lo/checkNoSpaceLeft;->onPostMessage:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public extraCallback()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    iget v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    if-nez v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->requestPostMessageChannel()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 347
    invoke-direct {p0, v0}, Lo/checkNoSpaceLeft;->ICustomTabsCallback(I)V

    .line 348
    iget-object v1, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    iget v2, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    .line 349
    iput v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return-void

    .line 351
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final extraCommand()Ljava/lang/String;
    .locals 4

    .line 1454
    iget v0, p0, Lo/checkNoSpaceLeft;->asBinder:I

    add-int/lit8 v0, v0, 0x1

    .line 1455
    iget v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    iget v2, p0, Lo/checkNoSpaceLeft;->onRelationshipValidationResult:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 1456
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " column "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->ICustomTabsService()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceDescriptor()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1231
    :cond_0
    iget v2, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    if-nez v2, :cond_1

    .line 1233
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->requestPostMessageChannel()I

    move-result v2

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 1237
    invoke-direct {p0, v4}, Lo/checkNoSpaceLeft;->ICustomTabsCallback(I)V

    :goto_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_2
    if-ne v2, v4, :cond_3

    .line 1240
    invoke-direct {p0, v3}, Lo/checkNoSpaceLeft;->ICustomTabsCallback(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1243
    iget v2, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    sub-int/2addr v2, v4

    iput v2, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_7

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 1246
    iget v2, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    sub-int/2addr v2, v4

    iput v2, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    goto :goto_1

    :cond_5
    const/16 v3, 0xe

    const/16 v5, 0xd

    const/16 v6, 0x9

    const/16 v7, 0xc

    const/16 v8, 0xa

    if-eq v2, v3, :cond_b

    if-ne v2, v8, :cond_6

    goto :goto_4

    :cond_6
    const/16 v3, 0x8

    if-eq v2, v3, :cond_a

    if-ne v2, v7, :cond_7

    goto :goto_3

    :cond_7
    if-eq v2, v6, :cond_9

    if-ne v2, v5, :cond_8

    goto :goto_2

    :cond_8
    const/16 v3, 0x10

    if-ne v2, v3, :cond_10

    .line 1255
    iget v2, p0, Lo/checkNoSpaceLeft;->onTransact:I

    iget v3, p0, Lo/checkNoSpaceLeft;->ICustomTabsService:I

    add-int/2addr v2, v3

    iput v2, p0, Lo/checkNoSpaceLeft;->onTransact:I

    goto/16 :goto_7

    :cond_9
    :goto_2
    const/16 v2, 0x22

    .line 1253
    invoke-direct {p0, v2}, Lo/checkNoSpaceLeft;->onNavigationEvent(C)V

    goto/16 :goto_7

    :cond_a
    :goto_3
    const/16 v2, 0x27

    .line 1251
    invoke-direct {p0, v2}, Lo/checkNoSpaceLeft;->onNavigationEvent(C)V

    goto/16 :goto_7

    :cond_b
    :goto_4
    const/4 v2, 0x0

    .line 22126
    :goto_5
    iget v3, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int v9, v3, v2

    iget v10, p0, Lo/checkNoSpaceLeft;->asInterface:I

    if-ge v9, v10, :cond_f

    .line 22127
    iget-object v9, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    add-int/2addr v3, v2

    aget-char v3, v9, v3

    if-eq v3, v6, :cond_e

    if-eq v3, v8, :cond_e

    if-eq v3, v7, :cond_e

    if-eq v3, v5, :cond_e

    const/16 v9, 0x20

    if-eq v3, v9, :cond_e

    const/16 v9, 0x23

    if-eq v3, v9, :cond_c

    const/16 v9, 0x2c

    if-eq v3, v9, :cond_e

    const/16 v9, 0x2f

    if-eq v3, v9, :cond_c

    const/16 v9, 0x3d

    if-eq v3, v9, :cond_c

    const/16 v9, 0x7b

    if-eq v3, v9, :cond_e

    const/16 v9, 0x7d

    if-eq v3, v9, :cond_e

    const/16 v9, 0x3a

    if-eq v3, v9, :cond_e

    const/16 v9, 0x3b

    if-eq v3, v9, :cond_c

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 22404
    :cond_c
    :pswitch_0
    iget-boolean v3, p0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    if-eqz v3, :cond_d

    goto :goto_6

    .line 22564
    :cond_d
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22145
    :cond_e
    :goto_6
    :pswitch_1
    iget v3, p0, Lo/checkNoSpaceLeft;->onTransact:I

    add-int/2addr v3, v2

    iput v3, p0, Lo/checkNoSpaceLeft;->onTransact:I

    goto :goto_7

    :cond_f
    add-int/2addr v3, v2

    .line 22149
    iput v3, p0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 22150
    invoke-direct {p0, v4}, Lo/checkNoSpaceLeft;->onPostMessage(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1257
    :cond_10
    :goto_7
    iput v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    if-nez v1, :cond_0

    .line 1260
    iget-object v0, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    iget v1, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 1261
    iget-object v0, p0, Lo/checkNoSpaceLeft;->newSession:[Ljava/lang/String;

    sub-int/2addr v1, v4

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public newSession()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 932
    iget v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    if-nez v0, :cond_0

    .line 934
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->requestPostMessageChannel()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 938
    iput v2, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    .line 939
    iget-object v0, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    iget v1, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 940
    iget-wide v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub:J

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const-string v3, "Expected a long but was "

    if-ne v0, v1, :cond_2

    .line 944
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    iget v4, p0, Lo/checkNoSpaceLeft;->onTransact:I

    iget v5, p0, Lo/checkNoSpaceLeft;->ICustomTabsService:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 945
    iget v0, p0, Lo/checkNoSpaceLeft;->onTransact:I

    iget v1, p0, Lo/checkNoSpaceLeft;->ICustomTabsService:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/checkNoSpaceLeft;->onTransact:I

    goto :goto_3

    :cond_2
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4

    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 961
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    .line 948
    invoke-direct {p0}, Lo/checkNoSpaceLeft;->postMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-ne v0, v4, :cond_6

    const/16 v0, 0x27

    goto :goto_1

    :cond_6
    const/16 v0, 0x22

    .line 950
    :goto_1
    invoke-direct {p0, v0}, Lo/checkNoSpaceLeft;->onMessageChannelReady(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 953
    :goto_2
    :try_start_0
    iget-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 954
    iput v2, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    .line 955
    iget-object v4, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    iget v5, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    nop

    :goto_3
    const/16 v0, 0xb

    .line 964
    iput v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    .line 965
    iget-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v4, v0

    long-to-double v6, v4

    cmpl-double v8, v6, v0

    if-nez v8, :cond_7

    const/4 v0, 0x0

    .line 970
    iput-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 971
    iput v2, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    .line 972
    iget-object v0, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    iget v1, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-wide v4

    .line 968
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onMessageChannelReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    iget v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    if-nez v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->requestPostMessageChannel()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 365
    iget v0, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    .line 366
    iget-object v1, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 367
    iput v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return-void

    .line 369
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onNavigationEvent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    iget v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->requestPostMessageChannel()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 383
    invoke-direct {p0, v0}, Lo/checkNoSpaceLeft;->ICustomTabsCallback(I)V

    const/4 v0, 0x0

    .line 384
    iput v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return-void

    .line 386
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPostMessage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    if-nez v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->requestPostMessageChannel()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 400
    iget v0, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    .line 401
    iget-object v1, p0, Lo/checkNoSpaceLeft;->newSession:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 402
    iget-object v1, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 403
    iput v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return-void

    .line 405
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onRelationshipValidationResult()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 865
    iget v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    if-nez v0, :cond_0

    .line 867
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->requestPostMessageChannel()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 870
    iput v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    .line 871
    iget-object v0, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    iget v1, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    .line 873
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTransact()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    iget v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    if-nez v0, :cond_0

    .line 808
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->requestPostMessageChannel()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 812
    invoke-direct {p0}, Lo/checkNoSpaceLeft;->postMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    .line 814
    invoke-direct {p0, v0}, Lo/checkNoSpaceLeft;->onMessageChannelReady(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    .line 816
    invoke-direct {p0, v0}, Lo/checkNoSpaceLeft;->onMessageChannelReady(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 818
    iget-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    const/4 v1, 0x0

    .line 819
    iput-object v1, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    .line 821
    iget-wide v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 823
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    iget v2, p0, Lo/checkNoSpaceLeft;->onTransact:I

    iget v3, p0, Lo/checkNoSpaceLeft;->ICustomTabsService:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 824
    iget v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    iget v2, p0, Lo/checkNoSpaceLeft;->ICustomTabsService:I

    add-int/2addr v1, v2

    iput v1, p0, Lo/checkNoSpaceLeft;->onTransact:I

    :goto_0
    const/4 v1, 0x0

    .line 828
    iput v1, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    .line 829
    iget-object v1, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    iget v2, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    .line 826
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final requestPostMessageChannel()I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 463
    iget-object v1, v0, Lo/checkNoSpaceLeft;->warmup:[I

    iget v2, v0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    add-int/lit8 v3, v2, -0x1

    aget v3, v1, v3

    const/16 v4, 0x8

    const/16 v5, 0x27

    const/16 v6, 0x22

    const/16 v7, 0x5d

    const/4 v8, 0x3

    const/4 v9, 0x7

    const/16 v10, 0x3b

    const/16 v11, 0x2c

    const/4 v12, 0x4

    const/4 v13, 0x2

    const-string v14, "Use JsonReader.setLenient(true) to accept malformed JSON"

    const/4 v15, 0x1

    if-ne v3, v15, :cond_0

    sub-int/2addr v2, v15

    .line 465
    aput v13, v1, v2

    goto/16 :goto_0

    :cond_0
    if-ne v3, v13, :cond_4

    .line 468
    invoke-direct {v0, v15}, Lo/checkNoSpaceLeft;->onMessageChannelReady(Z)I

    move-result v1

    if-eq v1, v11, :cond_f

    if-eq v1, v10, :cond_2

    if-ne v1, v7, :cond_1

    .line 471
    iput v12, v0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return v12

    .line 3564
    :cond_1
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unterminated array"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2404
    :cond_2
    iget-boolean v1, v0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    if-eqz v1, :cond_3

    goto/16 :goto_0

    .line 2564
    :cond_3
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v13, 0x5

    if-eq v3, v8, :cond_1f

    if-ne v3, v13, :cond_5

    goto/16 :goto_2

    :cond_5
    if-ne v3, v12, :cond_9

    sub-int/2addr v2, v15

    .line 518
    aput v13, v1, v2

    .line 520
    invoke-direct {v0, v15}, Lo/checkNoSpaceLeft;->onMessageChannelReady(Z)I

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_f

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_8

    .line 10404
    iget-boolean v1, v0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    if-eqz v1, :cond_7

    .line 526
    iget v1, v0, Lo/checkNoSpaceLeft;->onTransact:I

    iget v2, v0, Lo/checkNoSpaceLeft;->asInterface:I

    if-lt v1, v2, :cond_6

    invoke-direct {v0, v15}, Lo/checkNoSpaceLeft;->onPostMessage(I)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_6
    iget-object v1, v0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    iget v2, v0, Lo/checkNoSpaceLeft;->onTransact:I

    aget-char v1, v1, v2

    const/16 v13, 0x3e

    if-ne v1, v13, :cond_f

    add-int/2addr v2, v15

    .line 527
    iput v2, v0, Lo/checkNoSpaceLeft;->onTransact:I

    goto/16 :goto_0

    .line 10564
    :cond_7
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11564
    :cond_8
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \':\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const/4 v1, 0x6

    if-ne v3, v1, :cond_b

    .line 534
    iget-boolean v1, v0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    if-eqz v1, :cond_a

    .line 535
    invoke-direct/range {p0 .. p0}, Lo/checkNoSpaceLeft;->validateRelationship()V

    .line 537
    :cond_a
    iget-object v1, v0, Lo/checkNoSpaceLeft;->warmup:[I

    iget v2, v0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    sub-int/2addr v2, v15

    aput v9, v1, v2

    goto :goto_0

    :cond_b
    if-ne v3, v9, :cond_e

    const/4 v1, 0x0

    .line 539
    invoke-direct {v0, v1}, Lo/checkNoSpaceLeft;->onMessageChannelReady(Z)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    const/16 v1, 0x11

    .line 541
    iput v1, v0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return v1

    .line 12404
    :cond_c
    iget-boolean v1, v0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    if-eqz v1, :cond_d

    .line 544
    iget v1, v0, Lo/checkNoSpaceLeft;->onTransact:I

    sub-int/2addr v1, v15

    iput v1, v0, Lo/checkNoSpaceLeft;->onTransact:I

    goto :goto_0

    .line 12564
    :cond_d
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    if-eq v3, v4, :cond_1e

    .line 550
    :cond_f
    :goto_0
    invoke-direct {v0, v15}, Lo/checkNoSpaceLeft;->onMessageChannelReady(Z)I

    move-result v1

    if-eq v1, v6, :cond_1d

    if-eq v1, v5, :cond_1b

    if-eq v1, v11, :cond_17

    if-eq v1, v10, :cond_17

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_16

    if-eq v1, v7, :cond_15

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_14

    .line 577
    iget v1, v0, Lo/checkNoSpaceLeft;->onTransact:I

    sub-int/2addr v1, v15

    iput v1, v0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 580
    invoke-direct/range {p0 .. p0}, Lo/checkNoSpaceLeft;->mayLaunchUrl()I

    move-result v1

    if-eqz v1, :cond_10

    return v1

    .line 585
    :cond_10
    invoke-direct/range {p0 .. p0}, Lo/checkNoSpaceLeft;->updateVisuals()I

    move-result v1

    if-eqz v1, :cond_11

    return v1

    .line 590
    :cond_11
    iget-object v1, v0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    iget v2, v0, Lo/checkNoSpaceLeft;->onTransact:I

    aget-char v1, v1, v2

    invoke-direct {v0, v1}, Lo/checkNoSpaceLeft;->ICustomTabsCallback(C)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 17404
    iget-boolean v1, v0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    if-eqz v1, :cond_12

    const/16 v1, 0xa

    .line 595
    iput v1, v0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return v1

    .line 17564
    :cond_12
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16564
    :cond_13
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :cond_14
    iput v15, v0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return v15

    :cond_15
    if-ne v3, v15, :cond_17

    .line 554
    iput v12, v0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return v12

    .line 573
    :cond_16
    iput v8, v0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return v8

    :cond_17
    if-eq v3, v15, :cond_19

    const/4 v1, 0x2

    if-ne v3, v1, :cond_18

    goto :goto_1

    .line 14564
    :cond_18
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13404
    :cond_19
    :goto_1
    iget-boolean v1, v0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    if-eqz v1, :cond_1a

    .line 562
    iget v1, v0, Lo/checkNoSpaceLeft;->onTransact:I

    sub-int/2addr v1, v15

    iput v1, v0, Lo/checkNoSpaceLeft;->onTransact:I

    .line 563
    iput v9, v0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return v9

    .line 13564
    :cond_1a
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15404
    :cond_1b
    iget-boolean v1, v0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    if-eqz v1, :cond_1c

    .line 569
    iput v4, v0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return v4

    .line 15564
    :cond_1c
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    const/16 v1, 0x9

    .line 571
    iput v1, v0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return v1

    .line 547
    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    :cond_1f
    :goto_2
    iget-object v1, v0, Lo/checkNoSpaceLeft;->warmup:[I

    iget v2, v0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    sub-int/2addr v2, v15

    aput v12, v1, v2

    const/16 v1, 0x7d

    if-ne v3, v13, :cond_23

    .line 483
    invoke-direct {v0, v15}, Lo/checkNoSpaceLeft;->onMessageChannelReady(Z)I

    move-result v2

    if-eq v2, v11, :cond_23

    if-eq v2, v10, :cond_21

    if-ne v2, v1, :cond_20

    const/4 v1, 0x2

    .line 486
    iput v1, v0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return v1

    .line 5564
    :cond_20
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unterminated object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4404
    :cond_21
    iget-boolean v2, v0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    if-eqz v2, :cond_22

    goto :goto_3

    .line 4564
    :cond_22
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :cond_23
    :goto_3
    invoke-direct {v0, v15}, Lo/checkNoSpaceLeft;->onMessageChannelReady(Z)I

    move-result v2

    if-eq v2, v6, :cond_2a

    if-eq v2, v5, :cond_28

    const-string v4, "Expected name"

    if-eq v2, v1, :cond_26

    .line 8404
    iget-boolean v1, v0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    if-eqz v1, :cond_25

    .line 510
    iget v1, v0, Lo/checkNoSpaceLeft;->onTransact:I

    sub-int/2addr v1, v15

    iput v1, v0, Lo/checkNoSpaceLeft;->onTransact:I

    int-to-char v1, v2

    .line 511
    invoke-direct {v0, v1}, Lo/checkNoSpaceLeft;->ICustomTabsCallback(C)Z

    move-result v1

    if-eqz v1, :cond_24

    const/16 v1, 0xe

    .line 512
    iput v1, v0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return v1

    .line 9564
    :cond_24
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8564
    :cond_25
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_26
    if-eq v3, v13, :cond_27

    const/4 v1, 0x2

    .line 504
    iput v1, v0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return v1

    .line 7564
    :cond_27
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6404
    :cond_28
    iget-boolean v1, v0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    if-eqz v1, :cond_29

    const/16 v1, 0xc

    .line 501
    iput v1, v0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return v1

    .line 6564
    :cond_29
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    const/16 v1, 0xd

    .line 498
    iput v1, v0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public warmup()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1164
    iget v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    if-nez v0, :cond_0

    .line 1166
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->requestPostMessageChannel()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const-string v2, "Expected an int but was "

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 1171
    iget-wide v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub:J

    long-to-int v4, v0

    int-to-long v5, v4

    cmp-long v7, v0, v5

    if-nez v7, :cond_1

    .line 1175
    iput v3, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    .line 1176
    iget-object v0, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    iget v1, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v4

    .line 1173
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 1181
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback:[C

    iget v4, p0, Lo/checkNoSpaceLeft;->onTransact:I

    iget v5, p0, Lo/checkNoSpaceLeft;->ICustomTabsService:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1182
    iget v0, p0, Lo/checkNoSpaceLeft;->onTransact:I

    iget v1, p0, Lo/checkNoSpaceLeft;->ICustomTabsService:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/checkNoSpaceLeft;->onTransact:I

    goto :goto_3

    :cond_3
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-eq v0, v5, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 1198
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    .line 1185
    invoke-direct {p0}, Lo/checkNoSpaceLeft;->postMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-ne v0, v4, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    .line 1187
    :goto_1
    invoke-direct {p0, v0}, Lo/checkNoSpaceLeft;->onMessageChannelReady(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1190
    :goto_2
    :try_start_0
    iget-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1191
    iput v3, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    .line 1192
    iget-object v1, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    iget v4, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    nop

    :goto_3
    const/16 v0, 0xb

    .line 1201
    iput v0, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    .line 1202
    iget-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v4, v0

    int-to-double v5, v4

    cmpl-double v7, v5, v0

    if-nez v7, :cond_8

    const/4 v0, 0x0

    .line 1207
    iput-object v0, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1208
    iput v3, p0, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    .line 1209
    iget-object v0, p0, Lo/checkNoSpaceLeft;->postMessage:[I

    iget v1, p0, Lo/checkNoSpaceLeft;->getInterfaceDescriptor:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v4

    .line 1205
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
