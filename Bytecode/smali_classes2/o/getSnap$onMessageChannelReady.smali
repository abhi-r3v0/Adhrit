.class final Lo/getSnap$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSnap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/fullLimitUpdateChild;

.field private ICustomTabsCallback$Stub:I

.field private asBinder:I

.field private extraCallback:[Lo/getOptExclusiveStart;

.field onMessageChannelReady:I

.field final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getOptExclusiveStart;",
            ">;"
        }
    .end annotation
.end field

.field onPostMessage:I

.field private onRelationshipValidationResult:I


# direct methods
.method private constructor <init>(IILo/toLog;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getSnap$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Lo/getOptExclusiveStart;

    .line 136
    iput-object v0, p0, Lo/getSnap$onMessageChannelReady;->extraCallback:[Lo/getOptExclusiveStart;

    .line 138
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/getSnap$onMessageChannelReady;->onRelationshipValidationResult:I

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lo/getSnap$onMessageChannelReady;->asBinder:I

    .line 140
    iput v0, p0, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    .line 148
    iput p1, p0, Lo/getSnap$onMessageChannelReady;->onMessageChannelReady:I

    .line 149
    iput p2, p0, Lo/getSnap$onMessageChannelReady;->onPostMessage:I

    .line 150
    invoke-static {p3}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object p1

    iput-object p1, p0, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback:Lo/fullLimitUpdateChild;

    return-void
.end method

.method constructor <init>(ILo/toLog;)V
    .locals 0

    const/16 p1, 0x1000

    .line 143
    invoke-direct {p0, p1, p1, p2}, Lo/getSnap$onMessageChannelReady;-><init>(IILo/toLog;)V

    return-void
.end method

.method private ICustomTabsCallback(I)Lo/matches;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    .line 5300
    invoke-static {}, Lo/getSnap;->ICustomTabsCallback()[Lo/getOptExclusiveStart;

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 289
    invoke-static {}, Lo/getSnap;->ICustomTabsCallback()[Lo/getOptExclusiveStart;

    move-result-object v0

    aget-object p1, v0, p1

    iget-object p1, p1, Lo/getOptExclusiveStart;->asInterface:Lo/matches;

    return-object p1

    .line 291
    :cond_1
    invoke-static {}, Lo/getSnap;->ICustomTabsCallback()[Lo/getOptExclusiveStart;

    move-result-object v1

    array-length v1, v1

    sub-int v1, p1, v1

    .line 6259
    iget v2, p0, Lo/getSnap$onMessageChannelReady;->onRelationshipValidationResult:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    if-ltz v2, :cond_2

    .line 292
    iget-object v1, p0, Lo/getSnap$onMessageChannelReady;->extraCallback:[Lo/getOptExclusiveStart;

    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 295
    aget-object p1, v1, v2

    iget-object p1, p1, Lo/getOptExclusiveStart;->asInterface:Lo/matches;

    return-object p1

    .line 293
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Header index too large "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private ICustomTabsCallback(Lo/getOptExclusiveStart;)V
    .locals 6

    .line 305
    iget-object v0, p0, Lo/getSnap$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget v0, p1, Lo/getOptExclusiveStart;->ICustomTabsCallback$Stub:I

    .line 313
    iget v1, p0, Lo/getSnap$onMessageChannelReady;->onPostMessage:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 7181
    iget-object p1, p0, Lo/getSnap$onMessageChannelReady;->extraCallback:[Lo/getOptExclusiveStart;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7182
    iget-object p1, p0, Lo/getSnap$onMessageChannelReady;->extraCallback:[Lo/getOptExclusiveStart;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/getSnap$onMessageChannelReady;->onRelationshipValidationResult:I

    .line 7183
    iput v2, p0, Lo/getSnap$onMessageChannelReady;->asBinder:I

    .line 7184
    iput v2, p0, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    return-void

    .line 319
    :cond_0
    iget v3, p0, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 320
    invoke-direct {p0, v3}, Lo/getSnap$onMessageChannelReady;->onMessageChannelReady(I)I

    .line 323
    iget v1, p0, Lo/getSnap$onMessageChannelReady;->asBinder:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lo/getSnap$onMessageChannelReady;->extraCallback:[Lo/getOptExclusiveStart;

    array-length v4, v3

    if-le v1, v4, :cond_1

    .line 324
    array-length v1, v3

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lo/getOptExclusiveStart;

    .line 325
    array-length v4, v3

    array-length v5, v3

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    iget-object v2, p0, Lo/getSnap$onMessageChannelReady;->extraCallback:[Lo/getOptExclusiveStart;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lo/getSnap$onMessageChannelReady;->onRelationshipValidationResult:I

    .line 327
    iput-object v1, p0, Lo/getSnap$onMessageChannelReady;->extraCallback:[Lo/getOptExclusiveStart;

    .line 329
    :cond_1
    iget v1, p0, Lo/getSnap$onMessageChannelReady;->onRelationshipValidationResult:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lo/getSnap$onMessageChannelReady;->onRelationshipValidationResult:I

    .line 330
    iget-object v2, p0, Lo/getSnap$onMessageChannelReady;->extraCallback:[Lo/getOptExclusiveStart;

    aput-object p1, v2, v1

    .line 331
    iget p1, p0, Lo/getSnap$onMessageChannelReady;->asBinder:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/getSnap$onMessageChannelReady;->asBinder:I

    .line 336
    iget p1, p0, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    return-void
.end method

.method private extraCallback(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 7340
    :goto_0
    iget-object v0, p0, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    shl-int p1, v0, p1

    add-int/2addr p2, p1

    return p2
.end method

.method private onMessageChannelReady(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 192
    iget-object v1, p0, Lo/getSnap$onMessageChannelReady;->extraCallback:[Lo/getOptExclusiveStart;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lo/getSnap$onMessageChannelReady;->onRelationshipValidationResult:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 193
    iget-object v2, p0, Lo/getSnap$onMessageChannelReady;->extraCallback:[Lo/getOptExclusiveStart;

    aget-object v2, v2, v1

    iget v2, v2, Lo/getOptExclusiveStart;->ICustomTabsCallback$Stub:I

    sub-int/2addr p1, v2

    .line 194
    iget v2, p0, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    iget-object v3, p0, Lo/getSnap$onMessageChannelReady;->extraCallback:[Lo/getOptExclusiveStart;

    aget-object v3, v3, v1

    iget v3, v3, Lo/getOptExclusiveStart;->ICustomTabsCallback$Stub:I

    sub-int/2addr v2, v3

    iput v2, p0, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    .line 195
    iget v2, p0, Lo/getSnap$onMessageChannelReady;->asBinder:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lo/getSnap$onMessageChannelReady;->asBinder:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lo/getSnap$onMessageChannelReady;->extraCallback:[Lo/getOptExclusiveStart;

    iget v1, p0, Lo/getSnap$onMessageChannelReady;->onRelationshipValidationResult:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    iget v3, p0, Lo/getSnap$onMessageChannelReady;->asBinder:I

    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget p1, p0, Lo/getSnap$onMessageChannelReady;->onRelationshipValidationResult:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/getSnap$onMessageChannelReady;->onRelationshipValidationResult:I

    :cond_1
    return v0
.end method

.method private onPostMessage()Lo/matches;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8340
    iget-object v0, p0, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x7f

    .line 369
    invoke-direct {p0, v0, v2}, Lo/getSnap$onMessageChannelReady;->extraCallback(II)I

    move-result v0

    if-eqz v1, :cond_1

    .line 372
    invoke-static {}, Lo/createConnection;->onMessageChannelReady()Lo/createConnection;

    move-result-object v1

    iget-object v2, p0, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback:Lo/fullLimitUpdateChild;

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lo/fullLimitUpdateChild;->asBinder(J)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/createConnection;->onPostMessage([B)[B

    move-result-object v0

    invoke-static {v0}, Lo/matches;->ICustomTabsCallback([B)Lo/matches;

    move-result-object v0

    return-object v0

    .line 374
    :cond_1
    iget-object v1, p0, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback:Lo/fullLimitUpdateChild;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lo/fullLimitUpdateChild;->extraCallback(J)Lo/matches;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 2

    .line 171
    iget v0, p0, Lo/getSnap$onMessageChannelReady;->onPostMessage:I

    iget v1, p0, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 1181
    iget-object v0, p0, Lo/getSnap$onMessageChannelReady;->extraCallback:[Lo/getOptExclusiveStart;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1182
    iget-object v0, p0, Lo/getSnap$onMessageChannelReady;->extraCallback:[Lo/getOptExclusiveStart;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/getSnap$onMessageChannelReady;->onRelationshipValidationResult:I

    const/4 v0, 0x0

    .line 1183
    iput v0, p0, Lo/getSnap$onMessageChannelReady;->asBinder:I

    .line 1184
    iput v0, p0, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    return-void

    :cond_0
    sub-int/2addr v1, v0

    .line 175
    invoke-direct {p0, v1}, Lo/getSnap$onMessageChannelReady;->onMessageChannelReady(I)I

    :cond_1
    return-void
.end method

.method final extraCallback()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    :goto_0
    iget-object v0, p0, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_b

    .line 211
    iget-object v0, p0, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_a

    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x1

    if-ne v2, v1, :cond_3

    const/16 v1, 0x7f

    .line 215
    invoke-direct {p0, v0, v1}, Lo/getSnap$onMessageChannelReady;->extraCallback(II)I

    move-result v0

    sub-int/2addr v0, v3

    if-ltz v0, :cond_0

    .line 1300
    invoke-static {}, Lo/getSnap;->ICustomTabsCallback()[Lo/getOptExclusiveStart;

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v1, v3

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 1246
    invoke-static {}, Lo/getSnap;->ICustomTabsCallback()[Lo/getOptExclusiveStart;

    move-result-object v1

    aget-object v0, v1, v0

    .line 1247
    iget-object v1, p0, Lo/getSnap$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1249
    :cond_1
    invoke-static {}, Lo/getSnap;->ICustomTabsCallback()[Lo/getOptExclusiveStart;

    move-result-object v1

    array-length v1, v1

    sub-int v1, v0, v1

    .line 2259
    iget v2, p0, Lo/getSnap$onMessageChannelReady;->onRelationshipValidationResult:I

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    if-ltz v2, :cond_2

    .line 1250
    iget-object v1, p0, Lo/getSnap$onMessageChannelReady;->extraCallback:[Lo/getOptExclusiveStart;

    array-length v4, v1

    sub-int/2addr v4, v3

    if-gt v2, v4, :cond_2

    .line 1253
    iget-object v0, p0, Lo/getSnap$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1251
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Header index too large "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/16 v1, 0x40

    if-ne v0, v1, :cond_4

    .line 2282
    invoke-direct {p0}, Lo/getSnap$onMessageChannelReady;->onPostMessage()Lo/matches;

    move-result-object v0

    invoke-static {v0}, Lo/getSnap;->ICustomTabsCallback(Lo/matches;)Lo/matches;

    move-result-object v0

    .line 2283
    invoke-direct {p0}, Lo/getSnap$onMessageChannelReady;->onPostMessage()Lo/matches;

    move-result-object v1

    .line 2284
    new-instance v2, Lo/getOptExclusiveStart;

    invoke-direct {v2, v0, v1}, Lo/getOptExclusiveStart;-><init>(Lo/matches;Lo/matches;)V

    invoke-direct {p0, v2}, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback(Lo/getOptExclusiveStart;)V

    goto/16 :goto_0

    :cond_4
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_5

    const/16 v1, 0x3f

    .line 220
    invoke-direct {p0, v0, v1}, Lo/getSnap$onMessageChannelReady;->extraCallback(II)I

    move-result v0

    sub-int/2addr v0, v3

    .line 3276
    invoke-direct {p0, v0}, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback(I)Lo/matches;

    move-result-object v0

    .line 3277
    invoke-direct {p0}, Lo/getSnap$onMessageChannelReady;->onPostMessage()Lo/matches;

    move-result-object v1

    .line 3278
    new-instance v2, Lo/getOptExclusiveStart;

    invoke-direct {v2, v0, v1}, Lo/getOptExclusiveStart;-><init>(Lo/matches;Lo/matches;)V

    invoke-direct {p0, v2}, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback(Lo/getOptExclusiveStart;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_7

    const/16 v1, 0x1f

    .line 223
    invoke-direct {p0, v0, v1}, Lo/getSnap$onMessageChannelReady;->extraCallback(II)I

    move-result v0

    iput v0, p0, Lo/getSnap$onMessageChannelReady;->onPostMessage:I

    if-ltz v0, :cond_6

    .line 224
    iget v1, p0, Lo/getSnap$onMessageChannelReady;->onMessageChannelReady:I

    if-gt v0, v1, :cond_6

    .line 228
    invoke-virtual {p0}, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback()V

    goto/16 :goto_0

    .line 226
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid dynamic table size update "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lo/getSnap$onMessageChannelReady;->onPostMessage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v1, 0x10

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    const/16 v1, 0xf

    .line 232
    invoke-direct {p0, v0, v1}, Lo/getSnap$onMessageChannelReady;->extraCallback(II)I

    move-result v0

    sub-int/2addr v0, v3

    .line 5263
    invoke-direct {p0, v0}, Lo/getSnap$onMessageChannelReady;->ICustomTabsCallback(I)Lo/matches;

    move-result-object v0

    .line 5264
    invoke-direct {p0}, Lo/getSnap$onMessageChannelReady;->onPostMessage()Lo/matches;

    move-result-object v1

    .line 5265
    iget-object v2, p0, Lo/getSnap$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    new-instance v3, Lo/getOptExclusiveStart;

    invoke-direct {v3, v0, v1}, Lo/getOptExclusiveStart;-><init>(Lo/matches;Lo/matches;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4269
    :cond_9
    :goto_2
    invoke-direct {p0}, Lo/getSnap$onMessageChannelReady;->onPostMessage()Lo/matches;

    move-result-object v0

    invoke-static {v0}, Lo/getSnap;->ICustomTabsCallback(Lo/matches;)Lo/matches;

    move-result-object v0

    .line 4270
    invoke-direct {p0}, Lo/getSnap$onMessageChannelReady;->onPostMessage()Lo/matches;

    move-result-object v1

    .line 4271
    iget-object v2, p0, Lo/getSnap$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    new-instance v3, Lo/getOptExclusiveStart;

    invoke-direct {v3, v0, v1}, Lo/getOptExclusiveStart;-><init>(Lo/matches;Lo/matches;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 213
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    return-void
.end method
