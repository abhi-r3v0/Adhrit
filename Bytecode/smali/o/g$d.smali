.class public Lo/g$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/s;


# instance fields
.field private ICustomTabsCallback:J

.field private ICustomTabsCallback$Stub:Z

.field private extraCallback:Z

.field private final onMessageChannelReady:Landroid/content/Context;

.field private onNavigationEvent:Lo/generateInviteUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/generateInviteUrl<",
            "Lo/ApiTracker;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:I

.field private onRelationshipValidationResult:Lo/getConfigURL;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lo/g$d;->onMessageChannelReady:Landroid/content/Context;

    const/4 p1, 0x0

    .line 100
    iput p1, p0, Lo/g$d;->onPostMessage:I

    const-wide/16 v0, 0x1388

    .line 101
    iput-wide v0, p0, Lo/g$d;->ICustomTabsCallback:J

    .line 102
    sget-object p1, Lo/getConfigURL;->onPostMessage:Lo/getConfigURL;

    iput-object p1, p0, Lo/g$d;->onRelationshipValidationResult:Lo/getConfigURL;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Landroid/os/Handler;Lo/getCardExpiry;Lo/w;Lo/SurchargeDetailsJsonAdapter;Lo/UPIJSInterface$1;Lo/generateInviteUrl;)[Lo/HuaweiReferrer;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lo/getCardExpiry;",
            "Lo/w;",
            "Lo/SurchargeDetailsJsonAdapter;",
            "Lo/UPIJSInterface$1;",
            "Lo/generateInviteUrl<",
            "Lo/ApiTracker;",
            ">;)[",
            "Lo/HuaweiReferrer;"
        }
    .end annotation

    move-object v12, p0

    if-nez p6, :cond_0

    .line 257
    iget-object v0, v12, Lo/g$d;->onNavigationEvent:Lo/generateInviteUrl;

    move-object v13, v0

    goto :goto_0

    :cond_0
    move-object/from16 v13, p6

    .line 259
    :goto_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 260
    iget-object v1, v12, Lo/g$d;->onMessageChannelReady:Landroid/content/Context;

    iget v2, v12, Lo/g$d;->onPostMessage:I

    iget-object v3, v12, Lo/g$d;->onRelationshipValidationResult:Lo/getConfigURL;

    iget-boolean v5, v12, Lo/g$d;->extraCallback:Z

    iget-boolean v6, v12, Lo/g$d;->ICustomTabsCallback$Stub:Z

    iget-wide v9, v12, Lo/g$d;->ICustomTabsCallback:J

    move-object v0, p0

    move-object v4, v13

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object v11, v14

    invoke-virtual/range {v0 .. v11}, Lo/g$d;->onNavigationEvent(Landroid/content/Context;ILo/getConfigURL;Lo/generateInviteUrl;ZZLandroid/os/Handler;Lo/getCardExpiry;JLjava/util/ArrayList;)V

    .line 271
    iget-object v1, v12, Lo/g$d;->onMessageChannelReady:Landroid/content/Context;

    iget v2, v12, Lo/g$d;->onPostMessage:I

    iget-object v3, v12, Lo/g$d;->onRelationshipValidationResult:Lo/getConfigURL;

    iget-boolean v5, v12, Lo/g$d;->extraCallback:Z

    iget-boolean v6, v12, Lo/g$d;->ICustomTabsCallback$Stub:Z

    .line 278
    invoke-virtual {p0}, Lo/g$d;->onPostMessage()[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-result-object v7

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object v10, v14

    .line 271
    invoke-virtual/range {v0 .. v10}, Lo/g$d;->extraCallback(Landroid/content/Context;ILo/getConfigURL;Lo/generateInviteUrl;ZZ[Lcom/google/android/exoplayer2/audio/AudioProcessor;Landroid/os/Handler;Lo/w;Ljava/util/ArrayList;)V

    .line 282
    iget-object v1, v12, Lo/g$d;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v12, Lo/g$d;->onPostMessage:I

    move-object/from16 v2, p4

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lo/g$d;->onPostMessage(Landroid/content/Context;Lo/SurchargeDetailsJsonAdapter;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 284
    iget-object v1, v12, Lo/g$d;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v12, Lo/g$d;->onPostMessage:I

    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lo/g$d;->onMessageChannelReady(Landroid/content/Context;Lo/UPIJSInterface$1;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 286
    iget-object v0, v12, Lo/g$d;->onMessageChannelReady:Landroid/content/Context;

    iget v1, v12, Lo/g$d;->onPostMessage:I

    invoke-virtual {p0, v0, v1, v14}, Lo/g$d;->onNavigationEvent(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 287
    iget-object v0, v12, Lo/g$d;->onMessageChannelReady:Landroid/content/Context;

    iget v1, v12, Lo/g$d;->onPostMessage:I

    move-object/from16 v2, p1

    invoke-virtual {p0, v0, v2, v1, v14}, Lo/g$d;->onMessageChannelReady(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lo/HuaweiReferrer;

    .line 288
    invoke-virtual {v14, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/HuaweiReferrer;

    return-object v0
.end method

.method protected extraCallback(Landroid/content/Context;ILo/getConfigURL;Lo/generateInviteUrl;ZZ[Lcom/google/android/exoplayer2/audio/AudioProcessor;Landroid/os/Handler;Lo/w;Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lo/getConfigURL;",
            "Lo/generateInviteUrl<",
            "Lo/ApiTracker;",
            ">;ZZ[",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            "Landroid/os/Handler;",
            "Lo/w;",
            "Ljava/util/ArrayList<",
            "Lo/HuaweiReferrer;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p2

    move-object/from16 v1, p7

    move-object/from16 v11, p10

    const-string v12, "DefaultRenderersFactory"

    .line 401
    new-instance v13, Lo/CrossPromotionHelper$a;

    new-instance v10, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .line 410
    invoke-static {p1}, Lo/u$d;->extraCallback(Landroid/content/Context;)Lo/u$d;

    move-result-object v2

    invoke-direct {v10, v2, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lo/u$d;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    move-object v2, v13

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v2 .. v10}, Lo/CrossPromotionHelper$a;-><init>(Landroid/content/Context;Lo/getConfigURL;Lo/generateInviteUrl;ZZLandroid/os/Handler;Lo/w;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    .line 401
    invoke-virtual {v11, v13}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    invoke-virtual/range {p10 .. p10}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    :try_start_0
    const-string v6, "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"

    .line 423
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Class;

    .line 424
    const-class v8, Landroid/os/Handler;

    aput-object v8, v7, v0

    const-class v8, Lo/w;

    aput-object v8, v7, v5

    const-class v8, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aput-object v8, v7, v3

    .line 425
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p8, v7, v0

    aput-object p9, v7, v5

    aput-object v1, v7, v3

    .line 431
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/HuaweiReferrer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v7, v2, 0x1

    .line 432
    :try_start_1
    invoke-virtual {v11, v2, v6}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    const-string v2, "Loaded LibopusAudioRenderer."

    .line 433
    invoke-static {v12, v2}, Lo/JusPayWrapper;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v2, v7

    goto :goto_0

    :catch_1
    move-exception v0

    .line 438
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating Opus extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    :goto_0
    move v7, v2

    :goto_1
    :try_start_2
    const-string v2, "com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer"

    .line 444
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Class;

    .line 445
    const-class v8, Landroid/os/Handler;

    aput-object v8, v6, v0

    const-class v8, Lo/w;

    aput-object v8, v6, v5

    const-class v8, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aput-object v8, v6, v3

    .line 446
    invoke-virtual {v2, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p8, v6, v0

    aput-object p9, v6, v5

    aput-object v1, v6, v3

    .line 452
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/HuaweiReferrer;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    add-int/lit8 v6, v7, 0x1

    .line 453
    :try_start_3
    invoke-virtual {v11, v7, v2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    const-string v2, "Loaded LibflacAudioRenderer."

    .line 454
    invoke-static {v12, v2}, Lo/JusPayWrapper;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catch_3
    move v7, v6

    goto :goto_2

    :catch_4
    move-exception v0

    .line 459
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    :goto_2
    move v6, v7

    :goto_3
    :try_start_4
    const-string v2, "com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 466
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v7, v4, [Ljava/lang/Class;

    .line 467
    const-class v8, Landroid/os/Handler;

    aput-object v8, v7, v0

    const-class v8, Lo/w;

    aput-object v8, v7, v5

    const-class v8, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aput-object v8, v7, v3

    .line 468
    invoke-virtual {v2, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p8, v4, v0

    aput-object p9, v4, v5

    aput-object v1, v4, v3

    .line 474
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HuaweiReferrer;

    .line 475
    invoke-virtual {v11, v6, v0}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded FfmpegAudioRenderer."

    .line 476
    invoke-static {v12, v0}, Lo/JusPayWrapper;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 481
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FFmpeg extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    return-void
.end method

.method protected onMessageChannelReady(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList<",
            "Lo/HuaweiReferrer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onMessageChannelReady(Landroid/content/Context;Lo/UPIJSInterface$1;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/UPIJSInterface$1;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lo/HuaweiReferrer;",
            ">;)V"
        }
    .end annotation

    .line 518
    new-instance p1, Lo/isSimActive;

    invoke-direct {p1, p2, p3}, Lo/isSimActive;-><init>(Lo/UPIJSInterface$1;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onNavigationEvent(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lo/HuaweiReferrer;",
            ">;)V"
        }
    .end annotation

    .line 530
    new-instance p1, Lo/getHeader;

    invoke-direct {p1}, Lo/getHeader;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onNavigationEvent(Landroid/content/Context;ILo/getConfigURL;Lo/generateInviteUrl;ZZLandroid/os/Handler;Lo/getCardExpiry;JLjava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lo/getConfigURL;",
            "Lo/generateInviteUrl<",
            "Lo/ApiTracker;",
            ">;ZZ",
            "Landroid/os/Handler;",
            "Lo/getCardExpiry;",
            "J",
            "Ljava/util/ArrayList<",
            "Lo/HuaweiReferrer;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p2

    move-object/from16 v1, p11

    .line 322
    new-instance v13, Lo/getDiagnosticsReport;

    const/16 v12, 0x32

    move-object v2, v13

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p9

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v12}, Lo/getDiagnosticsReport;-><init>(Landroid/content/Context;Lo/getConfigURL;JLo/generateInviteUrl;ZZLandroid/os/Handler;Lo/getCardExpiry;I)V

    invoke-virtual {v1, v13}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    return-void

    .line 337
    :cond_0
    invoke-virtual/range {p11 .. p11}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    .line 345
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    .line 346
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/os/Handler;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v6, Lo/getCardExpiry;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    .line 347
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    .line 356
    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p7, v4, v8

    aput-object p8, v4, v3

    const/16 v3, 0x32

    .line 359
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v9

    .line 355
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HuaweiReferrer;

    .line 360
    invoke-virtual {v1, v2, v0}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    const-string v0, "DefaultRenderersFactory"

    const-string v1, "Loaded LibvpxVideoRenderer."

    .line 361
    invoke-static {v0, v1}, Lo/JusPayWrapper;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 366
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating VP9 extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    return-void
.end method

.method protected onPostMessage(Landroid/content/Context;Lo/SurchargeDetailsJsonAdapter;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/SurchargeDetailsJsonAdapter;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lo/HuaweiReferrer;",
            ">;)V"
        }
    .end annotation

    .line 500
    new-instance p1, Lo/UpiAppResponseJsonAdapter;

    invoke-direct {p1, p2, p3}, Lo/UpiAppResponseJsonAdapter;-><init>(Lo/SurchargeDetailsJsonAdapter;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onPostMessage()[Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    return-object v0
.end method
