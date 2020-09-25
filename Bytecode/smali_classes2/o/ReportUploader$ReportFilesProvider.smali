.class final Lo/ReportUploader$ReportFilesProvider;
.super Lo/SessionProtobufHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;,
        Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;,
        Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:[I


# instance fields
.field private final asInterface:I

.field private final extraCallback:Lo/SessionProtobufHelper;

.field final onMessageChannelReady:I

.field private final onPostMessage:I

.field private final onRelationshipValidationResult:Lo/SessionProtobufHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [I

    .line 83
    fill-array-data v0, :array_0

    sput-object v0, Lo/ReportUploader$ReportFilesProvider;->ICustomTabsCallback:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data
.end method

.method private constructor <init>(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;)V
    .locals 2

    .line 146
    invoke-direct {p0}, Lo/SessionProtobufHelper;-><init>()V

    .line 147
    iput-object p1, p0, Lo/ReportUploader$ReportFilesProvider;->extraCallback:Lo/SessionProtobufHelper;

    .line 148
    iput-object p2, p0, Lo/ReportUploader$ReportFilesProvider;->onRelationshipValidationResult:Lo/SessionProtobufHelper;

    .line 149
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    iput v0, p0, Lo/ReportUploader$ReportFilesProvider;->asInterface:I

    .line 150
    invoke-virtual {p2}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lo/ReportUploader$ReportFilesProvider;->onPostMessage:I

    .line 151
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onRelationshipValidationResult()I

    move-result p1

    invoke-virtual {p2}, Lo/SessionProtobufHelper;->onRelationshipValidationResult()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/ReportUploader$ReportFilesProvider;->onMessageChannelReady:I

    return-void
.end method

.method synthetic constructor <init>(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;B)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lo/ReportUploader$ReportFilesProvider;-><init>(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/ReportUploader$ReportFilesProvider;)Lo/SessionProtobufHelper;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/ReportUploader$ReportFilesProvider;->extraCallback:Lo/SessionProtobufHelper;

    return-object p0
.end method

.method private static onNavigationEvent(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;)Lo/SessionProtobufHelper;
    .locals 4

    .line 231
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    .line 232
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v1

    add-int v2, v0, v1

    .line 233
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 234
    invoke-virtual {p0, v2, v3, v3, v0}, Lo/SessionProtobufHelper;->extraCallback([BIII)V

    .line 235
    invoke-virtual {p1, v2, v3, v0, v1}, Lo/SessionProtobufHelper;->extraCallback([BIII)V

    .line 3391
    new-instance p0, Lo/SessionProtobufHelper$asInterface;

    invoke-direct {p0, v2}, Lo/SessionProtobufHelper$asInterface;-><init>([B)V

    return-object p0
.end method

.method static onPostMessage(I)I
    .locals 2

    .line 263
    sget-object v0, Lo/ReportUploader$ReportFilesProvider;->ICustomTabsCallback:[I

    array-length v1, v0

    if-lt p0, v1, :cond_0

    const p0, 0x7fffffff

    return p0

    .line 266
    :cond_0
    aget p0, v0, p0

    return p0
.end method

.method static synthetic onPostMessage(Lo/ReportUploader$ReportFilesProvider;)Lo/SessionProtobufHelper;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/ReportUploader$ReportFilesProvider;->onRelationshipValidationResult:Lo/SessionProtobufHelper;

    return-object p0
.end method

.method static onPostMessage(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;)Lo/SessionProtobufHelper;
    .locals 5

    .line 168
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 176
    :cond_1
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    .line 180
    invoke-static {p0, p1}, Lo/ReportUploader$ReportFilesProvider;->onNavigationEvent(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;)Lo/SessionProtobufHelper;

    move-result-object p0

    return-object p0

    .line 183
    :cond_2
    instance-of v2, p0, Lo/ReportUploader$ReportFilesProvider;

    if-eqz v2, :cond_4

    .line 184
    move-object v2, p0

    check-cast v2, Lo/ReportUploader$ReportFilesProvider;

    .line 185
    iget-object v3, v2, Lo/ReportUploader$ReportFilesProvider;->onRelationshipValidationResult:Lo/SessionProtobufHelper;

    invoke-virtual {v3}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v3

    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_3

    .line 196
    iget-object p0, v2, Lo/ReportUploader$ReportFilesProvider;->onRelationshipValidationResult:Lo/SessionProtobufHelper;

    invoke-static {p0, p1}, Lo/ReportUploader$ReportFilesProvider;->onNavigationEvent(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;)Lo/SessionProtobufHelper;

    move-result-object p0

    .line 197
    new-instance p1, Lo/ReportUploader$ReportFilesProvider;

    iget-object v0, v2, Lo/ReportUploader$ReportFilesProvider;->extraCallback:Lo/SessionProtobufHelper;

    invoke-direct {p1, v0, p0}, Lo/ReportUploader$ReportFilesProvider;-><init>(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;)V

    return-object p1

    .line 200
    :cond_3
    iget-object v1, v2, Lo/ReportUploader$ReportFilesProvider;->extraCallback:Lo/SessionProtobufHelper;

    invoke-virtual {v1}, Lo/SessionProtobufHelper;->onRelationshipValidationResult()I

    move-result v1

    iget-object v3, v2, Lo/ReportUploader$ReportFilesProvider;->onRelationshipValidationResult:Lo/SessionProtobufHelper;

    invoke-virtual {v3}, Lo/SessionProtobufHelper;->onRelationshipValidationResult()I

    move-result v3

    if-le v1, v3, :cond_4

    .line 1335
    iget v1, v2, Lo/ReportUploader$ReportFilesProvider;->onMessageChannelReady:I

    .line 201
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onRelationshipValidationResult()I

    move-result v3

    if-le v1, v3, :cond_4

    .line 207
    new-instance p0, Lo/ReportUploader$ReportFilesProvider;

    iget-object v0, v2, Lo/ReportUploader$ReportFilesProvider;->onRelationshipValidationResult:Lo/SessionProtobufHelper;

    invoke-direct {p0, v0, p1}, Lo/ReportUploader$ReportFilesProvider;-><init>(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;)V

    .line 208
    new-instance p1, Lo/ReportUploader$ReportFilesProvider;

    iget-object v0, v2, Lo/ReportUploader$ReportFilesProvider;->extraCallback:Lo/SessionProtobufHelper;

    invoke-direct {p1, v0, p0}, Lo/ReportUploader$ReportFilesProvider;-><init>(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;)V

    return-object p1

    .line 213
    :cond_4
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onRelationshipValidationResult()I

    move-result v1

    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onRelationshipValidationResult()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2263
    sget-object v2, Lo/ReportUploader$ReportFilesProvider;->ICustomTabsCallback:[I

    array-length v3, v2

    if-lt v1, v3, :cond_5

    const v1, 0x7fffffff

    goto :goto_0

    .line 2266
    :cond_5
    aget v1, v2, v1

    :goto_0
    if-lt v0, v1, :cond_6

    .line 216
    new-instance v0, Lo/ReportUploader$ReportFilesProvider;

    invoke-direct {v0, p0, p1}, Lo/ReportUploader$ReportFilesProvider;-><init>(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;)V

    return-object v0

    .line 219
    :cond_6
    new-instance v0, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;-><init>(B)V

    .line 2630
    invoke-virtual {v0, p0}, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;->onNavigationEvent(Lo/SessionProtobufHelper;)V

    .line 2631
    invoke-virtual {v0, p1}, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;->onNavigationEvent(Lo/SessionProtobufHelper;)V

    .line 2634
    iget-object p0, v0, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/SessionProtobufHelper;

    .line 2635
    :goto_1
    iget-object p1, v0, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 2636
    iget-object p1, v0, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SessionProtobufHelper;

    .line 2637
    new-instance v2, Lo/ReportUploader$ReportFilesProvider;

    invoke-direct {v2, p1, p0, v1}, Lo/ReportUploader$ReportFilesProvider;-><init>(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;B)V

    move-object p0, v2

    goto :goto_1

    :cond_7
    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 808
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "RopeByteStream instances are not to be serialized directly"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected final ICustomTabsCallback([BIII)V
    .locals 2

    add-int v0, p2, p4

    .line 403
    iget v1, p0, Lo/ReportUploader$ReportFilesProvider;->asInterface:I

    if-gt v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider;->extraCallback:Lo/SessionProtobufHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/SessionProtobufHelper;->ICustomTabsCallback([BIII)V

    return-void

    :cond_0
    if-lt p2, v1, :cond_1

    .line 406
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider;->onRelationshipValidationResult:Lo/SessionProtobufHelper;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/SessionProtobufHelper;->ICustomTabsCallback([BIII)V

    return-void

    :cond_1
    sub-int/2addr v1, p2

    .line 409
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider;->extraCallback:Lo/SessionProtobufHelper;

    invoke-virtual {v0, p1, p2, p3, v1}, Lo/SessionProtobufHelper;->ICustomTabsCallback([BIII)V

    .line 410
    iget-object p2, p0, Lo/ReportUploader$ReportFilesProvider;->onRelationshipValidationResult:Lo/SessionProtobufHelper;

    const/4 v0, 0x0

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {p2, p1, v0, p3, p4}, Lo/SessionProtobufHelper;->ICustomTabsCallback([BIII)V

    return-void
.end method

.method public final ICustomTabsCallback()Z
    .locals 4

    .line 480
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider;->extraCallback:Lo/SessionProtobufHelper;

    iget v1, p0, Lo/ReportUploader$ReportFilesProvider;->asInterface:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lo/SessionProtobufHelper;->extraCallback(III)I

    move-result v0

    .line 481
    iget-object v1, p0, Lo/ReportUploader$ReportFilesProvider;->onRelationshipValidationResult:Lo/SessionProtobufHelper;

    invoke-virtual {v1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lo/SessionProtobufHelper;->extraCallback(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method protected final ICustomTabsCallback$Stub()Z
    .locals 4

    .line 347
    iget v0, p0, Lo/ReportUploader$ReportFilesProvider;->onPostMessage:I

    iget v1, p0, Lo/ReportUploader$ReportFilesProvider;->onMessageChannelReady:I

    .line 5263
    sget-object v2, Lo/ReportUploader$ReportFilesProvider;->ICustomTabsCallback:[I

    array-length v3, v2

    if-lt v1, v3, :cond_0

    const v1, 0x7fffffff

    goto :goto_0

    .line 5266
    :cond_0
    aget v1, v2, v1

    :goto_0
    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 12

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 507
    :cond_0
    instance-of v1, p1, Lo/SessionProtobufHelper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 511
    :cond_1
    check-cast p1, Lo/SessionProtobufHelper;

    .line 512
    iget v1, p0, Lo/ReportUploader$ReportFilesProvider;->onPostMessage:I

    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 515
    :cond_2
    iget v1, p0, Lo/ReportUploader$ReportFilesProvider;->onPostMessage:I

    if-nez v1, :cond_3

    return v0

    .line 524
    :cond_3
    invoke-virtual {p0}, Lo/ReportUploader$ReportFilesProvider;->asBinder()I

    move-result v1

    .line 525
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->asBinder()I

    move-result v3

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    if-eq v1, v3, :cond_4

    return v2

    .line 5542
    :cond_4
    new-instance v1, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;

    invoke-direct {v1, p0, v2}, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;-><init>(Lo/SessionProtobufHelper;B)V

    .line 5543
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/SessionProtobufHelper$onRelationshipValidationResult;

    .line 5546
    new-instance v4, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;

    invoke-direct {v4, p1, v2}, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;-><init>(Lo/SessionProtobufHelper;B)V

    .line 5547
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SessionProtobufHelper$onRelationshipValidationResult;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 5551
    :goto_0
    invoke-virtual {v3}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v8

    sub-int/2addr v8, v5

    .line 5552
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v9

    sub-int/2addr v9, v6

    .line 5553
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-nez v5, :cond_5

    .line 5558
    invoke-virtual {v3, p1, v6, v10}, Lo/SessionProtobufHelper$onRelationshipValidationResult;->onMessageChannelReady(Lo/SessionProtobufHelper;II)Z

    move-result v11

    goto :goto_1

    .line 5559
    :cond_5
    invoke-virtual {p1, v3, v5, v10}, Lo/SessionProtobufHelper$onRelationshipValidationResult;->onMessageChannelReady(Lo/SessionProtobufHelper;II)Z

    move-result v11

    :goto_1
    if-nez v11, :cond_6

    return v2

    :cond_6
    add-int/2addr v7, v10

    .line 5565
    iget v11, p0, Lo/ReportUploader$ReportFilesProvider;->onPostMessage:I

    if-lt v7, v11, :cond_8

    if-ne v7, v11, :cond_7

    return v0

    .line 5569
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    if-ne v10, v8, :cond_9

    .line 5574
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/SessionProtobufHelper$onRelationshipValidationResult;

    const/4 v5, 0x0

    goto :goto_2

    :cond_9
    add-int/2addr v5, v10

    :goto_2
    if-ne v10, v9, :cond_a

    .line 5580
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SessionProtobufHelper$onRelationshipValidationResult;

    const/4 v6, 0x0

    goto :goto_0

    :cond_a
    add-int/2addr v6, v10

    goto :goto_0
.end method

.method protected final extraCallback(III)I
    .locals 2

    add-int v0, p2, p3

    .line 488
    iget v1, p0, Lo/ReportUploader$ReportFilesProvider;->asInterface:I

    if-gt v0, v1, :cond_0

    .line 489
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider;->extraCallback:Lo/SessionProtobufHelper;

    invoke-virtual {v0, p1, p2, p3}, Lo/SessionProtobufHelper;->extraCallback(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    .line 491
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider;->onRelationshipValidationResult:Lo/SessionProtobufHelper;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lo/SessionProtobufHelper;->extraCallback(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v1, p2

    .line 494
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider;->extraCallback:Lo/SessionProtobufHelper;

    invoke-virtual {v0, p1, p2, v1}, Lo/SessionProtobufHelper;->extraCallback(III)I

    move-result p1

    .line 495
    iget-object p2, p0, Lo/ReportUploader$ReportFilesProvider;->onRelationshipValidationResult:Lo/SessionProtobufHelper;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lo/SessionProtobufHelper;->extraCallback(III)I

    move-result p1

    return p1
.end method

.method public final extraCallback()Lo/SessionProtobufHelper$extraCallback;
    .locals 1

    .line 301
    new-instance v0, Lo/ReportUploader$ReportFilesProvider$4;

    invoke-direct {v0, p0}, Lo/ReportUploader$ReportFilesProvider$4;-><init>(Lo/ReportUploader$ReportFilesProvider;)V

    return-object v0
.end method

.method final extraCallback(Lo/encodeZigZag64;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider;->extraCallback:Lo/SessionProtobufHelper;

    invoke-virtual {v0, p1}, Lo/SessionProtobufHelper;->extraCallback(Lo/encodeZigZag64;)V

    .line 461
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider;->onRelationshipValidationResult:Lo/SessionProtobufHelper;

    invoke-virtual {v0, p1}, Lo/SessionProtobufHelper;->extraCallback(Lo/encodeZigZag64;)V

    return-void
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 7301
    new-instance v0, Lo/ReportUploader$ReportFilesProvider$4;

    invoke-direct {v0, p0}, Lo/ReportUploader$ReportFilesProvider$4;-><init>(Lo/ReportUploader$ReportFilesProvider;)V

    return-object v0
.end method

.method final onMessageChannelReady(I)B
    .locals 2

    .line 287
    iget v0, p0, Lo/ReportUploader$ReportFilesProvider;->asInterface:I

    if-ge p1, v0, :cond_0

    .line 288
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider;->extraCallback:Lo/SessionProtobufHelper;

    invoke-virtual {v0, p1}, Lo/SessionProtobufHelper;->onMessageChannelReady(I)B

    move-result p1

    return p1

    .line 291
    :cond_0
    iget-object v1, p0, Lo/ReportUploader$ReportFilesProvider;->onRelationshipValidationResult:Lo/SessionProtobufHelper;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lo/SessionProtobufHelper;->onMessageChannelReady(I)B

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 296
    iget v0, p0, Lo/ReportUploader$ReportFilesProvider;->onPostMessage:I

    return v0
.end method

.method public final onNavigationEvent(I)B
    .locals 2

    .line 280
    iget v0, p0, Lo/ReportUploader$ReportFilesProvider;->onPostMessage:I

    invoke-static {p1, v0}, Lo/ReportUploader$ReportFilesProvider;->onPostMessage(II)V

    .line 4287
    iget v0, p0, Lo/ReportUploader$ReportFilesProvider;->asInterface:I

    if-ge p1, v0, :cond_0

    .line 4288
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider;->extraCallback:Lo/SessionProtobufHelper;

    invoke-virtual {v0, p1}, Lo/SessionProtobufHelper;->onMessageChannelReady(I)B

    move-result p1

    return p1

    .line 4291
    :cond_0
    iget-object v1, p0, Lo/ReportUploader$ReportFilesProvider;->onRelationshipValidationResult:Lo/SessionProtobufHelper;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lo/SessionProtobufHelper;->onMessageChannelReady(I)B

    move-result p1

    return p1
.end method

.method protected final onNavigationEvent(III)I
    .locals 2

    add-int v0, p2, p3

    .line 590
    iget v1, p0, Lo/ReportUploader$ReportFilesProvider;->asInterface:I

    if-gt v0, v1, :cond_0

    .line 591
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider;->extraCallback:Lo/SessionProtobufHelper;

    invoke-virtual {v0, p1, p2, p3}, Lo/SessionProtobufHelper;->onNavigationEvent(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    .line 593
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider;->onRelationshipValidationResult:Lo/SessionProtobufHelper;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lo/SessionProtobufHelper;->onNavigationEvent(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v1, p2

    .line 596
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider;->extraCallback:Lo/SessionProtobufHelper;

    invoke-virtual {v0, p1, p2, v1}, Lo/SessionProtobufHelper;->onNavigationEvent(III)I

    move-result p1

    .line 597
    iget-object p2, p0, Lo/ReportUploader$ReportFilesProvider;->onRelationshipValidationResult:Lo/SessionProtobufHelper;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lo/SessionProtobufHelper;->onNavigationEvent(III)I

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(II)Lo/SessionProtobufHelper;
    .locals 3

    .line 365
    iget v0, p0, Lo/ReportUploader$ReportFilesProvider;->onPostMessage:I

    invoke-static {p1, p2, v0}, Lo/ReportUploader$ReportFilesProvider;->onMessageChannelReady(III)I

    move-result v0

    if-nez v0, :cond_0

    .line 369
    sget-object p1, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    return-object p1

    .line 372
    :cond_0
    iget v1, p0, Lo/ReportUploader$ReportFilesProvider;->onPostMessage:I

    if-ne v0, v1, :cond_1

    return-object p0

    .line 378
    :cond_1
    iget v0, p0, Lo/ReportUploader$ReportFilesProvider;->asInterface:I

    if-gt p2, v0, :cond_2

    .line 380
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider;->extraCallback:Lo/SessionProtobufHelper;

    invoke-virtual {v0, p1, p2}, Lo/SessionProtobufHelper;->onNavigationEvent(II)Lo/SessionProtobufHelper;

    move-result-object p1

    return-object p1

    :cond_2
    if-lt p1, v0, :cond_3

    .line 385
    iget-object v1, p0, Lo/ReportUploader$ReportFilesProvider;->onRelationshipValidationResult:Lo/SessionProtobufHelper;

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lo/SessionProtobufHelper;->onNavigationEvent(II)Lo/SessionProtobufHelper;

    move-result-object p1

    return-object p1

    .line 389
    :cond_3
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider;->extraCallback:Lo/SessionProtobufHelper;

    .line 5310
    invoke-virtual {v0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lo/SessionProtobufHelper;->onNavigationEvent(II)Lo/SessionProtobufHelper;

    move-result-object p1

    .line 390
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider;->onRelationshipValidationResult:Lo/SessionProtobufHelper;

    const/4 v1, 0x0

    iget v2, p0, Lo/ReportUploader$ReportFilesProvider;->asInterface:I

    sub-int/2addr p2, v2

    invoke-virtual {v0, v1, p2}, Lo/SessionProtobufHelper;->onNavigationEvent(II)Lo/SessionProtobufHelper;

    move-result-object p2

    .line 394
    new-instance v0, Lo/ReportUploader$ReportFilesProvider;

    invoke-direct {v0, p1, p2}, Lo/ReportUploader$ReportFilesProvider;-><init>(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;)V

    return-object v0
.end method

.method protected final onPostMessage(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 472
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onPostMessage()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method protected final onRelationshipValidationResult()I
    .locals 1

    .line 335
    iget v0, p0, Lo/ReportUploader$ReportFilesProvider;->onMessageChannelReady:I

    return v0
.end method

.method public final onTransact()Lo/writeSessionAppClsId;
    .locals 1

    .line 606
    new-instance v0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;-><init>(Lo/ReportUploader$ReportFilesProvider;)V

    invoke-static {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady(Ljava/io/InputStream;)Lo/writeSessionAppClsId;

    move-result-object v0

    return-object v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .locals 2

    .line 804
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onPostMessage()[B

    move-result-object v0

    .line 6391
    new-instance v1, Lo/SessionProtobufHelper$asInterface;

    invoke-direct {v1, v0}, Lo/SessionProtobufHelper$asInterface;-><init>([B)V

    return-object v1
.end method
