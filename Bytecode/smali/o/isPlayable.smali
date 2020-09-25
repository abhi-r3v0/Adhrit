.class public final Lo/isPlayable;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isPlayable$onNavigationEvent;
    }
.end annotation


# static fields
.field public static ICustomTabsCallback$Stub:Lo/extraCallback$onNavigationEvent; = null

.field private static asInterface:I = 0x3e8


# instance fields
.field public ICustomTabsCallback:Lo/isPlayable$onNavigationEvent;

.field private ICustomTabsCallback$Stub$Proxy:[Lo/onSearchResult;

.field private ICustomTabsService:I

.field private asBinder:I

.field public extraCallback:[Lo/getDescription;

.field private getInterfaceDescriptor:[Z

.field private newSession:I

.field public onMessageChannelReady:I

.field public final onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

.field public onPostMessage:Z

.field private onRelationshipValidationResult:I

.field private onTransact:I

.field private final requestPostMessageChannel:Lo/isPlayable$onNavigationEvent;

.field private warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lo/isPlayable;->onRelationshipValidationResult:I

    const/16 v1, 0x20

    .line 54
    iput v1, p0, Lo/isPlayable;->asBinder:I

    .line 55
    iput v1, p0, Lo/isPlayable;->onTransact:I

    const/4 v2, 0x0

    .line 56
    iput-object v2, p0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    .line 59
    iput-boolean v0, p0, Lo/isPlayable;->onPostMessage:Z

    new-array v2, v1, [Z

    .line 62
    iput-object v2, p0, Lo/isPlayable;->getInterfaceDescriptor:[Z

    const/4 v2, 0x1

    .line 64
    iput v2, p0, Lo/isPlayable;->warmup:I

    .line 65
    iput v0, p0, Lo/isPlayable;->onMessageChannelReady:I

    .line 66
    iput v1, p0, Lo/isPlayable;->newSession:I

    .line 70
    sget v2, Lo/isPlayable;->asInterface:I

    new-array v2, v2, [Lo/onSearchResult;

    iput-object v2, p0, Lo/isPlayable;->ICustomTabsCallback$Stub$Proxy:[Lo/onSearchResult;

    .line 71
    iput v0, p0, Lo/isPlayable;->ICustomTabsService:I

    new-array v0, v1, [Lo/getDescription;

    .line 79
    iput-object v0, p0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    .line 80
    invoke-direct {p0}, Lo/isPlayable;->ICustomTabsCallback$Stub()V

    .line 81
    new-instance v0, Lo/MediaBrowserCompat$MediaItem$1;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaItem$1;-><init>()V

    iput-object v0, p0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    .line 82
    new-instance v1, Lo/createFromParcel;

    invoke-direct {v1, v0}, Lo/createFromParcel;-><init>(Lo/MediaBrowserCompat$MediaItem$1;)V

    iput-object v1, p0, Lo/isPlayable;->ICustomTabsCallback:Lo/isPlayable$onNavigationEvent;

    .line 83
    new-instance v0, Lo/getDescription;

    iget-object v1, p0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    invoke-direct {v0, v1}, Lo/getDescription;-><init>(Lo/MediaBrowserCompat$MediaItem$1;)V

    iput-object v0, p0, Lo/isPlayable;->requestPostMessageChannel:Lo/isPlayable$onNavigationEvent;

    return-void
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 3

    const/4 v0, 0x0

    .line 129
    :goto_0
    iget-object v1, p0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 130
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 132
    iget-object v2, p0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object v2, v2, Lo/MediaBrowserCompat$MediaItem$1;->extraCallback:Lo/getMediaId$onPostMessage;

    invoke-interface {v2, v1}, Lo/getMediaId$onPostMessage;->onPostMessage(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    iget-object v1, p0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/Object;)I
    .locals 1

    .line 344
    check-cast p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 5095
    iget-object p0, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    if-eqz p0, :cond_0

    .line 346
    iget p0, p0, Lo/onSearchResult;->extraCallback:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onNavigationEvent(Lo/onSearchResult$ICustomTabsCallback;)Lo/onSearchResult;
    .locals 3

    .line 305
    iget-object v0, p0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaItem$1;->onNavigationEvent:Lo/getMediaId$onPostMessage;

    invoke-interface {v0}, Lo/getMediaId$onPostMessage;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onSearchResult;

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lo/onSearchResult;

    invoke-direct {v0, p1}, Lo/onSearchResult;-><init>(Lo/onSearchResult$ICustomTabsCallback;)V

    .line 3218
    iput-object p1, v0, Lo/onSearchResult;->asInterface:Lo/onSearchResult$ICustomTabsCallback;

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {v0}, Lo/onSearchResult;->onMessageChannelReady()V

    .line 4218
    iput-object p1, v0, Lo/onSearchResult;->asInterface:Lo/onSearchResult$ICustomTabsCallback;

    .line 313
    :goto_0
    iget p1, p0, Lo/isPlayable;->ICustomTabsService:I

    sget v1, Lo/isPlayable;->asInterface:I

    if-lt p1, v1, :cond_1

    shl-int/lit8 p1, v1, 0x1

    .line 314
    sput p1, Lo/isPlayable;->asInterface:I

    .line 315
    iget-object v1, p0, Lo/isPlayable;->ICustomTabsCallback$Stub$Proxy:[Lo/onSearchResult;

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lo/onSearchResult;

    iput-object p1, p0, Lo/isPlayable;->ICustomTabsCallback$Stub$Proxy:[Lo/onSearchResult;

    .line 317
    :cond_1
    iget-object p1, p0, Lo/isPlayable;->ICustomTabsCallback$Stub$Proxy:[Lo/onSearchResult;

    iget v1, p0, Lo/isPlayable;->ICustomTabsService:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/isPlayable;->ICustomTabsService:I

    aput-object v0, p1, v1

    return-object v0
.end method

.method public static onPostMessage()Lo/extraCallback$onNavigationEvent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static onPostMessage(Lo/isPlayable;Lo/onSearchResult;Lo/onSearchResult;Lo/onSearchResult;FZ)Lo/getDescription;
    .locals 1

    .line 1230
    invoke-virtual {p0}, Lo/isPlayable;->onMessageChannelReady()Lo/getDescription;

    move-result-object p0

    .line 21331
    iget-object p5, p0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p5, p1, v0}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 21332
    iget-object p1, p0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    const/high16 p5, 0x3f800000    # 1.0f

    sub-float/2addr p5, p4

    invoke-virtual {p1, p2, p5}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 21333
    iget-object p1, p0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {p1, p3, p4}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    return-object p0
.end method

.method private final onPostMessage(Lo/getDescription;)V
    .locals 3

    .line 538
    iget-object v0, p0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    iget v1, p0, Lo/isPlayable;->onMessageChannelReady:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaItem$1;->extraCallback:Lo/getMediaId$onPostMessage;

    iget-object v1, p0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    iget v2, p0, Lo/isPlayable;->onMessageChannelReady:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lo/getMediaId$onPostMessage;->onPostMessage(Ljava/lang/Object;)Z

    .line 541
    :cond_0
    iget-object v0, p0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    iget v1, p0, Lo/isPlayable;->onMessageChannelReady:I

    aput-object p1, v0, v1

    .line 542
    iget-object v0, p1, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    iget v1, p0, Lo/isPlayable;->onMessageChannelReady:I

    iput v1, v0, Lo/onSearchResult;->onPostMessage:I

    .line 543
    iget v0, p0, Lo/isPlayable;->onMessageChannelReady:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/isPlayable;->onMessageChannelReady:I

    .line 544
    iget-object v0, p1, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    invoke-virtual {v0, p1}, Lo/onSearchResult;->ICustomTabsCallback(Lo/getDescription;)V

    return-void
.end method

.method private onRelationshipValidationResult()V
    .locals 3

    .line 112
    iget v0, p0, Lo/isPlayable;->asBinder:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/isPlayable;->asBinder:I

    .line 113
    iget-object v1, p0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getDescription;

    iput-object v0, p0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    .line 114
    iget-object v0, p0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object v1, v0, Lo/MediaBrowserCompat$MediaItem$1;->onPostMessage:[Lo/onSearchResult;

    iget v2, p0, Lo/isPlayable;->asBinder:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lo/onSearchResult;

    iput-object v1, v0, Lo/MediaBrowserCompat$MediaItem$1;->onPostMessage:[Lo/onSearchResult;

    .line 115
    iget v0, p0, Lo/isPlayable;->asBinder:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lo/isPlayable;->getInterfaceDescriptor:[Z

    .line 116
    iput v0, p0, Lo/isPlayable;->onTransact:I

    .line 117
    iput v0, p0, Lo/isPlayable;->newSession:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 142
    :goto_0
    iget-object v2, p0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object v2, v2, Lo/MediaBrowserCompat$MediaItem$1;->onPostMessage:[Lo/onSearchResult;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 143
    iget-object v2, p0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object v2, v2, Lo/MediaBrowserCompat$MediaItem$1;->onPostMessage:[Lo/onSearchResult;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {v2}, Lo/onSearchResult;->onMessageChannelReady()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_1
    iget-object v1, p0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object v1, v1, Lo/MediaBrowserCompat$MediaItem$1;->onNavigationEvent:Lo/getMediaId$onPostMessage;

    iget-object v2, p0, Lo/isPlayable;->ICustomTabsCallback$Stub$Proxy:[Lo/onSearchResult;

    iget v3, p0, Lo/isPlayable;->ICustomTabsService:I

    invoke-interface {v1, v2, v3}, Lo/getMediaId$onPostMessage;->ICustomTabsCallback([Ljava/lang/Object;I)V

    .line 149
    iput v0, p0, Lo/isPlayable;->ICustomTabsService:I

    .line 151
    iget-object v1, p0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object v1, v1, Lo/MediaBrowserCompat$MediaItem$1;->onPostMessage:[Lo/onSearchResult;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    iput v0, p0, Lo/isPlayable;->onRelationshipValidationResult:I

    .line 156
    iget-object v1, p0, Lo/isPlayable;->ICustomTabsCallback:Lo/isPlayable$onNavigationEvent;

    invoke-interface {v1}, Lo/isPlayable$onNavigationEvent;->onPostMessage()V

    const/4 v1, 0x1

    .line 157
    iput v1, p0, Lo/isPlayable;->warmup:I

    .line 161
    invoke-direct {p0}, Lo/isPlayable;->ICustomTabsCallback$Stub()V

    .line 162
    iput v0, p0, Lo/isPlayable;->onMessageChannelReady:I

    return-void
.end method

.method public final ICustomTabsCallback(Lo/getDescription;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 470
    :cond_0
    iget v2, v0, Lo/isPlayable;->onMessageChannelReady:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget v4, v0, Lo/isPlayable;->newSession:I

    if-ge v2, v4, :cond_1

    iget v2, v0, Lo/isPlayable;->warmup:I

    add-int/2addr v2, v3

    iget v4, v0, Lo/isPlayable;->onTransact:I

    if-lt v2, v4, :cond_2

    .line 471
    :cond_1
    invoke-direct/range {p0 .. p0}, Lo/isPlayable;->onRelationshipValidationResult()V

    .line 478
    :cond_2
    iget-boolean v2, v1, Lo/getDescription;->onNavigationEvent:Z

    if-nez v2, :cond_1e

    .line 480
    invoke-virtual/range {p0 .. p1}, Lo/isPlayable;->onNavigationEvent(Lo/getDescription;)V

    .line 6445
    iget-object v2, v1, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    const/4 v5, 0x0

    if-nez v2, :cond_3

    iget v2, v1, Lo/getDescription;->ICustomTabsCallback:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_3

    iget-object v2, v1, Lo/getDescription;->onPostMessage:Lo/getFlags;

    iget v2, v2, Lo/getFlags;->onMessageChannelReady:I

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    return-void

    .line 7391
    :cond_4
    iget v2, v1, Lo/getDescription;->ICustomTabsCallback:F

    const/4 v6, -0x1

    cmpg-float v2, v2, v5

    if-gez v2, :cond_5

    .line 7393
    iget v2, v1, Lo/getDescription;->ICustomTabsCallback:F

    neg-float v2, v2

    iput v2, v1, Lo/getDescription;->ICustomTabsCallback:F

    .line 7394
    iget-object v2, v1, Lo/getDescription;->onPostMessage:Lo/getFlags;

    .line 7443
    iget v7, v2, Lo/getFlags;->onTransact:I

    const/4 v8, 0x0

    :goto_1
    if-eq v7, v6, :cond_5

    .line 7445
    iget v9, v2, Lo/getFlags;->onMessageChannelReady:I

    if-ge v8, v9, :cond_5

    .line 7446
    iget-object v9, v2, Lo/getFlags;->onRelationshipValidationResult:[F

    aget v10, v9, v7

    neg-float v10, v10

    aput v10, v9, v7

    .line 7447
    iget-object v9, v2, Lo/getFlags;->extraCallback:[I

    aget v7, v9, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 8408
    :cond_5
    iget-object v2, v1, Lo/getDescription;->onPostMessage:Lo/getFlags;

    .line 8512
    iget v7, v2, Lo/getFlags;->onTransact:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    if-eq v7, v6, :cond_12

    .line 8515
    iget v4, v2, Lo/getFlags;->onMessageChannelReady:I

    if-ge v9, v4, :cond_12

    .line 8516
    iget-object v4, v2, Lo/getFlags;->onRelationshipValidationResult:[F

    aget v4, v4, v7

    .line 8518
    iget-object v8, v2, Lo/getFlags;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object v8, v8, Lo/MediaBrowserCompat$MediaItem$1;->onPostMessage:[Lo/onSearchResult;

    iget-object v6, v2, Lo/getFlags;->onPostMessage:[I

    aget v6, v6, v7

    aget-object v6, v8, v6

    cmpg-float v8, v4, v5

    if-gez v8, :cond_6

    const v8, -0x457ced91    # -0.001f

    cmpl-float v8, v4, v8

    if-lez v8, :cond_7

    .line 8521
    iget-object v4, v2, Lo/getFlags;->onRelationshipValidationResult:[F

    aput v5, v4, v7

    .line 8523
    iget-object v4, v2, Lo/getFlags;->onNavigationEvent:Lo/getDescription;

    invoke-virtual {v6, v4}, Lo/onSearchResult;->onMessageChannelReady(Lo/getDescription;)V

    goto :goto_3

    :cond_6
    const v8, 0x3a83126f    # 0.001f

    cmpg-float v8, v4, v8

    if-gez v8, :cond_7

    .line 8527
    iget-object v4, v2, Lo/getFlags;->onRelationshipValidationResult:[F

    aput v5, v4, v7

    .line 8529
    iget-object v4, v2, Lo/getFlags;->onNavigationEvent:Lo/getDescription;

    invoke-virtual {v6, v4}, Lo/onSearchResult;->onMessageChannelReady(Lo/getDescription;)V

    :goto_3
    const/4 v4, 0x0

    :cond_7
    cmpl-float v8, v4, v5

    if-eqz v8, :cond_11

    .line 8533
    iget-object v8, v6, Lo/onSearchResult;->asInterface:Lo/onSearchResult$ICustomTabsCallback;

    sget-object v5, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/onSearchResult$ICustomTabsCallback;

    if-ne v8, v5, :cond_c

    if-nez v11, :cond_9

    .line 9491
    iget v5, v6, Lo/onSearchResult;->onRelationshipValidationResult:I

    if-gt v5, v3, :cond_8

    :goto_4
    const/4 v13, 0x1

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    :goto_5
    move v12, v4

    move-object v11, v6

    goto :goto_a

    :cond_9
    cmpl-float v5, v12, v4

    if-lez v5, :cond_a

    .line 10491
    iget v5, v6, Lo/onSearchResult;->onRelationshipValidationResult:I

    if-gt v5, v3, :cond_8

    goto :goto_4

    :cond_a
    if-nez v13, :cond_11

    .line 11491
    iget v5, v6, Lo/onSearchResult;->onRelationshipValidationResult:I

    if-gt v5, v3, :cond_b

    const/4 v5, 0x1

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_11

    move v12, v4

    move-object v11, v6

    const/4 v13, 0x1

    goto :goto_a

    :cond_c
    if-nez v11, :cond_11

    const/4 v5, 0x0

    cmpg-float v8, v4, v5

    if-gez v8, :cond_11

    if-nez v10, :cond_e

    .line 12491
    iget v5, v6, Lo/onSearchResult;->onRelationshipValidationResult:I

    if-gt v5, v3, :cond_d

    :goto_7
    const/4 v15, 0x1

    goto :goto_8

    :cond_d
    const/4 v15, 0x0

    :goto_8
    move v14, v4

    move-object v10, v6

    goto :goto_a

    :cond_e
    cmpl-float v5, v14, v4

    if-lez v5, :cond_f

    .line 13491
    iget v5, v6, Lo/onSearchResult;->onRelationshipValidationResult:I

    if-gt v5, v3, :cond_d

    goto :goto_7

    :cond_f
    if-nez v15, :cond_11

    .line 14491
    iget v5, v6, Lo/onSearchResult;->onRelationshipValidationResult:I

    if-gt v5, v3, :cond_10

    const/4 v5, 0x1

    goto :goto_9

    :cond_10
    const/4 v5, 0x0

    :goto_9
    if-eqz v5, :cond_11

    move v14, v4

    move-object v10, v6

    const/4 v15, 0x1

    .line 8565
    :cond_11
    :goto_a
    iget-object v4, v2, Lo/getFlags;->extraCallback:[I

    aget v7, v4, v7

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    goto/16 :goto_2

    :cond_12
    if-eqz v11, :cond_13

    move-object v10, v11

    :cond_13
    if-nez v10, :cond_14

    const/4 v2, 0x1

    goto :goto_b

    .line 8413
    :cond_14
    invoke-virtual {v1, v10}, Lo/getDescription;->onMessageChannelReady(Lo/onSearchResult;)V

    const/4 v2, 0x0

    .line 8415
    :goto_b
    iget-object v4, v1, Lo/getDescription;->onPostMessage:Lo/getFlags;

    iget v4, v4, Lo/getFlags;->onMessageChannelReady:I

    if-nez v4, :cond_15

    .line 8416
    iput-boolean v3, v1, Lo/getDescription;->onNavigationEvent:Z

    :cond_15
    if-eqz v2, :cond_1a

    .line 15229
    iget v2, v0, Lo/isPlayable;->warmup:I

    add-int/2addr v2, v3

    iget v4, v0, Lo/isPlayable;->onTransact:I

    if-lt v2, v4, :cond_16

    .line 15230
    invoke-direct/range {p0 .. p0}, Lo/isPlayable;->onRelationshipValidationResult()V

    .line 15232
    :cond_16
    sget-object v2, Lo/onSearchResult$ICustomTabsCallback;->extraCallback:Lo/onSearchResult$ICustomTabsCallback;

    invoke-direct {v0, v2}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult$ICustomTabsCallback;)Lo/onSearchResult;

    move-result-object v2

    .line 15233
    iget v4, v0, Lo/isPlayable;->onRelationshipValidationResult:I

    add-int/2addr v4, v3

    iput v4, v0, Lo/isPlayable;->onRelationshipValidationResult:I

    .line 15234
    iget v5, v0, Lo/isPlayable;->warmup:I

    add-int/2addr v5, v3

    iput v5, v0, Lo/isPlayable;->warmup:I

    .line 15235
    iput v4, v2, Lo/onSearchResult;->onNavigationEvent:I

    .line 15236
    iget-object v4, v0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object v4, v4, Lo/MediaBrowserCompat$MediaItem$1;->onPostMessage:[Lo/onSearchResult;

    iget v5, v0, Lo/isPlayable;->onRelationshipValidationResult:I

    aput-object v2, v4, v5

    .line 497
    iput-object v2, v1, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    .line 498
    invoke-direct/range {p0 .. p1}, Lo/isPlayable;->onPostMessage(Lo/getDescription;)V

    .line 500
    iget-object v4, v0, Lo/isPlayable;->requestPostMessageChannel:Lo/isPlayable$onNavigationEvent;

    invoke-interface {v4, v1}, Lo/isPlayable$onNavigationEvent;->onPostMessage(Lo/isPlayable$onNavigationEvent;)V

    .line 501
    iget-object v4, v0, Lo/isPlayable;->requestPostMessageChannel:Lo/isPlayable$onNavigationEvent;

    invoke-virtual {v0, v4}, Lo/isPlayable;->extraCallback(Lo/isPlayable$onNavigationEvent;)I

    .line 502
    iget v4, v2, Lo/onSearchResult;->onPostMessage:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_19

    .line 506
    iget-object v4, v1, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    if-ne v4, v2, :cond_17

    .line 15422
    iget-object v4, v1, Lo/getDescription;->onPostMessage:Lo/getFlags;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Lo/getFlags;->onPostMessage([ZLo/onSearchResult;)Lo/onSearchResult;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 513
    invoke-virtual {v1, v2}, Lo/getDescription;->onMessageChannelReady(Lo/onSearchResult;)V

    .line 516
    :cond_17
    iget-boolean v2, v1, Lo/getDescription;->onNavigationEvent:Z

    if-nez v2, :cond_18

    .line 517
    iget-object v2, v1, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    invoke-virtual {v2, v1}, Lo/onSearchResult;->ICustomTabsCallback(Lo/getDescription;)V

    .line 519
    :cond_18
    iget v2, v0, Lo/isPlayable;->onMessageChannelReady:I

    sub-int/2addr v2, v3

    iput v2, v0, Lo/isPlayable;->onMessageChannelReady:I

    :cond_19
    const/4 v2, 0x1

    goto :goto_c

    :cond_1a
    const/4 v2, 0x0

    .line 16038
    :goto_c
    iget-object v4, v1, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    if-eqz v4, :cond_1b

    iget-object v4, v1, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    iget-object v4, v4, Lo/onSearchResult;->asInterface:Lo/onSearchResult$ICustomTabsCallback;

    sget-object v5, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/onSearchResult$ICustomTabsCallback;

    if-eq v4, v5, :cond_1c

    iget v4, v1, Lo/getDescription;->ICustomTabsCallback:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_1b

    goto :goto_d

    :cond_1b
    const/4 v3, 0x0

    :cond_1c
    :goto_d
    if-nez v3, :cond_1d

    return-void

    :cond_1d
    move v4, v2

    goto :goto_e

    :cond_1e
    const/4 v4, 0x0

    :goto_e
    if-nez v4, :cond_1f

    .line 533
    invoke-direct/range {p0 .. p1}, Lo/isPlayable;->onPostMessage(Lo/getDescription;)V

    :cond_1f
    return-void
.end method

.method public final ICustomTabsCallback(Lo/onSearchResult;Lo/onSearchResult;IFLo/onSearchResult;Lo/onSearchResult;II)V
    .locals 5

    .line 1098
    invoke-virtual {p0}, Lo/isPlayable;->onMessageChannelReady()Lo/getDescription;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    .line 18282
    iget-object p3, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {p3, p1, v1}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 18283
    iget-object p1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {p1, p6, v1}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 18284
    iget-object p1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-virtual {p1, p2, p3}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    goto/16 :goto_0

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, p4, v2

    if-nez v2, :cond_2

    .line 18294
    iget-object p4, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {p4, p1, v1}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 18295
    iget-object p1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {p1, p2, v3}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 18296
    iget-object p1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {p1, p5, v3}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 18297
    iget-object p1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {p1, p6, v1}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    .line 18299
    iput p1, v0, Lo/getDescription;->ICustomTabsCallback:F

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_3

    .line 18303
    iget-object p4, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {p4, p1, v3}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 18304
    iget-object p1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {p1, p2, v1}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    int-to-float p1, p3

    .line 18305
    iput p1, v0, Lo/getDescription;->ICustomTabsCallback:F

    goto :goto_0

    :cond_3
    cmpl-float v2, p4, v1

    if-ltz v2, :cond_4

    .line 18308
    iget-object p1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {p1, p5, v3}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 18309
    iget-object p1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {p1, p6, v1}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    int-to-float p1, p7

    .line 18310
    iput p1, v0, Lo/getDescription;->ICustomTabsCallback:F

    goto :goto_0

    .line 18312
    :cond_4
    iget-object v2, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    sub-float v4, v1, p4

    mul-float v1, v1, v4

    invoke-virtual {v2, p1, v1}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 18313
    iget-object p1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    mul-float v1, v4, v3

    invoke-virtual {p1, p2, v1}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 18314
    iget-object p1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    mul-float v3, v3, p4

    invoke-virtual {p1, p5, v3}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 18315
    iget-object p1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {p1, p6, p4}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float p1, p1, v4

    int-to-float p2, p7

    mul-float p2, p2, p4

    add-float/2addr p1, p2

    .line 18317
    iput p1, v0, Lo/getDescription;->ICustomTabsCallback:F

    :cond_6
    :goto_0
    const/4 p1, 0x6

    if-eq p8, p1, :cond_7

    .line 1101
    invoke-virtual {v0, p0, p8}, Lo/getDescription;->onPostMessage(Lo/isPlayable;I)Lo/getDescription;

    .line 1103
    :cond_7
    invoke-virtual {p0, v0}, Lo/isPlayable;->ICustomTabsCallback(Lo/getDescription;)V

    return-void
.end method

.method public final asInterface()V
    .locals 3

    const/4 v0, 0x0

    .line 847
    :goto_0
    iget v1, p0, Lo/isPlayable;->onMessageChannelReady:I

    if-ge v0, v1, :cond_0

    .line 848
    iget-object v1, p0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    aget-object v1, v1, v0

    .line 849
    iget-object v2, v1, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    iget v1, v1, Lo/getDescription;->ICustomTabsCallback:F

    iput v1, v2, Lo/onSearchResult;->extraCallback:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/isPlayable$onNavigationEvent;)I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 564
    :goto_0
    iget v2, p0, Lo/isPlayable;->warmup:I

    if-ge v1, v2, :cond_0

    .line 565
    iget-object v2, p0, Lo/isPlayable;->getInterfaceDescriptor:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-nez v2, :cond_8

    add-int/lit8 v3, v3, 0x1

    .line 585
    iget v4, p0, Lo/isPlayable;->warmup:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_1

    return v3

    .line 589
    :cond_1
    invoke-interface {p1}, Lo/isPlayable$onNavigationEvent;->extraCallback()Lo/onSearchResult;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 590
    iget-object v4, p0, Lo/isPlayable;->getInterfaceDescriptor:[Z

    invoke-interface {p1}, Lo/isPlayable$onNavigationEvent;->extraCallback()Lo/onSearchResult;

    move-result-object v5

    iget v5, v5, Lo/onSearchResult;->onNavigationEvent:I

    aput-boolean v1, v4, v5

    .line 592
    :cond_2
    iget-object v4, p0, Lo/isPlayable;->getInterfaceDescriptor:[Z

    invoke-interface {p1, v4}, Lo/isPlayable$onNavigationEvent;->extraCallback([Z)Lo/onSearchResult;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 598
    iget-object v5, p0, Lo/isPlayable;->getInterfaceDescriptor:[Z

    iget v6, v4, Lo/onSearchResult;->onNavigationEvent:I

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_3

    return v3

    .line 601
    :cond_3
    iget-object v5, p0, Lo/isPlayable;->getInterfaceDescriptor:[Z

    iget v6, v4, Lo/onSearchResult;->onNavigationEvent:I

    aput-boolean v1, v5, v6

    :cond_4
    if-eqz v4, :cond_7

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 622
    :goto_2
    iget v9, p0, Lo/isPlayable;->onMessageChannelReady:I

    if-ge v7, v9, :cond_6

    .line 623
    iget-object v9, p0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    aget-object v9, v9, v7

    .line 624
    iget-object v10, v9, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    .line 625
    iget-object v10, v10, Lo/onSearchResult;->asInterface:Lo/onSearchResult$ICustomTabsCallback;

    sget-object v11, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/onSearchResult$ICustomTabsCallback;

    if-eq v10, v11, :cond_5

    .line 629
    iget-boolean v10, v9, Lo/getDescription;->onNavigationEvent:Z

    if-nez v10, :cond_5

    .line 633
    invoke-virtual {v9, v4}, Lo/getDescription;->onPostMessage(Lo/onSearchResult;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 639
    iget-object v10, v9, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {v10, v4}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_5

    .line 641
    iget v9, v9, Lo/getDescription;->ICustomTabsCallback:F

    neg-float v9, v9

    div-float/2addr v9, v10

    cmpg-float v10, v9, v5

    if-gez v10, :cond_5

    move v8, v7

    move v5, v9

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    if-ltz v8, :cond_7

    .line 656
    iget-object v5, p0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    aget-object v5, v5, v8

    .line 657
    iget-object v7, v5, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    iput v6, v7, Lo/onSearchResult;->onPostMessage:I

    .line 661
    invoke-virtual {v5, v4}, Lo/getDescription;->onMessageChannelReady(Lo/onSearchResult;)V

    .line 662
    iget-object v4, v5, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    iput v8, v4, Lo/onSearchResult;->onPostMessage:I

    .line 663
    iget-object v4, v5, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    invoke-virtual {v4, v5}, Lo/onSearchResult;->ICustomTabsCallback(Lo/getDescription;)V

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_8
    return v3
.end method

.method public final extraCallback()Lo/onSearchResult;
    .locals 3

    .line 214
    iget v0, p0, Lo/isPlayable;->warmup:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lo/isPlayable;->onTransact:I

    if-lt v0, v1, :cond_0

    .line 215
    invoke-direct {p0}, Lo/isPlayable;->onRelationshipValidationResult()V

    .line 217
    :cond_0
    sget-object v0, Lo/onSearchResult$ICustomTabsCallback;->extraCallback:Lo/onSearchResult$ICustomTabsCallback;

    invoke-direct {p0, v0}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult$ICustomTabsCallback;)Lo/onSearchResult;

    move-result-object v0

    .line 218
    iget v1, p0, Lo/isPlayable;->onRelationshipValidationResult:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/isPlayable;->onRelationshipValidationResult:I

    .line 219
    iget v2, p0, Lo/isPlayable;->warmup:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lo/isPlayable;->warmup:I

    .line 220
    iput v1, v0, Lo/onSearchResult;->onNavigationEvent:I

    .line 221
    iget-object v1, p0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object v1, v1, Lo/MediaBrowserCompat$MediaItem$1;->onPostMessage:[Lo/onSearchResult;

    iget v2, p0, Lo/isPlayable;->onRelationshipValidationResult:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public final extraCallback(ILjava/lang/String;)Lo/onSearchResult;
    .locals 2

    .line 286
    iget p2, p0, Lo/isPlayable;->warmup:I

    add-int/lit8 p2, p2, 0x1

    iget v0, p0, Lo/isPlayable;->onTransact:I

    if-lt p2, v0, :cond_0

    .line 287
    invoke-direct {p0}, Lo/isPlayable;->onRelationshipValidationResult()V

    .line 289
    :cond_0
    sget-object p2, Lo/onSearchResult$ICustomTabsCallback;->onNavigationEvent:Lo/onSearchResult$ICustomTabsCallback;

    invoke-direct {p0, p2}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult$ICustomTabsCallback;)Lo/onSearchResult;

    move-result-object p2

    .line 290
    iget v0, p0, Lo/isPlayable;->onRelationshipValidationResult:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/isPlayable;->onRelationshipValidationResult:I

    .line 291
    iget v1, p0, Lo/isPlayable;->warmup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/isPlayable;->warmup:I

    .line 292
    iput v0, p2, Lo/onSearchResult;->onNavigationEvent:I

    .line 293
    iput p1, p2, Lo/onSearchResult;->ICustomTabsCallback:I

    .line 294
    iget-object p1, p0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object p1, p1, Lo/MediaBrowserCompat$MediaItem$1;->onPostMessage:[Lo/onSearchResult;

    iget v0, p0, Lo/isPlayable;->onRelationshipValidationResult:I

    aput-object p2, p1, v0

    .line 295
    iget-object p1, p0, Lo/isPlayable;->ICustomTabsCallback:Lo/isPlayable$onNavigationEvent;

    invoke-interface {p1, p2}, Lo/isPlayable$onNavigationEvent;->ICustomTabsCallback(Lo/onSearchResult;)V

    return-object p2
.end method

.method public final extraCallback(Ljava/lang/Object;)Lo/onSearchResult;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 173
    :cond_0
    iget v1, p0, Lo/isPlayable;->warmup:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lo/isPlayable;->onTransact:I

    if-lt v1, v2, :cond_1

    .line 174
    invoke-direct {p0}, Lo/isPlayable;->onRelationshipValidationResult()V

    .line 177
    :cond_1
    instance-of v1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_6

    .line 178
    check-cast p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 2095
    iget-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    if-nez v0, :cond_3

    .line 2101
    iget-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    if-nez v0, :cond_2

    .line 2102
    new-instance v0, Lo/onSearchResult;

    sget-object v1, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/onSearchResult$ICustomTabsCallback;

    invoke-direct {v0, v1}, Lo/onSearchResult;-><init>(Lo/onSearchResult$ICustomTabsCallback;)V

    iput-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    goto :goto_0

    .line 2104
    :cond_2
    iget-object v0, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {v0}, Lo/onSearchResult;->onMessageChannelReady()V

    .line 3095
    :goto_0
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    move-object v0, p1

    .line 183
    :cond_3
    iget p1, v0, Lo/onSearchResult;->onNavigationEvent:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    iget p1, v0, Lo/onSearchResult;->onNavigationEvent:I

    iget v2, p0, Lo/isPlayable;->onRelationshipValidationResult:I

    if-gt p1, v2, :cond_4

    iget-object p1, p0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object p1, p1, Lo/MediaBrowserCompat$MediaItem$1;->onPostMessage:[Lo/onSearchResult;

    iget v2, v0, Lo/onSearchResult;->onNavigationEvent:I

    aget-object p1, p1, v2

    if-nez p1, :cond_6

    .line 186
    :cond_4
    iget p1, v0, Lo/onSearchResult;->onNavigationEvent:I

    if-eq p1, v1, :cond_5

    .line 187
    invoke-virtual {v0}, Lo/onSearchResult;->onMessageChannelReady()V

    .line 189
    :cond_5
    iget p1, p0, Lo/isPlayable;->onRelationshipValidationResult:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/isPlayable;->onRelationshipValidationResult:I

    .line 190
    iget v1, p0, Lo/isPlayable;->warmup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/isPlayable;->warmup:I

    .line 191
    iput p1, v0, Lo/onSearchResult;->onNavigationEvent:I

    .line 192
    sget-object p1, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/onSearchResult$ICustomTabsCallback;

    iput-object p1, v0, Lo/onSearchResult;->asInterface:Lo/onSearchResult$ICustomTabsCallback;

    .line 193
    iget-object p1, p0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object p1, p1, Lo/MediaBrowserCompat$MediaItem$1;->onPostMessage:[Lo/onSearchResult;

    iget v1, p0, Lo/isPlayable;->onRelationshipValidationResult:I

    aput-object v0, p1, v1

    :cond_6
    return-object v0
.end method

.method public final extraCallback(Lo/onSearchResult;Lo/onSearchResult;II)V
    .locals 3

    .line 1052
    invoke-virtual {p0}, Lo/isPlayable;->onMessageChannelReady()Lo/getDescription;

    move-result-object v0

    .line 1053
    invoke-virtual {p0}, Lo/isPlayable;->extraCallback()Lo/onSearchResult;

    move-result-object v1

    const/4 v2, 0x0

    .line 1054
    iput v2, v1, Lo/onSearchResult;->ICustomTabsCallback:I

    .line 1055
    invoke-virtual {v0, p1, p2, v1, p3}, Lo/getDescription;->ICustomTabsCallback(Lo/onSearchResult;Lo/onSearchResult;Lo/onSearchResult;I)Lo/getDescription;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_0

    .line 1057
    iget-object p1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {p1, v1}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    .line 17258
    invoke-virtual {p0, p4, p2}, Lo/isPlayable;->extraCallback(ILjava/lang/String;)Lo/onSearchResult;

    move-result-object p2

    .line 18153
    iget-object p3, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    int-to-float p1, p1

    invoke-virtual {p3, p2, p1}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 1060
    :cond_0
    invoke-virtual {p0, v0}, Lo/isPlayable;->ICustomTabsCallback(Lo/getDescription;)V

    return-void
.end method

.method public final onMessageChannelReady()Lo/getDescription;
    .locals 2

    .line 200
    iget-object v0, p0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaItem$1;->extraCallback:Lo/getMediaId$onPostMessage;

    invoke-interface {v0}, Lo/getMediaId$onPostMessage;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getDescription;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lo/getDescription;

    iget-object v1, p0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    invoke-direct {v0, v1}, Lo/getDescription;-><init>(Lo/MediaBrowserCompat$MediaItem$1;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3103
    iput-object v1, v0, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    .line 3104
    iget-object v1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {v1}, Lo/getFlags;->onPostMessage()V

    const/4 v1, 0x0

    .line 3105
    iput v1, v0, Lo/getDescription;->ICustomTabsCallback:F

    const/4 v1, 0x0

    .line 3106
    iput-boolean v1, v0, Lo/getDescription;->onNavigationEvent:Z

    .line 206
    :goto_0
    invoke-static {}, Lo/onSearchResult;->ICustomTabsCallback()V

    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 713
    :goto_0
    iget v3, v0, Lo/isPlayable;->onMessageChannelReady:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_1

    .line 714
    iget-object v3, v0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    aget-object v3, v3, v2

    iget-object v3, v3, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    .line 715
    iget-object v3, v3, Lo/onSearchResult;->asInterface:Lo/onSearchResult$ICustomTabsCallback;

    sget-object v6, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/onSearchResult$ICustomTabsCallback;

    if-eq v3, v6, :cond_0

    .line 718
    iget-object v3, v0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    aget-object v3, v3, v2

    iget v3, v3, Lo/getDescription;->ICustomTabsCallback:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_b

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-nez v2, :cond_a

    add-int/lit8 v3, v3, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 748
    :goto_3
    iget v12, v0, Lo/isPlayable;->onMessageChannelReady:I

    if-ge v8, v12, :cond_7

    .line 749
    iget-object v12, v0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    aget-object v12, v12, v8

    .line 750
    iget-object v13, v12, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    .line 751
    iget-object v13, v13, Lo/onSearchResult;->asInterface:Lo/onSearchResult$ICustomTabsCallback;

    sget-object v14, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/onSearchResult$ICustomTabsCallback;

    if-eq v13, v14, :cond_6

    .line 756
    iget-boolean v13, v12, Lo/getDescription;->onNavigationEvent:Z

    if-nez v13, :cond_6

    .line 759
    iget v13, v12, Lo/getDescription;->ICustomTabsCallback:F

    cmpg-float v13, v13, v4

    if-gez v13, :cond_6

    const/4 v13, 0x1

    .line 764
    :goto_4
    iget v14, v0, Lo/isPlayable;->warmup:I

    if-ge v13, v14, :cond_6

    .line 765
    iget-object v14, v0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object v14, v14, Lo/MediaBrowserCompat$MediaItem$1;->onPostMessage:[Lo/onSearchResult;

    aget-object v14, v14, v13

    .line 766
    iget-object v15, v12, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {v15, v14}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;)F

    move-result v15

    cmpg-float v16, v15, v4

    if-lez v16, :cond_5

    const/4 v1, 0x0

    :goto_5
    const/4 v4, 0x7

    if-ge v1, v4, :cond_5

    .line 774
    iget-object v4, v14, Lo/onSearchResult;->onMessageChannelReady:[F

    aget v4, v4, v1

    div-float/2addr v4, v15

    cmpg-float v17, v4, v6

    if-gez v17, :cond_2

    if-eq v1, v11, :cond_3

    :cond_2
    if-le v1, v11, :cond_4

    :cond_3
    move v11, v1

    move v6, v4

    move v9, v8

    move v10, v13

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    if-eq v9, v7, :cond_8

    .line 788
    iget-object v1, v0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    aget-object v1, v1, v9

    .line 793
    iget-object v4, v1, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    iput v7, v4, Lo/onSearchResult;->onPostMessage:I

    .line 797
    iget-object v4, v0, Lo/isPlayable;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object v4, v4, Lo/MediaBrowserCompat$MediaItem$1;->onPostMessage:[Lo/onSearchResult;

    aget-object v4, v4, v10

    invoke-virtual {v1, v4}, Lo/getDescription;->onMessageChannelReady(Lo/onSearchResult;)V

    .line 798
    iget-object v4, v1, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    iput v9, v4, Lo/onSearchResult;->onPostMessage:I

    .line 799
    iget-object v4, v1, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    invoke-virtual {v4, v1}, Lo/onSearchResult;->ICustomTabsCallback(Lo/getDescription;)V

    goto :goto_6

    :cond_8
    const/4 v2, 0x1

    .line 808
    :goto_6
    iget v1, v0, Lo/isPlayable;->warmup:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_9

    const/4 v2, 0x1

    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_a
    move v1, v3

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public final onNavigationEvent(Lo/getDescription;)V
    .locals 12

    .line 448
    iget v0, p0, Lo/isPlayable;->onMessageChannelReady:I

    if-lez v0, :cond_3

    .line 449
    iget-object v0, p1, Lo/getDescription;->onPostMessage:Lo/getFlags;

    iget-object v1, p0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    .line 5626
    iget v2, v0, Lo/getFlags;->onTransact:I

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    :goto_1
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq v2, v5, :cond_2

    .line 5628
    iget v7, v0, Lo/getFlags;->onMessageChannelReady:I

    if-ge v4, v7, :cond_2

    .line 5629
    iget-object v7, v0, Lo/getFlags;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object v7, v7, Lo/MediaBrowserCompat$MediaItem$1;->onPostMessage:[Lo/onSearchResult;

    iget-object v8, v0, Lo/getFlags;->onPostMessage:[I

    aget v8, v8, v2

    aget-object v7, v7, v8

    .line 5630
    iget v8, v7, Lo/onSearchResult;->onPostMessage:I

    if-eq v8, v5, :cond_1

    .line 5631
    iget-object v4, v0, Lo/getFlags;->onRelationshipValidationResult:[F

    aget v2, v4, v2

    .line 5632
    invoke-virtual {v0, v7, v6}, Lo/getFlags;->extraCallback(Lo/onSearchResult;Z)F

    .line 5634
    iget v4, v7, Lo/onSearchResult;->onPostMessage:I

    aget-object v4, v1, v4

    .line 5635
    iget-boolean v7, v4, Lo/getDescription;->onNavigationEvent:Z

    if-nez v7, :cond_0

    .line 5636
    iget-object v7, v4, Lo/getDescription;->onPostMessage:Lo/getFlags;

    check-cast v7, Lo/getFlags;

    .line 5637
    iget v8, v7, Lo/getFlags;->onTransact:I

    const/4 v9, 0x0

    :goto_2
    if-eq v8, v5, :cond_0

    .line 5639
    iget v10, v7, Lo/getFlags;->onMessageChannelReady:I

    if-ge v9, v10, :cond_0

    .line 5640
    iget-object v10, v0, Lo/getFlags;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaItem$1;

    iget-object v10, v10, Lo/MediaBrowserCompat$MediaItem$1;->onPostMessage:[Lo/onSearchResult;

    iget-object v11, v7, Lo/getFlags;->onPostMessage:[I

    aget v11, v11, v8

    aget-object v10, v10, v11

    .line 5642
    iget-object v11, v7, Lo/getFlags;->onRelationshipValidationResult:[F

    aget v11, v11, v8

    mul-float v11, v11, v2

    .line 5643
    invoke-virtual {v0, v10, v11, v6}, Lo/getFlags;->ICustomTabsCallback(Lo/onSearchResult;FZ)V

    .line 5644
    iget-object v10, v7, Lo/getFlags;->extraCallback:[I

    aget v8, v10, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 5648
    :cond_0
    iget v5, p1, Lo/getDescription;->ICustomTabsCallback:F

    iget v6, v4, Lo/getDescription;->ICustomTabsCallback:F

    mul-float v6, v6, v2

    add-float/2addr v5, v6

    iput v5, p1, Lo/getDescription;->ICustomTabsCallback:F

    .line 5649
    iget-object v2, v4, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    invoke-virtual {v2, p1}, Lo/onSearchResult;->onMessageChannelReady(Lo/getDescription;)V

    .line 5654
    iget v2, v0, Lo/getFlags;->onTransact:I

    goto :goto_0

    .line 5658
    :cond_1
    iget-object v5, v0, Lo/getFlags;->extraCallback:[I

    aget v2, v5, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 450
    :cond_2
    iget-object v0, p1, Lo/getDescription;->onPostMessage:Lo/getFlags;

    iget v0, v0, Lo/getFlags;->onMessageChannelReady:I

    if-nez v0, :cond_3

    .line 451
    iput-boolean v6, p1, Lo/getDescription;->onNavigationEvent:Z

    :cond_3
    return-void
.end method

.method public final onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V
    .locals 3

    .line 1003
    invoke-virtual {p0}, Lo/isPlayable;->onMessageChannelReady()Lo/getDescription;

    move-result-object v0

    .line 1004
    invoke-virtual {p0}, Lo/isPlayable;->extraCallback()Lo/onSearchResult;

    move-result-object v1

    const/4 v2, 0x0

    .line 1005
    iput v2, v1, Lo/onSearchResult;->ICustomTabsCallback:I

    .line 1006
    invoke-virtual {v0, p1, p2, v1, p3}, Lo/getDescription;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;Lo/onSearchResult;I)Lo/getDescription;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_0

    .line 1008
    iget-object p1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {p1, v1}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    .line 16258
    invoke-virtual {p0, p4, p2}, Lo/isPlayable;->extraCallback(ILjava/lang/String;)Lo/onSearchResult;

    move-result-object p2

    .line 17153
    iget-object p3, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    int-to-float p1, p1

    invoke-virtual {p3, p2, p1}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 1011
    :cond_0
    invoke-virtual {p0, v0}, Lo/isPlayable;->ICustomTabsCallback(Lo/getDescription;)V

    return-void
.end method

.method public final onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;
    .locals 3

    .line 1128
    invoke-virtual {p0}, Lo/isPlayable;->onMessageChannelReady()Lo/getDescription;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    if-gez p3, :cond_0

    mul-int/lit8 p3, p3, -0x1

    const/4 v1, 0x1

    :cond_0
    int-to-float p3, p3

    .line 19140
    iput p3, v0, Lo/getDescription;->ICustomTabsCallback:F

    :cond_1
    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_2

    .line 19143
    iget-object v1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {v1, p1, p3}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 19144
    iget-object p1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {p1, p2, v2}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    goto :goto_0

    .line 19146
    :cond_2
    iget-object v1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {v1, p1, v2}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 19147
    iget-object p1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {p1, p2, p3}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    :goto_0
    const/4 p1, 0x6

    if-eq p4, p1, :cond_3

    .line 1131
    invoke-virtual {v0, p0, p4}, Lo/getDescription;->onPostMessage(Lo/isPlayable;I)Lo/getDescription;

    .line 1133
    :cond_3
    invoke-virtual {p0, v0}, Lo/isPlayable;->ICustomTabsCallback(Lo/getDescription;)V

    return-object v0
.end method

.method public final onPostMessage(Lo/onSearchResult;I)V
    .locals 4

    .line 1146
    iget v0, p1, Lo/onSearchResult;->onPostMessage:I

    .line 1147
    iget v1, p1, Lo/onSearchResult;->onPostMessage:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 1148
    iget-object v1, p0, Lo/isPlayable;->extraCallback:[Lo/getDescription;

    aget-object v0, v1, v0

    .line 1149
    iget-boolean v1, v0, Lo/getDescription;->onNavigationEvent:Z

    if-eqz v1, :cond_0

    int-to-float p1, p2

    .line 1150
    iput p1, v0, Lo/getDescription;->ICustomTabsCallback:F

    return-void

    .line 1152
    :cond_0
    iget-object v1, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    iget v1, v1, Lo/getFlags;->onMessageChannelReady:I

    if-nez v1, :cond_1

    .line 1153
    iput-boolean v2, v0, Lo/getDescription;->onNavigationEvent:Z

    int-to-float p1, p2

    .line 1154
    iput p1, v0, Lo/getDescription;->ICustomTabsCallback:F

    return-void

    .line 1156
    :cond_1
    invoke-virtual {p0}, Lo/isPlayable;->onMessageChannelReady()Lo/getDescription;

    move-result-object v0

    if-gez p2, :cond_2

    mul-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    .line 20123
    iput p2, v0, Lo/getDescription;->ICustomTabsCallback:F

    .line 20124
    iget-object p2, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v1}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    goto :goto_0

    :cond_2
    int-to-float p2, p2

    .line 20126
    iput p2, v0, Lo/getDescription;->ICustomTabsCallback:F

    .line 20127
    iget-object p2, v0, Lo/getDescription;->onPostMessage:Lo/getFlags;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, v1}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 1158
    :goto_0
    invoke-virtual {p0, v0}, Lo/isPlayable;->ICustomTabsCallback(Lo/getDescription;)V

    return-void

    .line 1162
    :cond_3
    invoke-virtual {p0}, Lo/isPlayable;->onMessageChannelReady()Lo/getDescription;

    move-result-object v0

    .line 21114
    iput-object p1, v0, Lo/getDescription;->onMessageChannelReady:Lo/onSearchResult;

    int-to-float p2, p2

    .line 21115
    iput p2, p1, Lo/onSearchResult;->extraCallback:F

    .line 21116
    iput p2, v0, Lo/getDescription;->ICustomTabsCallback:F

    .line 21117
    iput-boolean v2, v0, Lo/getDescription;->onNavigationEvent:Z

    .line 1164
    invoke-virtual {p0, v0}, Lo/isPlayable;->ICustomTabsCallback(Lo/getDescription;)V

    return-void
.end method
