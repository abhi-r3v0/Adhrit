.class final Lo/fromQueryObject$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fromQueryObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/loadsAllData;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:I

.field private final extraCallback:Lo/fullLimitUpdateChild;

.field private final onMessageChannelReady:I

.field private onNavigationEvent:I

.field private onPostMessage:[Lo/loadsAllData;

.field private onRelationshipValidationResult:I

.field private onTransact:I


# direct methods
.method private constructor <init>(IILo/toLog;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/fromQueryObject$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    const/16 p1, 0x8

    new-array p1, p1, [Lo/loadsAllData;

    .line 124
    iput-object p1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onPostMessage:[Lo/loadsAllData;

    .line 126
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onRelationshipValidationResult:I

    const/4 p1, 0x0

    .line 127
    iput p1, p0, Lo/fromQueryObject$ICustomTabsCallback;->asBinder:I

    .line 128
    iput p1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onTransact:I

    const/16 p1, 0x1000

    .line 135
    iput p1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onMessageChannelReady:I

    .line 136
    iput p1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onNavigationEvent:I

    .line 137
    invoke-static {p3}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object p1

    iput-object p1, p0, Lo/fromQueryObject$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    return-void
.end method

.method constructor <init>(Lo/toLog;)V
    .locals 1

    const/16 v0, 0x1000

    .line 131
    invoke-direct {p0, v0, v0, p1}, Lo/fromQueryObject$ICustomTabsCallback;-><init>(IILo/toLog;)V

    return-void
.end method

.method private ICustomTabsCallback(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 166
    iget-object v1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onPostMessage:[Lo/loadsAllData;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lo/fromQueryObject$ICustomTabsCallback;->onRelationshipValidationResult:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 167
    iget-object v2, p0, Lo/fromQueryObject$ICustomTabsCallback;->onPostMessage:[Lo/loadsAllData;

    aget-object v2, v2, v1

    iget v2, v2, Lo/loadsAllData;->asInterface:I

    sub-int/2addr p1, v2

    .line 168
    iget v2, p0, Lo/fromQueryObject$ICustomTabsCallback;->onTransact:I

    iget-object v3, p0, Lo/fromQueryObject$ICustomTabsCallback;->onPostMessage:[Lo/loadsAllData;

    aget-object v3, v3, v1

    iget v3, v3, Lo/loadsAllData;->asInterface:I

    sub-int/2addr v2, v3

    iput v2, p0, Lo/fromQueryObject$ICustomTabsCallback;->onTransact:I

    .line 169
    iget v2, p0, Lo/fromQueryObject$ICustomTabsCallback;->asBinder:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lo/fromQueryObject$ICustomTabsCallback;->asBinder:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onPostMessage:[Lo/loadsAllData;

    iget v1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onRelationshipValidationResult:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    iget v3, p0, Lo/fromQueryObject$ICustomTabsCallback;->asBinder:I

    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget p1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onRelationshipValidationResult:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onRelationshipValidationResult:I

    :cond_1
    return v0
.end method

.method private ICustomTabsCallback()Lo/matches;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8315
    iget-object v0, p0, Lo/fromQueryObject$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

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

    .line 344
    invoke-direct {p0, v0, v2}, Lo/fromQueryObject$ICustomTabsCallback;->onMessageChannelReady(II)I

    move-result v0

    if-eqz v1, :cond_1

    .line 347
    invoke-static {}, Lo/getEventRegistrations;->onMessageChannelReady()Lo/getEventRegistrations;

    move-result-object v1

    iget-object v2, p0, Lo/fromQueryObject$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lo/fullLimitUpdateChild;->asBinder(J)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/getEventRegistrations;->ICustomTabsCallback([B)[B

    move-result-object v0

    invoke-static {v0}, Lo/matches;->ICustomTabsCallback([B)Lo/matches;

    move-result-object v0

    return-object v0

    .line 349
    :cond_1
    iget-object v1, p0, Lo/fromQueryObject$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lo/fullLimitUpdateChild;->extraCallback(J)Lo/matches;

    move-result-object v0

    return-object v0
.end method

.method private extraCallback()V
    .locals 2

    .line 145
    iget v0, p0, Lo/fromQueryObject$ICustomTabsCallback;->onNavigationEvent:I

    iget v1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onTransact:I

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 1155
    iget-object v0, p0, Lo/fromQueryObject$ICustomTabsCallback;->onPostMessage:[Lo/loadsAllData;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1156
    iget-object v0, p0, Lo/fromQueryObject$ICustomTabsCallback;->onPostMessage:[Lo/loadsAllData;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/fromQueryObject$ICustomTabsCallback;->onRelationshipValidationResult:I

    const/4 v0, 0x0

    .line 1157
    iput v0, p0, Lo/fromQueryObject$ICustomTabsCallback;->asBinder:I

    .line 1158
    iput v0, p0, Lo/fromQueryObject$ICustomTabsCallback;->onTransact:I

    return-void

    :cond_0
    sub-int/2addr v1, v0

    .line 149
    invoke-direct {p0, v1}, Lo/fromQueryObject$ICustomTabsCallback;->ICustomTabsCallback(I)I

    :cond_1
    return-void
.end method

.method private onMessageChannelReady(II)I
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

    .line 7315
    :goto_0
    iget-object v0, p0, Lo/fromQueryObject$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

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

.method private onMessageChannelReady(Lo/loadsAllData;)V
    .locals 6

    .line 280
    iget-object v0, p0, Lo/fromQueryObject$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget v0, p1, Lo/loadsAllData;->asInterface:I

    .line 288
    iget v1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onNavigationEvent:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 7155
    iget-object p1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onPostMessage:[Lo/loadsAllData;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7156
    iget-object p1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onPostMessage:[Lo/loadsAllData;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onRelationshipValidationResult:I

    .line 7157
    iput v2, p0, Lo/fromQueryObject$ICustomTabsCallback;->asBinder:I

    .line 7158
    iput v2, p0, Lo/fromQueryObject$ICustomTabsCallback;->onTransact:I

    return-void

    .line 294
    :cond_0
    iget v3, p0, Lo/fromQueryObject$ICustomTabsCallback;->onTransact:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 295
    invoke-direct {p0, v3}, Lo/fromQueryObject$ICustomTabsCallback;->ICustomTabsCallback(I)I

    .line 298
    iget v1, p0, Lo/fromQueryObject$ICustomTabsCallback;->asBinder:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lo/fromQueryObject$ICustomTabsCallback;->onPostMessage:[Lo/loadsAllData;

    array-length v4, v3

    if-le v1, v4, :cond_1

    .line 299
    array-length v1, v3

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lo/loadsAllData;

    .line 300
    array-length v4, v3

    array-length v5, v3

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    iget-object v2, p0, Lo/fromQueryObject$ICustomTabsCallback;->onPostMessage:[Lo/loadsAllData;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lo/fromQueryObject$ICustomTabsCallback;->onRelationshipValidationResult:I

    .line 302
    iput-object v1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onPostMessage:[Lo/loadsAllData;

    .line 304
    :cond_1
    iget v1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onRelationshipValidationResult:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lo/fromQueryObject$ICustomTabsCallback;->onRelationshipValidationResult:I

    .line 305
    iget-object v2, p0, Lo/fromQueryObject$ICustomTabsCallback;->onPostMessage:[Lo/loadsAllData;

    aput-object p1, v2, v1

    .line 306
    iget p1, p0, Lo/fromQueryObject$ICustomTabsCallback;->asBinder:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/fromQueryObject$ICustomTabsCallback;->asBinder:I

    .line 311
    iget p1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onTransact:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onTransact:I

    return-void
.end method

.method private onNavigationEvent(I)Lo/matches;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    .line 5275
    sget-object v1, Lo/fromQueryObject;->onMessageChannelReady:[Lo/loadsAllData;

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 263
    sget-object v0, Lo/fromQueryObject;->onMessageChannelReady:[Lo/loadsAllData;

    aget-object p1, v0, p1

    iget-object p1, p1, Lo/loadsAllData;->onRelationshipValidationResult:Lo/matches;

    return-object p1

    .line 265
    :cond_1
    sget-object v1, Lo/fromQueryObject;->onMessageChannelReady:[Lo/loadsAllData;

    array-length v1, v1

    sub-int v1, p1, v1

    .line 6233
    iget v2, p0, Lo/fromQueryObject$ICustomTabsCallback;->onRelationshipValidationResult:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    if-ltz v2, :cond_2

    .line 266
    iget-object v1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onPostMessage:[Lo/loadsAllData;

    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 270
    aget-object p1, v1, v2

    iget-object p1, p1, Lo/loadsAllData;->onRelationshipValidationResult:Lo/matches;

    return-object p1

    .line 267
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


# virtual methods
.method final onMessageChannelReady()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    :goto_0
    iget-object v0, p0, Lo/fromQueryObject$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_b

    .line 185
    iget-object v0, p0, Lo/fromQueryObject$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback$Stub()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_a

    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x1

    if-ne v2, v1, :cond_3

    const/16 v1, 0x7f

    .line 189
    invoke-direct {p0, v0, v1}, Lo/fromQueryObject$ICustomTabsCallback;->onMessageChannelReady(II)I

    move-result v0

    sub-int/2addr v0, v3

    if-ltz v0, :cond_0

    .line 1275
    sget-object v1, Lo/fromQueryObject;->onMessageChannelReady:[Lo/loadsAllData;

    array-length v1, v1

    sub-int/2addr v1, v3

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 1220
    sget-object v1, Lo/fromQueryObject;->onMessageChannelReady:[Lo/loadsAllData;

    aget-object v0, v1, v0

    .line 1221
    iget-object v1, p0, Lo/fromQueryObject$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1223
    :cond_1
    sget-object v1, Lo/fromQueryObject;->onMessageChannelReady:[Lo/loadsAllData;

    array-length v1, v1

    sub-int v1, v0, v1

    .line 2233
    iget v2, p0, Lo/fromQueryObject$ICustomTabsCallback;->onRelationshipValidationResult:I

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    if-ltz v2, :cond_2

    .line 1224
    iget-object v1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onPostMessage:[Lo/loadsAllData;

    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 1227
    iget-object v0, p0, Lo/fromQueryObject$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1225
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

    .line 2256
    invoke-direct {p0}, Lo/fromQueryObject$ICustomTabsCallback;->ICustomTabsCallback()Lo/matches;

    move-result-object v0

    invoke-static {v0}, Lo/fromQueryObject;->onNavigationEvent(Lo/matches;)Lo/matches;

    move-result-object v0

    .line 2257
    invoke-direct {p0}, Lo/fromQueryObject$ICustomTabsCallback;->ICustomTabsCallback()Lo/matches;

    move-result-object v1

    .line 2258
    new-instance v2, Lo/loadsAllData;

    invoke-direct {v2, v0, v1}, Lo/loadsAllData;-><init>(Lo/matches;Lo/matches;)V

    invoke-direct {p0, v2}, Lo/fromQueryObject$ICustomTabsCallback;->onMessageChannelReady(Lo/loadsAllData;)V

    goto :goto_0

    :cond_4
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_5

    const/16 v1, 0x3f

    .line 194
    invoke-direct {p0, v0, v1}, Lo/fromQueryObject$ICustomTabsCallback;->onMessageChannelReady(II)I

    move-result v0

    sub-int/2addr v0, v3

    .line 3250
    invoke-direct {p0, v0}, Lo/fromQueryObject$ICustomTabsCallback;->onNavigationEvent(I)Lo/matches;

    move-result-object v0

    .line 3251
    invoke-direct {p0}, Lo/fromQueryObject$ICustomTabsCallback;->ICustomTabsCallback()Lo/matches;

    move-result-object v1

    .line 3252
    new-instance v2, Lo/loadsAllData;

    invoke-direct {v2, v0, v1}, Lo/loadsAllData;-><init>(Lo/matches;Lo/matches;)V

    invoke-direct {p0, v2}, Lo/fromQueryObject$ICustomTabsCallback;->onMessageChannelReady(Lo/loadsAllData;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_7

    const/16 v1, 0x1f

    .line 197
    invoke-direct {p0, v0, v1}, Lo/fromQueryObject$ICustomTabsCallback;->onMessageChannelReady(II)I

    move-result v0

    iput v0, p0, Lo/fromQueryObject$ICustomTabsCallback;->onNavigationEvent:I

    if-ltz v0, :cond_6

    .line 198
    iget v1, p0, Lo/fromQueryObject$ICustomTabsCallback;->onMessageChannelReady:I

    if-gt v0, v1, :cond_6

    .line 202
    invoke-direct {p0}, Lo/fromQueryObject$ICustomTabsCallback;->extraCallback()V

    goto/16 :goto_0

    .line 200
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid dynamic table size update "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lo/fromQueryObject$ICustomTabsCallback;->onNavigationEvent:I

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

    .line 206
    invoke-direct {p0, v0, v1}, Lo/fromQueryObject$ICustomTabsCallback;->onMessageChannelReady(II)I

    move-result v0

    sub-int/2addr v0, v3

    .line 5237
    invoke-direct {p0, v0}, Lo/fromQueryObject$ICustomTabsCallback;->onNavigationEvent(I)Lo/matches;

    move-result-object v0

    .line 5238
    invoke-direct {p0}, Lo/fromQueryObject$ICustomTabsCallback;->ICustomTabsCallback()Lo/matches;

    move-result-object v1

    .line 5239
    iget-object v2, p0, Lo/fromQueryObject$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    new-instance v3, Lo/loadsAllData;

    invoke-direct {v3, v0, v1}, Lo/loadsAllData;-><init>(Lo/matches;Lo/matches;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4243
    :cond_9
    :goto_2
    invoke-direct {p0}, Lo/fromQueryObject$ICustomTabsCallback;->ICustomTabsCallback()Lo/matches;

    move-result-object v0

    invoke-static {v0}, Lo/fromQueryObject;->onNavigationEvent(Lo/matches;)Lo/matches;

    move-result-object v0

    .line 4244
    invoke-direct {p0}, Lo/fromQueryObject$ICustomTabsCallback;->ICustomTabsCallback()Lo/matches;

    move-result-object v1

    .line 4245
    iget-object v2, p0, Lo/fromQueryObject$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    new-instance v3, Lo/loadsAllData;

    invoke-direct {v3, v0, v1}, Lo/loadsAllData;-><init>(Lo/matches;Lo/matches;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 187
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    return-void
.end method
