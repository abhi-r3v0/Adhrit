.class final Lo/assertUnfrozen$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/assertUnfrozen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setPersistenceCacheSizeBytes;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:I

.field extraCallback:I

.field private final onMessageChannelReady:Lo/fullLimitUpdateChild;

.field private onNavigationEvent:[Lo/setPersistenceCacheSizeBytes;

.field onPostMessage:I

.field private onRelationshipValidationResult:I

.field private onTransact:I


# direct methods
.method constructor <init>(ILo/toLog;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/assertUnfrozen$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    const/16 p1, 0x8

    new-array p1, p1, [Lo/setPersistenceCacheSizeBytes;

    .line 122
    iput-object p1, p0, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent:[Lo/setPersistenceCacheSizeBytes;

    .line 124
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/assertUnfrozen$onPostMessage;->onRelationshipValidationResult:I

    const/4 p1, 0x0

    .line 125
    iput p1, p0, Lo/assertUnfrozen$onPostMessage;->asBinder:I

    .line 126
    iput p1, p0, Lo/assertUnfrozen$onPostMessage;->onTransact:I

    const/16 p1, 0x1000

    .line 129
    iput p1, p0, Lo/assertUnfrozen$onPostMessage;->extraCallback:I

    .line 130
    iput p1, p0, Lo/assertUnfrozen$onPostMessage;->onPostMessage:I

    .line 131
    invoke-static {p2}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object p1

    iput-object p1, p0, Lo/assertUnfrozen$onPostMessage;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    return-void
.end method

.method private ICustomTabsCallback(II)I
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

    .line 6318
    :goto_0
    iget-object v0, p0, Lo/assertUnfrozen$onPostMessage;->onMessageChannelReady:Lo/fullLimitUpdateChild;

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

.method private ICustomTabsCallback(I)Lo/matches;
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    .line 5278
    invoke-static {}, Lo/assertUnfrozen;->extraCallback()[Lo/setPersistenceCacheSizeBytes;

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

    .line 271
    invoke-static {}, Lo/assertUnfrozen;->extraCallback()[Lo/setPersistenceCacheSizeBytes;

    move-result-object v0

    aget-object p1, v0, p1

    iget-object p1, p1, Lo/setPersistenceCacheSizeBytes;->asBinder:Lo/matches;

    return-object p1

    .line 273
    :cond_1
    iget-object v1, p0, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent:[Lo/setPersistenceCacheSizeBytes;

    invoke-static {}, Lo/assertUnfrozen;->extraCallback()[Lo/setPersistenceCacheSizeBytes;

    move-result-object v2

    array-length v2, v2

    sub-int/2addr p1, v2

    .line 6241
    iget v2, p0, Lo/assertUnfrozen$onPostMessage;->onRelationshipValidationResult:I

    add-int/2addr v2, v0

    add-int/2addr v2, p1

    .line 273
    aget-object p1, v1, v2

    iget-object p1, p1, Lo/setPersistenceCacheSizeBytes;->asBinder:Lo/matches;

    return-object p1
.end method

.method private onMessageChannelReady(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 174
    iget-object v1, p0, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent:[Lo/setPersistenceCacheSizeBytes;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lo/assertUnfrozen$onPostMessage;->onRelationshipValidationResult:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 175
    iget-object v2, p0, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent:[Lo/setPersistenceCacheSizeBytes;

    aget-object v2, v2, v1

    iget v2, v2, Lo/setPersistenceCacheSizeBytes;->onTransact:I

    sub-int/2addr p1, v2

    .line 176
    iget v2, p0, Lo/assertUnfrozen$onPostMessage;->onTransact:I

    iget-object v3, p0, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent:[Lo/setPersistenceCacheSizeBytes;

    aget-object v3, v3, v1

    iget v3, v3, Lo/setPersistenceCacheSizeBytes;->onTransact:I

    sub-int/2addr v2, v3

    iput v2, p0, Lo/assertUnfrozen$onPostMessage;->onTransact:I

    .line 177
    iget v2, p0, Lo/assertUnfrozen$onPostMessage;->asBinder:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lo/assertUnfrozen$onPostMessage;->asBinder:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent:[Lo/setPersistenceCacheSizeBytes;

    iget v1, p0, Lo/assertUnfrozen$onPostMessage;->onRelationshipValidationResult:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    iget v3, p0, Lo/assertUnfrozen$onPostMessage;->asBinder:I

    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget p1, p0, Lo/assertUnfrozen$onPostMessage;->onRelationshipValidationResult:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/assertUnfrozen$onPostMessage;->onRelationshipValidationResult:I

    :cond_1
    return v0
.end method

.method private onNavigationEvent()Lo/matches;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7318
    iget-object v0, p0, Lo/assertUnfrozen$onPostMessage;->onMessageChannelReady:Lo/fullLimitUpdateChild;

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

    .line 347
    invoke-direct {p0, v0, v2}, Lo/assertUnfrozen$onPostMessage;->ICustomTabsCallback(II)I

    move-result v0

    if-eqz v1, :cond_1

    .line 350
    invoke-static {}, Lo/cancelInternal;->onPostMessage()Lo/cancelInternal;

    move-result-object v1

    iget-object v2, p0, Lo/assertUnfrozen$onPostMessage;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lo/fullLimitUpdateChild;->asBinder(J)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/cancelInternal;->ICustomTabsCallback([B)[B

    move-result-object v0

    invoke-static {v0}, Lo/matches;->ICustomTabsCallback([B)Lo/matches;

    move-result-object v0

    return-object v0

    .line 352
    :cond_1
    iget-object v1, p0, Lo/assertUnfrozen$onPostMessage;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lo/fullLimitUpdateChild;->extraCallback(J)Lo/matches;

    move-result-object v0

    return-object v0
.end method

.method private onNavigationEvent(Lo/setPersistenceCacheSizeBytes;)V
    .locals 6

    .line 283
    iget-object v0, p0, Lo/assertUnfrozen$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget v0, p1, Lo/setPersistenceCacheSizeBytes;->onTransact:I

    .line 291
    iget v1, p0, Lo/assertUnfrozen$onPostMessage;->onPostMessage:I

    if-le v0, v1, :cond_0

    .line 292
    invoke-direct {p0}, Lo/assertUnfrozen$onPostMessage;->onPostMessage()V

    return-void

    .line 297
    :cond_0
    iget v2, p0, Lo/assertUnfrozen$onPostMessage;->onTransact:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 298
    invoke-direct {p0, v2}, Lo/assertUnfrozen$onPostMessage;->onMessageChannelReady(I)I

    .line 301
    iget v1, p0, Lo/assertUnfrozen$onPostMessage;->asBinder:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent:[Lo/setPersistenceCacheSizeBytes;

    array-length v3, v2

    if-le v1, v3, :cond_1

    .line 302
    array-length v1, v2

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lo/setPersistenceCacheSizeBytes;

    const/4 v3, 0x0

    .line 303
    array-length v4, v2

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    iget-object v2, p0, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent:[Lo/setPersistenceCacheSizeBytes;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lo/assertUnfrozen$onPostMessage;->onRelationshipValidationResult:I

    .line 305
    iput-object v1, p0, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent:[Lo/setPersistenceCacheSizeBytes;

    .line 307
    :cond_1
    iget v1, p0, Lo/assertUnfrozen$onPostMessage;->onRelationshipValidationResult:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lo/assertUnfrozen$onPostMessage;->onRelationshipValidationResult:I

    .line 308
    iget-object v2, p0, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent:[Lo/setPersistenceCacheSizeBytes;

    aput-object p1, v2, v1

    .line 309
    iget p1, p0, Lo/assertUnfrozen$onPostMessage;->asBinder:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/assertUnfrozen$onPostMessage;->asBinder:I

    .line 314
    iget p1, p0, Lo/assertUnfrozen$onPostMessage;->onTransact:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/assertUnfrozen$onPostMessage;->onTransact:I

    return-void
.end method

.method private onPostMessage()V
    .locals 2

    .line 162
    iget-object v0, p0, Lo/assertUnfrozen$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    iget-object v0, p0, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent:[Lo/setPersistenceCacheSizeBytes;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent:[Lo/setPersistenceCacheSizeBytes;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/assertUnfrozen$onPostMessage;->onRelationshipValidationResult:I

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lo/assertUnfrozen$onPostMessage;->asBinder:I

    .line 166
    iput v0, p0, Lo/assertUnfrozen$onPostMessage;->onTransact:I

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 2

    .line 152
    iget v0, p0, Lo/assertUnfrozen$onPostMessage;->onPostMessage:I

    iget v1, p0, Lo/assertUnfrozen$onPostMessage;->onTransact:I

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 154
    invoke-direct {p0}, Lo/assertUnfrozen$onPostMessage;->onPostMessage()V

    return-void

    :cond_0
    sub-int/2addr v1, v0

    .line 156
    invoke-direct {p0, v1}, Lo/assertUnfrozen$onPostMessage;->onMessageChannelReady(I)I

    :cond_1
    return-void
.end method

.method final onMessageChannelReady()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    :goto_0
    iget-object v0, p0, Lo/assertUnfrozen$onPostMessage;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_b

    .line 193
    iget-object v0, p0, Lo/assertUnfrozen$onPostMessage;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_a

    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x1

    if-ne v2, v1, :cond_3

    const/16 v1, 0x7f

    .line 197
    invoke-direct {p0, v0, v1}, Lo/assertUnfrozen$onPostMessage;->ICustomTabsCallback(II)I

    move-result v0

    sub-int/2addr v0, v3

    if-ltz v0, :cond_0

    .line 1278
    invoke-static {}, Lo/assertUnfrozen;->extraCallback()[Lo/setPersistenceCacheSizeBytes;

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

    .line 1228
    invoke-static {}, Lo/assertUnfrozen;->extraCallback()[Lo/setPersistenceCacheSizeBytes;

    move-result-object v1

    aget-object v0, v1, v0

    .line 1229
    iget-object v1, p0, Lo/assertUnfrozen$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1231
    :cond_1
    invoke-static {}, Lo/assertUnfrozen;->extraCallback()[Lo/setPersistenceCacheSizeBytes;

    move-result-object v1

    array-length v1, v1

    sub-int v1, v0, v1

    .line 2241
    iget v2, p0, Lo/assertUnfrozen$onPostMessage;->onRelationshipValidationResult:I

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    if-ltz v2, :cond_2

    .line 1232
    iget-object v1, p0, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent:[Lo/setPersistenceCacheSizeBytes;

    array-length v4, v1

    sub-int/2addr v4, v3

    if-gt v2, v4, :cond_2

    .line 1235
    iget-object v0, p0, Lo/assertUnfrozen$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1233
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

    .line 2264
    invoke-direct {p0}, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent()Lo/matches;

    move-result-object v0

    invoke-static {v0}, Lo/assertUnfrozen;->extraCallback(Lo/matches;)Lo/matches;

    move-result-object v0

    .line 2265
    invoke-direct {p0}, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent()Lo/matches;

    move-result-object v1

    .line 2266
    new-instance v2, Lo/setPersistenceCacheSizeBytes;

    invoke-direct {v2, v0, v1}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Lo/matches;)V

    invoke-direct {p0, v2}, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent(Lo/setPersistenceCacheSizeBytes;)V

    goto/16 :goto_0

    :cond_4
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_5

    const/16 v1, 0x3f

    .line 202
    invoke-direct {p0, v0, v1}, Lo/assertUnfrozen$onPostMessage;->ICustomTabsCallback(II)I

    move-result v0

    sub-int/2addr v0, v3

    .line 3258
    invoke-direct {p0, v0}, Lo/assertUnfrozen$onPostMessage;->ICustomTabsCallback(I)Lo/matches;

    move-result-object v0

    .line 3259
    invoke-direct {p0}, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent()Lo/matches;

    move-result-object v1

    .line 3260
    new-instance v2, Lo/setPersistenceCacheSizeBytes;

    invoke-direct {v2, v0, v1}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Lo/matches;)V

    invoke-direct {p0, v2}, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent(Lo/setPersistenceCacheSizeBytes;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_7

    const/16 v1, 0x1f

    .line 205
    invoke-direct {p0, v0, v1}, Lo/assertUnfrozen$onPostMessage;->ICustomTabsCallback(II)I

    move-result v0

    iput v0, p0, Lo/assertUnfrozen$onPostMessage;->onPostMessage:I

    if-ltz v0, :cond_6

    .line 206
    iget v1, p0, Lo/assertUnfrozen$onPostMessage;->extraCallback:I

    if-gt v0, v1, :cond_6

    .line 210
    invoke-virtual {p0}, Lo/assertUnfrozen$onPostMessage;->ICustomTabsCallback()V

    goto/16 :goto_0

    .line 208
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid dynamic table size update "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lo/assertUnfrozen$onPostMessage;->onPostMessage:I

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

    .line 214
    invoke-direct {p0, v0, v1}, Lo/assertUnfrozen$onPostMessage;->ICustomTabsCallback(II)I

    move-result v0

    sub-int/2addr v0, v3

    .line 5245
    invoke-direct {p0, v0}, Lo/assertUnfrozen$onPostMessage;->ICustomTabsCallback(I)Lo/matches;

    move-result-object v0

    .line 5246
    invoke-direct {p0}, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent()Lo/matches;

    move-result-object v1

    .line 5247
    iget-object v2, p0, Lo/assertUnfrozen$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    new-instance v3, Lo/setPersistenceCacheSizeBytes;

    invoke-direct {v3, v0, v1}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Lo/matches;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4251
    :cond_9
    :goto_2
    invoke-direct {p0}, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent()Lo/matches;

    move-result-object v0

    invoke-static {v0}, Lo/assertUnfrozen;->extraCallback(Lo/matches;)Lo/matches;

    move-result-object v0

    .line 4252
    invoke-direct {p0}, Lo/assertUnfrozen$onPostMessage;->onNavigationEvent()Lo/matches;

    move-result-object v1

    .line 4253
    iget-object v2, p0, Lo/assertUnfrozen$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    new-instance v3, Lo/setPersistenceCacheSizeBytes;

    invoke-direct {v3, v0, v1}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Lo/matches;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 195
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    return-void
.end method
