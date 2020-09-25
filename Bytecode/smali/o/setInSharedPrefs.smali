.class public final Lo/setInSharedPrefs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPermissions;


# instance fields
.field private ICustomTabsCallback:Lo/CryptLib;

.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:J

.field private ICustomTabsService:I

.field private asBinder:I

.field private asInterface:I

.field private extraCallback:Lo/p$a;

.field private extraCommand:J

.field private getInterfaceDescriptor:I

.field private mayLaunchUrl:I

.field private newSession:I

.field private final onMessageChannelReady:Lo/DreamAppGlideModule;

.field private final onNavigationEvent:Lo/PublisherException;

.field private final onPostMessage:Ljava/lang/String;

.field private onRelationshipValidationResult:I

.field private onTransact:Ljava/lang/String;

.field private postMessage:I

.field private requestPostMessageChannel:J

.field private updateVisuals:Z

.field private warmup:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lo/setInSharedPrefs;->onPostMessage:Ljava/lang/String;

    .line 78
    new-instance p1, Lo/DreamAppGlideModule;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lo/DreamAppGlideModule;-><init>(I)V

    iput-object p1, p0, Lo/setInSharedPrefs;->onMessageChannelReady:Lo/DreamAppGlideModule;

    .line 79
    new-instance v0, Lo/PublisherException;

    iget-object p1, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-direct {v0, p1}, Lo/PublisherException;-><init>([B)V

    iput-object v0, p0, Lo/setInSharedPrefs;->onNavigationEvent:Lo/PublisherException;

    return-void
.end method

.method private ICustomTabsCallback(Lo/PublisherException;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 261
    invoke-virtual {p1}, Lo/PublisherException;->onNavigationEvent()I

    move-result v0

    const/4 v1, 0x1

    .line 262
    invoke-static {p1, v1}, Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;->extraCallback(Lo/PublisherException;Z)Landroid/util/Pair;

    move-result-object v1

    .line 263
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iput v2, p0, Lo/setInSharedPrefs;->postMessage:I

    .line 264
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, p0, Lo/setInSharedPrefs;->mayLaunchUrl:I

    .line 265
    invoke-virtual {p1}, Lo/PublisherException;->onNavigationEvent()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private extraCallback(Lo/PublisherException;)V
    .locals 4

    const/4 v0, 0x3

    .line 238
    invoke-virtual {p1, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v1

    iput v1, p0, Lo/setInSharedPrefs;->getInterfaceDescriptor:I

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x6

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v0, 0x7

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 253
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Lo/PublisherException;->ICustomTabsCallback(I)V

    return-void

    .line 249
    :cond_2
    invoke-virtual {p1, v3}, Lo/PublisherException;->ICustomTabsCallback(I)V

    return-void

    :cond_3
    const/16 v0, 0x9

    .line 244
    invoke-virtual {p1, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    return-void

    :cond_4
    const/16 v0, 0x8

    .line 241
    invoke-virtual {p1, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    return-void
.end method

.method private onMessageChannelReady(Lo/PublisherException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 154
    invoke-virtual {p1}, Lo/PublisherException;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lo/setInSharedPrefs;->warmup:Z

    .line 157
    invoke-direct {p0, p1}, Lo/setInSharedPrefs;->onPostMessage(Lo/PublisherException;)V

    goto :goto_0

    .line 158
    :cond_0
    iget-boolean v0, p0, Lo/setInSharedPrefs;->warmup:Z

    if-nez v0, :cond_1

    return-void

    .line 162
    :cond_1
    :goto_0
    iget v0, p0, Lo/setInSharedPrefs;->newSession:I

    if-nez v0, :cond_4

    .line 163
    iget v0, p0, Lo/setInSharedPrefs;->ICustomTabsService:I

    if-nez v0, :cond_3

    .line 166
    invoke-direct {p0, p1}, Lo/setInSharedPrefs;->onNavigationEvent(Lo/PublisherException;)I

    move-result v0

    .line 167
    invoke-direct {p0, p1, v0}, Lo/setInSharedPrefs;->onMessageChannelReady(Lo/PublisherException;I)V

    .line 168
    iget-boolean v0, p0, Lo/setInSharedPrefs;->updateVisuals:Z

    if-eqz v0, :cond_2

    .line 169
    iget-wide v0, p0, Lo/setInSharedPrefs;->requestPostMessageChannel:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_2
    return-void

    .line 164
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p1

    .line 172
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p1
.end method

.method private onMessageChannelReady(Lo/PublisherException;I)V
    .locals 8

    .line 285
    invoke-virtual {p1}, Lo/PublisherException;->ICustomTabsCallback()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    .line 288
    iget-object p1, p0, Lo/setInSharedPrefs;->onMessageChannelReady:Lo/DreamAppGlideModule;

    shr-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lo/setInSharedPrefs;->onMessageChannelReady:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    shl-int/lit8 v1, p2, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lo/PublisherException;->onNavigationEvent([BII)V

    .line 293
    iget-object p1, p0, Lo/setInSharedPrefs;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-virtual {p1, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 295
    :goto_0
    iget-object p1, p0, Lo/setInSharedPrefs;->ICustomTabsCallback:Lo/CryptLib;

    iget-object v0, p0, Lo/setInSharedPrefs;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-interface {p1, v0, p2}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    .line 296
    iget-object v1, p0, Lo/setInSharedPrefs;->ICustomTabsCallback:Lo/CryptLib;

    iget-wide v2, p0, Lo/setInSharedPrefs;->ICustomTabsCallback$Stub$Proxy:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p2

    invoke-interface/range {v1 .. v7}, Lo/CryptLib;->onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V

    .line 297
    iget-wide p1, p0, Lo/setInSharedPrefs;->ICustomTabsCallback$Stub$Proxy:J

    iget-wide v0, p0, Lo/setInSharedPrefs;->extraCommand:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lo/setInSharedPrefs;->ICustomTabsCallback$Stub$Proxy:J

    return-void
.end method

.method private onNavigationEvent(Lo/PublisherException;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 271
    iget v0, p0, Lo/setInSharedPrefs;->getInterfaceDescriptor:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x8

    .line 274
    invoke-virtual {p1, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    return v0

    .line 279
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p1
.end method

.method private onPostMessage(I)V
    .locals 1

    .line 301
    iget-object v0, p0, Lo/setInSharedPrefs;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-virtual {v0, p1}, Lo/DreamAppGlideModule;->extraCallback(I)V

    .line 302
    iget-object p1, p0, Lo/setInSharedPrefs;->onNavigationEvent:Lo/PublisherException;

    iget-object v0, p0, Lo/setInSharedPrefs;->onMessageChannelReady:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-virtual {p1, v0}, Lo/PublisherException;->extraCallback([B)V

    return-void
.end method

.method private onPostMessage(Lo/PublisherException;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 180
    invoke-virtual {v1, v2}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    .line 181
    invoke-virtual {v1, v2}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput v5, v0, Lo/setInSharedPrefs;->newSession:I

    if-nez v5, :cond_9

    if-ne v3, v2, :cond_1

    .line 184
    invoke-static/range {p1 .. p1}, Lo/setInSharedPrefs;->onRelationshipValidationResult(Lo/PublisherException;)J

    .line 186
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lo/PublisherException;->extraCallback()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x6

    .line 189
    invoke-virtual {v1, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v5

    iput v5, v0, Lo/setInSharedPrefs;->ICustomTabsService:I

    const/4 v5, 0x4

    .line 190
    invoke-virtual {v1, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v5

    const/4 v6, 0x3

    .line 191
    invoke-virtual {v1, v6}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v6

    if-nez v5, :cond_7

    if-nez v6, :cond_7

    const/16 v5, 0x8

    if-nez v3, :cond_2

    .line 196
    invoke-virtual/range {p1 .. p1}, Lo/PublisherException;->ICustomTabsCallback()I

    move-result v6

    .line 197
    invoke-direct/range {p0 .. p1}, Lo/setInSharedPrefs;->ICustomTabsCallback(Lo/PublisherException;)I

    move-result v7

    .line 198
    invoke-virtual {v1, v6}, Lo/PublisherException;->onMessageChannelReady(I)V

    add-int/lit8 v6, v7, 0x7

    .line 199
    div-int/2addr v6, v5

    new-array v6, v6, [B

    .line 200
    invoke-virtual {v1, v6, v4, v7}, Lo/PublisherException;->onNavigationEvent([BII)V

    .line 201
    iget-object v8, v0, Lo/setInSharedPrefs;->onTransact:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    iget v13, v0, Lo/setInSharedPrefs;->mayLaunchUrl:I

    iget v14, v0, Lo/setInSharedPrefs;->postMessage:I

    .line 203
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v4, v0, Lo/setInSharedPrefs;->onPostMessage:Ljava/lang/String;

    const-string v9, "audio/mp4a-latm"

    move-object/from16 v18, v4

    .line 201
    invoke-static/range {v8 .. v18}, Lo/p$a;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lo/generateLink;ILjava/lang/String;)Lo/p$a;

    move-result-object v4

    .line 204
    iget-object v6, v0, Lo/setInSharedPrefs;->extraCallback:Lo/p$a;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 205
    iput-object v4, v0, Lo/setInSharedPrefs;->extraCallback:Lo/p$a;

    const-wide/32 v6, 0x3d090000

    .line 206
    iget v8, v4, Lo/p$a;->validateRelationship:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    iput-wide v6, v0, Lo/setInSharedPrefs;->extraCommand:J

    .line 207
    iget-object v6, v0, Lo/setInSharedPrefs;->ICustomTabsCallback:Lo/CryptLib;

    invoke-interface {v6, v4}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    goto :goto_1

    .line 210
    :cond_2
    invoke-static/range {p1 .. p1}, Lo/setInSharedPrefs;->onRelationshipValidationResult(Lo/PublisherException;)J

    move-result-wide v6

    long-to-int v4, v6

    .line 211
    invoke-direct/range {p0 .. p1}, Lo/setInSharedPrefs;->ICustomTabsCallback(Lo/PublisherException;)I

    move-result v6

    sub-int/2addr v4, v6

    .line 212
    invoke-virtual {v1, v4}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 214
    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p1}, Lo/setInSharedPrefs;->extraCallback(Lo/PublisherException;)V

    .line 215
    invoke-virtual/range {p1 .. p1}, Lo/PublisherException;->extraCallback()Z

    move-result v4

    iput-boolean v4, v0, Lo/setInSharedPrefs;->updateVisuals:Z

    const-wide/16 v6, 0x0

    .line 216
    iput-wide v6, v0, Lo/setInSharedPrefs;->requestPostMessageChannel:J

    if-eqz v4, :cond_5

    if-ne v3, v2, :cond_4

    .line 219
    invoke-static/range {p1 .. p1}, Lo/setInSharedPrefs;->onRelationshipValidationResult(Lo/PublisherException;)J

    move-result-wide v2

    iput-wide v2, v0, Lo/setInSharedPrefs;->requestPostMessageChannel:J

    goto :goto_2

    .line 223
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lo/PublisherException;->extraCallback()Z

    move-result v2

    .line 224
    iget-wide v3, v0, Lo/setInSharedPrefs;->requestPostMessageChannel:J

    shl-long/2addr v3, v5

    invoke-virtual {v1, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    iput-wide v3, v0, Lo/setInSharedPrefs;->requestPostMessageChannel:J

    if-nez v2, :cond_4

    .line 228
    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lo/PublisherException;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 230
    invoke-virtual {v1, v5}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_6
    return-void

    .line 193
    :cond_7
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw v1

    .line 187
    :cond_8
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw v1

    .line 233
    :cond_9
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw v1
.end method

.method private static onRelationshipValidationResult(Lo/PublisherException;)J
    .locals 2

    const/4 v0, 0x2

    .line 306
    invoke-virtual {p0, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x3

    .line 307
    invoke-virtual {p0, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public final extraCallback(JI)V
    .locals 0

    .line 97
    iput-wide p1, p0, Lo/setInSharedPrefs;->ICustomTabsCallback$Stub$Proxy:J

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lo/setInSharedPrefs;->asBinder:I

    .line 85
    iput-boolean v0, p0, Lo/setInSharedPrefs;->warmup:Z

    return-void
.end method

.method public final onNavigationEvent(Lo/DreamAppGlideModule;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    if-lez v0, :cond_7

    .line 104
    iget v0, p0, Lo/setInSharedPrefs;->asBinder:I

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_1

    .line 128
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    iget v1, p0, Lo/setInSharedPrefs;->ICustomTabsCallback$Stub:I

    iget v2, p0, Lo/setInSharedPrefs;->onRelationshipValidationResult:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 129
    iget-object v1, p0, Lo/setInSharedPrefs;->onNavigationEvent:Lo/PublisherException;

    iget-object v1, v1, Lo/PublisherException;->onMessageChannelReady:[B

    iget v2, p0, Lo/setInSharedPrefs;->onRelationshipValidationResult:I

    invoke-virtual {p1, v1, v2, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 130
    iget v1, p0, Lo/setInSharedPrefs;->onRelationshipValidationResult:I

    add-int/2addr v1, v0

    iput v1, p0, Lo/setInSharedPrefs;->onRelationshipValidationResult:I

    .line 131
    iget v0, p0, Lo/setInSharedPrefs;->ICustomTabsCallback$Stub:I

    if-ne v1, v0, :cond_0

    .line 132
    iget-object v0, p0, Lo/setInSharedPrefs;->onNavigationEvent:Lo/PublisherException;

    invoke-virtual {v0, v4}, Lo/PublisherException;->onMessageChannelReady(I)V

    .line 133
    iget-object v0, p0, Lo/setInSharedPrefs;->onNavigationEvent:Lo/PublisherException;

    invoke-direct {p0, v0}, Lo/setInSharedPrefs;->onMessageChannelReady(Lo/PublisherException;)V

    .line 134
    iput v4, p0, Lo/setInSharedPrefs;->asBinder:I

    goto :goto_0

    .line 138
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 120
    :cond_2
    iget v0, p0, Lo/setInSharedPrefs;->asInterface:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lo/setInSharedPrefs;->ICustomTabsCallback$Stub:I

    .line 121
    iget-object v2, p0, Lo/setInSharedPrefs;->onMessageChannelReady:Lo/DreamAppGlideModule;

    iget-object v2, v2, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    array-length v2, v2

    if-le v0, v2, :cond_3

    .line 122
    iget v0, p0, Lo/setInSharedPrefs;->ICustomTabsCallback$Stub:I

    invoke-direct {p0, v0}, Lo/setInSharedPrefs;->onPostMessage(I)V

    .line 124
    :cond_3
    iput v4, p0, Lo/setInSharedPrefs;->onRelationshipValidationResult:I

    .line 125
    iput v1, p0, Lo/setInSharedPrefs;->asBinder:I

    goto :goto_0

    .line 111
    :cond_4
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_5

    .line 113
    iput v0, p0, Lo/setInSharedPrefs;->asInterface:I

    .line 114
    iput v3, p0, Lo/setInSharedPrefs;->asBinder:I

    goto :goto_0

    :cond_5
    if-eq v0, v1, :cond_0

    .line 116
    iput v4, p0, Lo/setInSharedPrefs;->asBinder:I

    goto :goto_0

    .line 106
    :cond_6
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 107
    iput v2, p0, Lo/setInSharedPrefs;->asBinder:I

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V
    .locals 2

    .line 90
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->extraCallback()V

    .line 91
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object p1

    iput-object p1, p0, Lo/setInSharedPrefs;->ICustomTabsCallback:Lo/CryptLib;

    .line 92
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/setInSharedPrefs;->onTransact:Ljava/lang/String;

    return-void
.end method
