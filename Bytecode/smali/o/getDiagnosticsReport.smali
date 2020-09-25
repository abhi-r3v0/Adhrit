.class public Lo/getDiagnosticsReport;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDiagnosticsReport$onPostMessage;,
        Lo/getDiagnosticsReport$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static extraCallback:Z

.field private static onMessageChannelReady:Z

.field private static final onNavigationEvent:[I


# instance fields
.field private AudioAttributesCompatParcelizer:I

.field private AudioAttributesImplBaseParcelizer:I

.field ICustomTabsCallback:Lo/getDiagnosticsReport$onPostMessage;

.field private final ICustomTabsCallback$Stub:Lo/getCardExpiry$onMessageChannelReady;

.field private final ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:Z

.field private ICustomTabsService$Stub:J

.field private ICustomTabsService$Stub$Proxy:I

.field private INotificationSideChannel:F

.field private INotificationSideChannel$Default:I

.field private INotificationSideChannel$Stub:I

.field private INotificationSideChannel$Stub$Proxy:F

.field private IPostMessageService:J

.field private IPostMessageService$Stub:I

.field private IPostMessageService$Stub$Proxy:I

.field private IconCompatParcelizer:J

.field private MediaBrowserCompat:Lo/component6;

.field private RemoteActionCompatParcelizer:F

.field private final asBinder:J

.field private final asInterface:Lo/StatementResponse$CardDetails;

.field private cancel:I

.field private cancelAll:J

.field private extraCommand:Z

.field private getDefaultImpl:I

.field private final getInterfaceDescriptor:[J

.field private mayLaunchUrl:Landroid/view/Surface;

.field private final newSession:[J

.field private notify:I

.field private final onRelationshipValidationResult:I

.field private final onTransact:Landroid/content/Context;

.field private postMessage:J

.field private read:J

.field private requestPostMessageChannel:I

.field private setDefaultImpl:I

.field private updateVisuals:Landroid/view/Surface;

.field private validateRelationship:I

.field private warmup:Lo/getDiagnosticsReport$ICustomTabsCallback;

.field private write:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 82
    fill-array-data v0, :array_0

    sput-object v0, Lo/getDiagnosticsReport;->onNavigationEvent:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lo/getConfigURL;JLo/generateInviteUrl;ZZLandroid/os/Handler;Lo/getCardExpiry;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/getConfigURL;",
            "J",
            "Lo/generateInviteUrl<",
            "Lo/ApiTracker;",
            ">;ZZ",
            "Landroid/os/Handler;",
            "Lo/getCardExpiry;",
            "I)V"
        }
    .end annotation

    move-object v7, p0

    const/4 v1, 0x2

    const/high16 v6, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p7

    .line 266
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILo/getConfigURL;Lo/generateInviteUrl;ZZF)V

    move-wide v0, p3

    .line 273
    iput-wide v0, v7, Lo/getDiagnosticsReport;->asBinder:J

    move/from16 v0, p10

    .line 274
    iput v0, v7, Lo/getDiagnosticsReport;->onRelationshipValidationResult:I

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v7, Lo/getDiagnosticsReport;->onTransact:Landroid/content/Context;

    .line 276
    new-instance v1, Lo/StatementResponse$CardDetails;

    invoke-direct {v1, v0}, Lo/StatementResponse$CardDetails;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lo/getDiagnosticsReport;->asInterface:Lo/StatementResponse$CardDetails;

    .line 277
    new-instance v0, Lo/getCardExpiry$onMessageChannelReady;

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lo/getCardExpiry$onMessageChannelReady;-><init>(Landroid/os/Handler;Lo/getCardExpiry;)V

    iput-object v0, v7, Lo/getDiagnosticsReport;->ICustomTabsCallback$Stub:Lo/getCardExpiry$onMessageChannelReady;

    .line 278
    invoke-static {}, Lo/getDiagnosticsReport;->MediaBrowserCompat()Z

    move-result v0

    iput-boolean v0, v7, Lo/getDiagnosticsReport;->ICustomTabsCallback$Stub$Proxy:Z

    const/16 v0, 0xa

    new-array v1, v0, [J

    .line 279
    iput-object v1, v7, Lo/getDiagnosticsReport;->getInterfaceDescriptor:[J

    new-array v0, v0, [J

    .line 280
    iput-object v0, v7, Lo/getDiagnosticsReport;->newSession:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 281
    iput-wide v0, v7, Lo/getDiagnosticsReport;->read:J

    .line 282
    iput-wide v0, v7, Lo/getDiagnosticsReport;->IconCompatParcelizer:J

    .line 283
    iput-wide v0, v7, Lo/getDiagnosticsReport;->IPostMessageService:J

    const/4 v0, -0x1

    .line 284
    iput v0, v7, Lo/getDiagnosticsReport;->cancel:I

    .line 285
    iput v0, v7, Lo/getDiagnosticsReport;->IPostMessageService$Stub$Proxy:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 286
    iput v0, v7, Lo/getDiagnosticsReport;->INotificationSideChannel$Stub$Proxy:F

    .line 287
    iput v0, v7, Lo/getDiagnosticsReport;->INotificationSideChannel:F

    const/4 v0, 0x1

    .line 288
    iput v0, v7, Lo/getDiagnosticsReport;->requestPostMessageChannel:I

    .line 289
    invoke-direct {p0}, Lo/getDiagnosticsReport;->IconCompatParcelizer()V

    return-void
.end method

.method private AudioAttributesCompatParcelizer()V
    .locals 5

    .line 1021
    iget-wide v0, p0, Lo/getDiagnosticsReport;->asBinder:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1022
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/getDiagnosticsReport;->asBinder:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lo/getDiagnosticsReport;->IPostMessageService:J

    return-void
.end method

.method private AudioAttributesImplApi21Parcelizer()V
    .locals 5

    .line 1061
    iget v0, p0, Lo/getDiagnosticsReport;->cancel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/getDiagnosticsReport;->IPostMessageService$Stub$Proxy:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lo/getDiagnosticsReport;->INotificationSideChannel$Default:I

    iget v1, p0, Lo/getDiagnosticsReport;->cancel:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/getDiagnosticsReport;->INotificationSideChannel$Stub:I

    iget v1, p0, Lo/getDiagnosticsReport;->IPostMessageService$Stub$Proxy:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/getDiagnosticsReport;->setDefaultImpl:I

    iget v1, p0, Lo/getDiagnosticsReport;->getDefaultImpl:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/getDiagnosticsReport;->RemoteActionCompatParcelizer:F

    iget v1, p0, Lo/getDiagnosticsReport;->INotificationSideChannel$Stub$Proxy:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 1065
    :cond_1
    iget-object v0, p0, Lo/getDiagnosticsReport;->ICustomTabsCallback$Stub:Lo/getCardExpiry$onMessageChannelReady;

    iget v1, p0, Lo/getDiagnosticsReport;->cancel:I

    iget v2, p0, Lo/getDiagnosticsReport;->IPostMessageService$Stub$Proxy:I

    iget v3, p0, Lo/getDiagnosticsReport;->getDefaultImpl:I

    iget v4, p0, Lo/getDiagnosticsReport;->INotificationSideChannel$Stub$Proxy:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/getCardExpiry$onMessageChannelReady;->extraCallback(IIIF)V

    .line 1067
    iget v0, p0, Lo/getDiagnosticsReport;->cancel:I

    iput v0, p0, Lo/getDiagnosticsReport;->INotificationSideChannel$Default:I

    .line 1068
    iget v0, p0, Lo/getDiagnosticsReport;->IPostMessageService$Stub$Proxy:I

    iput v0, p0, Lo/getDiagnosticsReport;->INotificationSideChannel$Stub:I

    .line 1069
    iget v0, p0, Lo/getDiagnosticsReport;->getDefaultImpl:I

    iput v0, p0, Lo/getDiagnosticsReport;->setDefaultImpl:I

    .line 1070
    iget v0, p0, Lo/getDiagnosticsReport;->INotificationSideChannel$Stub$Proxy:F

    iput v0, p0, Lo/getDiagnosticsReport;->RemoteActionCompatParcelizer:F

    :cond_2
    return-void
.end method

.method private AudioAttributesImplBaseParcelizer()V
    .locals 5

    .line 1075
    iget v0, p0, Lo/getDiagnosticsReport;->INotificationSideChannel$Default:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/getDiagnosticsReport;->INotificationSideChannel$Stub:I

    if-eq v0, v1, :cond_1

    .line 1076
    :cond_0
    iget-object v0, p0, Lo/getDiagnosticsReport;->ICustomTabsCallback$Stub:Lo/getCardExpiry$onMessageChannelReady;

    iget v1, p0, Lo/getDiagnosticsReport;->INotificationSideChannel$Default:I

    iget v2, p0, Lo/getDiagnosticsReport;->INotificationSideChannel$Stub:I

    iget v3, p0, Lo/getDiagnosticsReport;->setDefaultImpl:I

    iget v4, p0, Lo/getDiagnosticsReport;->RemoteActionCompatParcelizer:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/getCardExpiry$onMessageChannelReady;->extraCallback(IIIF)V

    :cond_1
    return-void
.end method

.method private static ICustomTabsCallback(Lo/isAirplaneModeOn;Ljava/lang/String;II)I
    .locals 7

    const/4 v0, -0x1

    if-eq p2, v0, :cond_7

    if-ne p3, v0, :cond_0

    goto/16 :goto_5

    .line 1325
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "video/avc"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "video/mp4v-es"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "video/hevc"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "video/3gpp"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_6

    if-eq p1, v6, :cond_3

    if-eq p1, v4, :cond_6

    if-eq p1, v5, :cond_2

    if-eq p1, v2, :cond_2

    return v0

    :cond_2
    mul-int p2, p2, p3

    goto :goto_4

    .line 1332
    :cond_3
    sget-object p1, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "BRAVIA 4K 2015"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lo/ThirdPartyAuthorizeRequest;->onPostMessage:Ljava/lang/String;

    const-string v1, "Amazon"

    .line 1333
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "KFSOWI"

    .line 1334
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "AFTS"

    .line 1335
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p0, p0, Lo/isAirplaneModeOn;->onTransact:Z

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/16 p0, 0x10

    .line 1341
    invoke-static {p2, p0}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(II)I

    move-result p1

    invoke-static {p3, p0}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(II)I

    move-result p0

    mul-int p1, p1, p0

    shl-int/lit8 p0, p1, 0x4

    shl-int/lit8 p2, p0, 0x4

    goto :goto_3

    :cond_5
    :goto_2
    return v0

    :cond_6
    mul-int p2, p2, p3

    :goto_3
    const/4 v5, 0x2

    :goto_4
    mul-int/lit8 p2, p2, 0x3

    mul-int/lit8 v5, v5, 0x2

    .line 1359
    div-int/2addr p2, v5

    return p2

    :cond_7
    :goto_5
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch
.end method

.method private static ICustomTabsCallback(Lo/isAirplaneModeOn;Lo/p$a;)I
    .locals 3

    .line 1289
    iget v0, p1, Lo/p$a;->ICustomTabsCallback$Stub:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1293
    iget-object p0, p1, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 1295
    iget-object v2, p1, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1297
    :cond_0
    iget p0, p1, Lo/p$a;->ICustomTabsCallback$Stub:I

    add-int/2addr p0, v1

    return p0

    .line 1301
    :cond_1
    iget-object v0, p1, Lo/p$a;->onTransact:Ljava/lang/String;

    iget v1, p1, Lo/p$a;->getInterfaceDescriptor:I

    iget p1, p1, Lo/p$a;->newSession:I

    invoke-static {p0, v0, v1, p1}, Lo/getDiagnosticsReport;->ICustomTabsCallback(Lo/isAirplaneModeOn;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static ICustomTabsCallback(Landroid/media/MediaCodec;Landroid/view/Surface;)V
    .locals 0

    .line 1103
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private static ICustomTabsCallback$Stub(J)Z
    .locals 3

    const-wide/32 v0, -0x7a120

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private IconCompatParcelizer()V
    .locals 2

    const/4 v0, -0x1

    .line 1054
    iput v0, p0, Lo/getDiagnosticsReport;->INotificationSideChannel$Default:I

    .line 1055
    iput v0, p0, Lo/getDiagnosticsReport;->INotificationSideChannel$Stub:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 1056
    iput v1, p0, Lo/getDiagnosticsReport;->RemoteActionCompatParcelizer:F

    .line 1057
    iput v0, p0, Lo/getDiagnosticsReport;->setDefaultImpl:I

    return-void
.end method

.method private static MediaBrowserCompat()Z
    .locals 2

    .line 1377
    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->onPostMessage:Ljava/lang/String;

    const-string v1, "NVIDIA"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private RemoteActionCompatParcelizer()V
    .locals 3

    const/4 v0, 0x0

    .line 1026
    iput-boolean v0, p0, Lo/getDiagnosticsReport;->extraCommand:Z

    .line 1031
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lo/getDiagnosticsReport;->write:Z

    if-eqz v0, :cond_0

    .line 1032
    invoke-virtual {p0}, Lo/getDiagnosticsReport;->INotificationSideChannel$Default()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1035
    new-instance v1, Lo/getDiagnosticsReport$onPostMessage;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lo/getDiagnosticsReport$onPostMessage;-><init>(Lo/getDiagnosticsReport;Landroid/media/MediaCodec;Lo/getDiagnosticsReport$5;)V

    iput-object v1, p0, Lo/getDiagnosticsReport;->ICustomTabsCallback:Lo/getDiagnosticsReport$onPostMessage;

    :cond_0
    return-void
.end method

.method private connect()V
    .locals 6

    .line 1082
    iget v0, p0, Lo/getDiagnosticsReport;->IPostMessageService$Stub:I

    if-lez v0, :cond_0

    .line 1083
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1084
    iget-wide v2, p0, Lo/getDiagnosticsReport;->ICustomTabsService$Stub:J

    sub-long v2, v0, v2

    .line 1085
    iget-object v4, p0, Lo/getDiagnosticsReport;->ICustomTabsCallback$Stub:Lo/getCardExpiry$onMessageChannelReady;

    iget v5, p0, Lo/getDiagnosticsReport;->IPostMessageService$Stub:I

    invoke-virtual {v4, v5, v2, v3}, Lo/getCardExpiry$onMessageChannelReady;->extraCallback(IJ)V

    const/4 v2, 0x0

    .line 1086
    iput v2, p0, Lo/getDiagnosticsReport;->IPostMessageService$Stub:I

    .line 1087
    iput-wide v0, p0, Lo/getDiagnosticsReport;->ICustomTabsService$Stub:J

    :cond_0
    return-void
.end method

.method private static extraCallback(Lo/isAirplaneModeOn;Lo/p$a;)Landroid/graphics/Point;
    .locals 13

    .line 1245
    iget v0, p1, Lo/p$a;->newSession:I

    iget v1, p1, Lo/p$a;->getInterfaceDescriptor:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1246
    iget v1, p1, Lo/p$a;->newSession:I

    goto :goto_1

    :cond_1
    iget v1, p1, Lo/p$a;->getInterfaceDescriptor:I

    :goto_1
    if-eqz v0, :cond_2

    .line 1247
    iget v3, p1, Lo/p$a;->getInterfaceDescriptor:I

    goto :goto_2

    :cond_2
    iget v3, p1, Lo/p$a;->newSession:I

    :goto_2
    int-to-float v4, v3

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 1249
    sget-object v5, Lo/getDiagnosticsReport;->onNavigationEvent:[I

    array-length v6, v5

    :goto_3
    const/4 v7, 0x0

    if-ge v2, v6, :cond_a

    aget v8, v5, v2

    int-to-float v9, v8

    mul-float v9, v9, v4

    float-to-int v9, v9

    if-le v8, v1, :cond_a

    if-gt v9, v3, :cond_3

    goto :goto_8

    .line 1254
    :cond_3
    sget v10, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_6

    if-eqz v0, :cond_4

    move v7, v9

    goto :goto_4

    :cond_4
    move v7, v8

    :goto_4
    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v8, v9

    .line 1255
    :goto_5
    invoke-virtual {p0, v7, v8}, Lo/isAirplaneModeOn;->onNavigationEvent(II)Landroid/graphics/Point;

    move-result-object v7

    .line 1257
    iget v8, p1, Lo/p$a;->updateVisuals:F

    .line 1258
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    float-to-double v11, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Lo/isAirplaneModeOn;->ICustomTabsCallback(IID)Z

    move-result v8

    if-eqz v8, :cond_9

    return-object v7

    :cond_6
    const/16 v10, 0x10

    .line 1264
    :try_start_0
    invoke-static {v8, v10}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(II)I

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    .line 1265
    invoke-static {v9, v10}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(II)I

    move-result v9

    shl-int/lit8 v9, v9, 0x4

    mul-int v10, v8, v9

    .line 1266
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback()I

    move-result v11

    if-gt v10, v11, :cond_9

    .line 1267
    new-instance p0, Landroid/graphics/Point;

    if-eqz v0, :cond_7

    move p1, v9

    goto :goto_6

    :cond_7
    move p1, v8

    :goto_6
    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    move v8, v9

    :goto_7
    invoke-direct {p0, p1, v8}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    :cond_a
    :goto_8
    return-object v7
.end method

.method private extraCallback(Landroid/media/MediaCodec;II)V
    .locals 0

    .line 782
    iput p2, p0, Lo/getDiagnosticsReport;->cancel:I

    .line 783
    iput p3, p0, Lo/getDiagnosticsReport;->IPostMessageService$Stub$Proxy:I

    .line 784
    iget p2, p0, Lo/getDiagnosticsReport;->INotificationSideChannel:F

    iput p2, p0, Lo/getDiagnosticsReport;->INotificationSideChannel$Stub$Proxy:F

    .line 785
    sget p2, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_1

    .line 789
    iget p2, p0, Lo/getDiagnosticsReport;->notify:I

    const/16 p3, 0x5a

    if-eq p2, p3, :cond_0

    const/16 p3, 0x10e

    if-ne p2, p3, :cond_2

    .line 790
    :cond_0
    iget p2, p0, Lo/getDiagnosticsReport;->cancel:I

    .line 791
    iget p3, p0, Lo/getDiagnosticsReport;->IPostMessageService$Stub$Proxy:I

    iput p3, p0, Lo/getDiagnosticsReport;->cancel:I

    .line 792
    iput p2, p0, Lo/getDiagnosticsReport;->IPostMessageService$Stub$Proxy:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 793
    iget p3, p0, Lo/getDiagnosticsReport;->INotificationSideChannel$Stub$Proxy:F

    div-float/2addr p2, p3

    iput p2, p0, Lo/getDiagnosticsReport;->INotificationSideChannel$Stub$Proxy:F

    goto :goto_0

    .line 797
    :cond_1
    iget p2, p0, Lo/getDiagnosticsReport;->notify:I

    iput p2, p0, Lo/getDiagnosticsReport;->getDefaultImpl:I

    .line 800
    :cond_2
    :goto_0
    iget p2, p0, Lo/getDiagnosticsReport;->requestPostMessageChannel:I

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method private static onNavigationEvent(Landroid/media/MediaFormat;I)V
    .locals 2

    const-string/jumbo v0, "tunneled-playback"

    const/4 v1, 0x1

    .line 1108
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v0, "audio-session-id"

    .line 1109
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private onPostMessage(JJLo/p$a;)V
    .locals 6

    .line 805
    iget-object v0, p0, Lo/getDiagnosticsReport;->MediaBrowserCompat:Lo/component6;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 806
    invoke-interface/range {v0 .. v5}, Lo/component6;->onPostMessage(JJLo/p$a;)V

    :cond_0
    return-void
.end method

.method private onPostMessage(Landroid/view/Surface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    if-nez p1, :cond_1

    .line 492
    iget-object v0, p0, Lo/getDiagnosticsReport;->updateVisuals:Landroid/view/Surface;

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 495
    :cond_0
    invoke-virtual {p0}, Lo/getDiagnosticsReport;->getDefaultImpl()Lo/isAirplaneModeOn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 496
    invoke-direct {p0, v0}, Lo/getDiagnosticsReport;->onPostMessage(Lo/isAirplaneModeOn;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 497
    iget-object p1, p0, Lo/getDiagnosticsReport;->onTransact:Landroid/content/Context;

    iget-boolean v0, v0, Lo/isAirplaneModeOn;->onTransact:Z

    invoke-static {p1, v0}, Lo/getCardDetails;->ICustomTabsCallback(Landroid/content/Context;Z)Lo/getCardDetails;

    move-result-object p1

    iput-object p1, p0, Lo/getDiagnosticsReport;->updateVisuals:Landroid/view/Surface;

    .line 503
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/getDiagnosticsReport;->mayLaunchUrl:Landroid/view/Surface;

    if-eq v0, p1, :cond_6

    .line 504
    iput-object p1, p0, Lo/getDiagnosticsReport;->mayLaunchUrl:Landroid/view/Surface;

    .line 505
    invoke-virtual {p0}, Lo/c$a;->q_()I

    move-result v0

    .line 506
    invoke-virtual {p0}, Lo/getDiagnosticsReport;->INotificationSideChannel$Default()Landroid/media/MediaCodec;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 508
    sget v2, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lo/getDiagnosticsReport;->ICustomTabsService:Z

    if-nez v2, :cond_2

    .line 509
    invoke-static {v1, p1}, Lo/getDiagnosticsReport;->ICustomTabsCallback(Landroid/media/MediaCodec;Landroid/view/Surface;)V

    goto :goto_1

    .line 511
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel$Stub()V

    .line 512
    invoke-virtual {p0}, Lo/getDiagnosticsReport;->IPostMessageService$Stub$Proxy()V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 515
    iget-object v1, p0, Lo/getDiagnosticsReport;->updateVisuals:Landroid/view/Surface;

    if-eq p1, v1, :cond_4

    .line 517
    invoke-direct {p0}, Lo/getDiagnosticsReport;->AudioAttributesImplBaseParcelizer()V

    .line 519
    invoke-direct {p0}, Lo/getDiagnosticsReport;->RemoteActionCompatParcelizer()V

    const/4 p1, 0x2

    if-ne v0, p1, :cond_5

    .line 521
    invoke-direct {p0}, Lo/getDiagnosticsReport;->AudioAttributesCompatParcelizer()V

    return-void

    .line 525
    :cond_4
    invoke-direct {p0}, Lo/getDiagnosticsReport;->IconCompatParcelizer()V

    .line 526
    invoke-direct {p0}, Lo/getDiagnosticsReport;->RemoteActionCompatParcelizer()V

    :cond_5
    return-void

    :cond_6
    if-eqz p1, :cond_7

    .line 528
    iget-object v0, p0, Lo/getDiagnosticsReport;->updateVisuals:Landroid/view/Surface;

    if-eq p1, v0, :cond_7

    .line 531
    invoke-direct {p0}, Lo/getDiagnosticsReport;->AudioAttributesImplBaseParcelizer()V

    .line 532
    invoke-direct {p0}, Lo/getDiagnosticsReport;->write()V

    :cond_7
    return-void
.end method

.method private onPostMessage(Lo/isAirplaneModeOn;)Z
    .locals 2

    .line 1014
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lo/getDiagnosticsReport;->write:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lo/isAirplaneModeOn;->ICustomTabsCallback:Ljava/lang/String;

    .line 1016
    invoke-virtual {p0, v0}, Lo/getDiagnosticsReport;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lo/isAirplaneModeOn;->onTransact:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/getDiagnosticsReport;->onTransact:Landroid/content/Context;

    .line 1017
    invoke-static {p1}, Lo/getCardDetails;->onPostMessage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static onRelationshipValidationResult(J)Z
    .locals 3

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private write()V
    .locals 2

    .line 1048
    iget-boolean v0, p0, Lo/getDiagnosticsReport;->extraCommand:Z

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lo/getDiagnosticsReport;->ICustomTabsCallback$Stub:Lo/getCardExpiry$onMessageChannelReady;

    iget-object v1, p0, Lo/getDiagnosticsReport;->mayLaunchUrl:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lo/getCardExpiry$onMessageChannelReady;->onPostMessage(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected ICustomTabsCallback(I)V
    .locals 2

    .line 962
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    iget v1, v0, Lo/getCampaign;->ICustomTabsCallback$Stub:I

    add-int/2addr v1, p1

    iput v1, v0, Lo/getCampaign;->ICustomTabsCallback$Stub:I

    .line 963
    iget v0, p0, Lo/getDiagnosticsReport;->IPostMessageService$Stub:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/getDiagnosticsReport;->IPostMessageService$Stub:I

    .line 964
    iget v0, p0, Lo/getDiagnosticsReport;->validateRelationship:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/getDiagnosticsReport;->validateRelationship:I

    .line 965
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    iget v0, p0, Lo/getDiagnosticsReport;->validateRelationship:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    iget v1, v1, Lo/getCampaign;->onRelationshipValidationResult:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lo/getCampaign;->onRelationshipValidationResult:I

    .line 967
    iget p1, p0, Lo/getDiagnosticsReport;->onRelationshipValidationResult:I

    if-lez p1, :cond_0

    iget v0, p0, Lo/getDiagnosticsReport;->IPostMessageService$Stub:I

    if-lt v0, p1, :cond_0

    .line 968
    invoke-direct {p0}, Lo/getDiagnosticsReport;->connect()V

    :cond_0
    return-void
.end method

.method public ICustomTabsCallback(J)V
    .locals 6

    .line 839
    iget v0, p0, Lo/getDiagnosticsReport;->ICustomTabsService$Stub$Proxy:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lo/getDiagnosticsReport;->ICustomTabsService$Stub$Proxy:I

    .line 840
    :goto_0
    iget v0, p0, Lo/getDiagnosticsReport;->AudioAttributesImplBaseParcelizer:I

    if-eqz v0, :cond_0

    iget-object v2, p0, Lo/getDiagnosticsReport;->newSession:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    cmp-long v2, p1, v4

    if-ltz v2, :cond_0

    .line 842
    iget-object v2, p0, Lo/getDiagnosticsReport;->getInterfaceDescriptor:[J

    aget-wide v4, v2, v3

    iput-wide v4, p0, Lo/getDiagnosticsReport;->read:J

    add-int/lit8 v0, v0, -0x1

    .line 843
    iput v0, p0, Lo/getDiagnosticsReport;->AudioAttributesImplBaseParcelizer:I

    .line 844
    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 850
    iget-object v0, p0, Lo/getDiagnosticsReport;->newSession:[J

    iget v2, p0, Lo/getDiagnosticsReport;->AudioAttributesImplBaseParcelizer:I

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected ICustomTabsCallback(Landroid/media/MediaCodec;IJ)V
    .locals 2

    .line 981
    invoke-direct {p0}, Lo/getDiagnosticsReport;->AudioAttributesImplApi21Parcelizer()V

    const-string p3, "releaseOutputBuffer"

    .line 982
    invoke-static {p3}, Lo/StatementResponse;->ICustomTabsCallback(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 983
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 984
    invoke-static {}, Lo/StatementResponse;->onPostMessage()V

    .line 985
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lo/getDiagnosticsReport;->cancelAll:J

    .line 986
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    iget p2, p1, Lo/getCampaign;->extraCallback:I

    add-int/2addr p2, p3

    iput p2, p1, Lo/getCampaign;->extraCallback:I

    const/4 p1, 0x0

    .line 987
    iput p1, p0, Lo/getDiagnosticsReport;->validateRelationship:I

    .line 988
    invoke-virtual {p0}, Lo/getDiagnosticsReport;->cancelAll()V

    return-void
.end method

.method public ICustomTabsService$Stub$Proxy()Z
    .locals 9

    .line 408
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub$Proxy()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lo/getDiagnosticsReport;->extraCommand:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getDiagnosticsReport;->updateVisuals:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lo/getDiagnosticsReport;->mayLaunchUrl:Landroid/view/Surface;

    if-eq v4, v0, :cond_1

    .line 409
    :cond_0
    invoke-virtual {p0}, Lo/getDiagnosticsReport;->INotificationSideChannel$Default()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/getDiagnosticsReport;->write:Z

    if-eqz v0, :cond_2

    .line 411
    :cond_1
    iput-wide v2, p0, Lo/getDiagnosticsReport;->IPostMessageService:J

    return v1

    .line 413
    :cond_2
    iget-wide v4, p0, Lo/getDiagnosticsReport;->IPostMessageService:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    return v0

    .line 416
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lo/getDiagnosticsReport;->IPostMessageService:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    return v1

    .line 421
    :cond_4
    iput-wide v2, p0, Lo/getDiagnosticsReport;->IPostMessageService:J

    return v0
.end method

.method public INotificationSideChannel$Stub()V
    .locals 2

    const/4 v0, 0x0

    .line 596
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel$Stub()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    iput v0, p0, Lo/getDiagnosticsReport;->ICustomTabsService$Stub$Proxy:I

    return-void

    :catchall_0
    move-exception v1

    iput v0, p0, Lo/getDiagnosticsReport;->ICustomTabsService$Stub$Proxy:I

    .line 599
    throw v1
.end method

.method public cancel()Z
    .locals 1

    .line 544
    iget-boolean v0, p0, Lo/getDiagnosticsReport;->write:Z

    return v0
.end method

.method cancelAll()V
    .locals 2

    .line 1041
    iget-boolean v0, p0, Lo/getDiagnosticsReport;->extraCommand:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1042
    iput-boolean v0, p0, Lo/getDiagnosticsReport;->extraCommand:Z

    .line 1043
    iget-object v0, p0, Lo/getDiagnosticsReport;->ICustomTabsCallback$Stub:Lo/getCardExpiry$onMessageChannelReady;

    iget-object v1, p0, Lo/getDiagnosticsReport;->mayLaunchUrl:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lo/getCardExpiry$onMessageChannelReady;->onPostMessage(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method protected extraCallback(Lo/isAirplaneModeOn;Lo/p$a;[Lo/p$a;)Lo/getDiagnosticsReport$ICustomTabsCallback;
    .locals 11

    .line 1187
    iget v0, p2, Lo/p$a;->getInterfaceDescriptor:I

    .line 1188
    iget v1, p2, Lo/p$a;->newSession:I

    .line 1189
    invoke-static {p1, p2}, Lo/getDiagnosticsReport;->ICustomTabsCallback(Lo/isAirplaneModeOn;Lo/p$a;)I

    move-result v2

    .line 1190
    array-length v3, p3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v3, v4, :cond_1

    if-eq v2, v5, :cond_0

    .line 1194
    iget-object p3, p2, Lo/p$a;->onTransact:Ljava/lang/String;

    iget v3, p2, Lo/p$a;->getInterfaceDescriptor:I

    iget p2, p2, Lo/p$a;->newSession:I

    .line 1195
    invoke-static {p1, p3, v3, p2}, Lo/getDiagnosticsReport;->ICustomTabsCallback(Lo/isAirplaneModeOn;Ljava/lang/String;II)I

    move-result p1

    if-eq p1, v5, :cond_0

    int-to-float p2, v2

    const/high16 p3, 0x3fc00000    # 1.5f

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 1203
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1206
    :cond_0
    new-instance p1, Lo/getDiagnosticsReport$ICustomTabsCallback;

    invoke-direct {p1, v0, v1, v2}, Lo/getDiagnosticsReport$ICustomTabsCallback;-><init>(III)V

    return-object p1

    .line 1209
    :cond_1
    array-length v3, p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v3, :cond_5

    aget-object v9, p3, v7

    .line 1210
    invoke-virtual {p1, p2, v9, v6}, Lo/isAirplaneModeOn;->ICustomTabsCallback(Lo/p$a;Lo/p$a;Z)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1212
    iget v10, v9, Lo/p$a;->getInterfaceDescriptor:I

    if-eq v10, v5, :cond_3

    iget v10, v9, Lo/p$a;->newSession:I

    if-ne v10, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v10, 0x1

    :goto_2
    or-int/2addr v8, v10

    .line 1214
    iget v10, v9, Lo/p$a;->getInterfaceDescriptor:I

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1215
    iget v10, v9, Lo/p$a;->newSession:I

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1216
    invoke-static {p1, v9}, Lo/getDiagnosticsReport;->ICustomTabsCallback(Lo/isAirplaneModeOn;Lo/p$a;)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    if-eqz v8, :cond_6

    .line 1220
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v3, "Resolutions unknown. Codec max resolution: "

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v4, "MediaCodecVideoRenderer"

    invoke-static {v4, p3}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    invoke-static {p1, p2}, Lo/getDiagnosticsReport;->extraCallback(Lo/isAirplaneModeOn;Lo/p$a;)Landroid/graphics/Point;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 1223
    iget v5, p3, Landroid/graphics/Point;->x:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1224
    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1225
    iget-object p2, p2, Lo/p$a;->onTransact:Ljava/lang/String;

    .line 1228
    invoke-static {p1, p2, v0, v1}, Lo/getDiagnosticsReport;->ICustomTabsCallback(Lo/isAirplaneModeOn;Ljava/lang/String;II)I

    move-result p1

    .line 1226
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1229
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Codec max resolution adjusted to: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    :cond_6
    new-instance p1, Lo/getDiagnosticsReport$ICustomTabsCallback;

    invoke-direct {p1, v0, v1, v2}, Lo/getDiagnosticsReport$ICustomTabsCallback;-><init>(III)V

    return-object p1
.end method

.method protected extraCallback(Landroid/media/MediaCodec;IJ)V
    .locals 0

    const-string/jumbo p3, "skipVideoBuffer"

    .line 909
    invoke-static {p3}, Lo/StatementResponse;->ICustomTabsCallback(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 910
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 911
    invoke-static {}, Lo/StatementResponse;->onPostMessage()V

    .line 912
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    iget p2, p1, Lo/getCampaign;->onTransact:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lo/getCampaign;->onTransact:I

    return-void
.end method

.method protected extraCallback(Landroid/media/MediaCodec;IJJ)V
    .locals 0

    .line 1003
    invoke-direct {p0}, Lo/getDiagnosticsReport;->AudioAttributesImplApi21Parcelizer()V

    const-string p3, "releaseOutputBuffer"

    .line 1004
    invoke-static {p3}, Lo/StatementResponse;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p1, p2, p5, p6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 1006
    invoke-static {}, Lo/StatementResponse;->onPostMessage()V

    .line 1007
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    iput-wide p1, p0, Lo/getDiagnosticsReport;->cancelAll:J

    .line 1008
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    iget p2, p1, Lo/getCampaign;->extraCallback:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lo/getCampaign;->extraCallback:I

    const/4 p1, 0x0

    .line 1009
    iput p1, p0, Lo/getDiagnosticsReport;->validateRelationship:I

    .line 1010
    invoke-virtual {p0}, Lo/getDiagnosticsReport;->cancelAll()V

    return-void
.end method

.method public extraCallback(Ljava/lang/String;JJ)V
    .locals 6

    .line 630
    iget-object v0, p0, Lo/getDiagnosticsReport;->ICustomTabsCallback$Stub:Lo/getCardExpiry$onMessageChannelReady;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/getCardExpiry$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;JJ)V

    .line 631
    invoke-virtual {p0, p1}, Lo/getDiagnosticsReport;->onNavigationEvent(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lo/getDiagnosticsReport;->ICustomTabsService:Z

    return-void
.end method

.method public extraCallback(Lo/isAirplaneModeOn;Landroid/media/MediaCodec;Lo/p$a;Landroid/media/MediaCrypto;F)V
    .locals 7

    .line 554
    iget-object v2, p1, Lo/isAirplaneModeOn;->onMessageChannelReady:Ljava/lang/String;

    .line 555
    invoke-virtual {p0}, Lo/getDiagnosticsReport;->postMessage()[Lo/p$a;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lo/getDiagnosticsReport;->extraCallback(Lo/isAirplaneModeOn;Lo/p$a;[Lo/p$a;)Lo/getDiagnosticsReport$ICustomTabsCallback;

    move-result-object v3

    iput-object v3, p0, Lo/getDiagnosticsReport;->warmup:Lo/getDiagnosticsReport$ICustomTabsCallback;

    .line 556
    iget-boolean v5, p0, Lo/getDiagnosticsReport;->ICustomTabsCallback$Stub$Proxy:Z

    iget v6, p0, Lo/getDiagnosticsReport;->AudioAttributesCompatParcelizer:I

    move-object v0, p0

    move-object v1, p3

    move v4, p5

    .line 557
    invoke-virtual/range {v0 .. v6}, Lo/getDiagnosticsReport;->onMessageChannelReady(Lo/p$a;Ljava/lang/String;Lo/getDiagnosticsReport$ICustomTabsCallback;FZI)Landroid/media/MediaFormat;

    move-result-object p3

    .line 564
    iget-object p5, p0, Lo/getDiagnosticsReport;->mayLaunchUrl:Landroid/view/Surface;

    if-nez p5, :cond_1

    .line 565
    invoke-direct {p0, p1}, Lo/getDiagnosticsReport;->onPostMessage(Lo/isAirplaneModeOn;)Z

    move-result p5

    invoke-static {p5}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 566
    iget-object p5, p0, Lo/getDiagnosticsReport;->updateVisuals:Landroid/view/Surface;

    if-nez p5, :cond_0

    .line 567
    iget-object p5, p0, Lo/getDiagnosticsReport;->onTransact:Landroid/content/Context;

    iget-boolean p1, p1, Lo/isAirplaneModeOn;->onTransact:Z

    invoke-static {p5, p1}, Lo/getCardDetails;->ICustomTabsCallback(Landroid/content/Context;Z)Lo/getCardDetails;

    move-result-object p1

    iput-object p1, p0, Lo/getDiagnosticsReport;->updateVisuals:Landroid/view/Surface;

    .line 569
    :cond_0
    iget-object p1, p0, Lo/getDiagnosticsReport;->updateVisuals:Landroid/view/Surface;

    iput-object p1, p0, Lo/getDiagnosticsReport;->mayLaunchUrl:Landroid/view/Surface;

    .line 571
    :cond_1
    iget-object p1, p0, Lo/getDiagnosticsReport;->mayLaunchUrl:Landroid/view/Surface;

    const/4 p5, 0x0

    invoke-virtual {p2, p3, p1, p4, p5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 572
    sget p1, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 p3, 0x17

    if-lt p1, p3, :cond_2

    iget-boolean p1, p0, Lo/getDiagnosticsReport;->write:Z

    if-eqz p1, :cond_2

    .line 573
    new-instance p1, Lo/getDiagnosticsReport$onPostMessage;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Lo/getDiagnosticsReport$onPostMessage;-><init>(Lo/getDiagnosticsReport;Landroid/media/MediaCodec;Lo/getDiagnosticsReport$5;)V

    iput-object p1, p0, Lo/getDiagnosticsReport;->ICustomTabsCallback:Lo/getDiagnosticsReport$onPostMessage;

    :cond_2
    return-void
.end method

.method public extraCallback(Lo/isAirplaneModeOn;)Z
    .locals 1

    .line 538
    iget-object v0, p0, Lo/getDiagnosticsReport;->mayLaunchUrl:Landroid/view/Surface;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lo/getDiagnosticsReport;->onPostMessage(Lo/isAirplaneModeOn;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public extraCommand()V
    .locals 4

    const/4 v0, 0x0

    .line 460
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCommand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    iget-object v1, p0, Lo/getDiagnosticsReport;->updateVisuals:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 463
    iget-object v2, p0, Lo/getDiagnosticsReport;->mayLaunchUrl:Landroid/view/Surface;

    if-ne v2, v1, :cond_0

    .line 464
    iput-object v0, p0, Lo/getDiagnosticsReport;->mayLaunchUrl:Landroid/view/Surface;

    .line 466
    :cond_0
    iget-object v1, p0, Lo/getDiagnosticsReport;->updateVisuals:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 467
    iput-object v0, p0, Lo/getDiagnosticsReport;->updateVisuals:Landroid/view/Surface;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 462
    iget-object v2, p0, Lo/getDiagnosticsReport;->updateVisuals:Landroid/view/Surface;

    if-eqz v2, :cond_3

    .line 463
    iget-object v3, p0, Lo/getDiagnosticsReport;->mayLaunchUrl:Landroid/view/Surface;

    if-ne v3, v2, :cond_2

    .line 464
    iput-object v0, p0, Lo/getDiagnosticsReport;->mayLaunchUrl:Landroid/view/Surface;

    .line 466
    :cond_2
    iget-object v2, p0, Lo/getDiagnosticsReport;->updateVisuals:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 467
    iput-object v0, p0, Lo/getDiagnosticsReport;->updateVisuals:Landroid/view/Surface;

    .line 469
    :cond_3
    throw v1
.end method

.method public mayLaunchUrl()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 436
    iput-wide v0, p0, Lo/getDiagnosticsReport;->IPostMessageService:J

    .line 437
    invoke-direct {p0}, Lo/getDiagnosticsReport;->connect()V

    .line 438
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mayLaunchUrl()V

    return-void
.end method

.method public onMessageChannelReady(FLo/p$a;[Lo/p$a;)F
    .locals 5

    .line 618
    array-length p2, p3

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    .line 619
    iget v3, v3, Lo/p$a;->updateVisuals:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_0

    .line 621
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p2, v2, v0

    if-nez p2, :cond_2

    return v0

    :cond_2
    mul-float v2, v2, p1

    return v2
.end method

.method public onMessageChannelReady(Lo/getConfigURL;Lo/generateInviteUrl;Lo/p$a;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getConfigURL;",
            "Lo/generateInviteUrl<",
            "Lo/ApiTracker;",
            ">;",
            "Lo/p$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 296
    iget-object v0, p3, Lo/p$a;->onTransact:Ljava/lang/String;

    .line 297
    invoke-static {v0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 301
    :cond_0
    iget-object v0, p3, Lo/p$a;->warmup:Lo/generateLink;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 303
    :goto_0
    iget v4, v0, Lo/generateLink;->onPostMessage:I

    if-ge v2, v4, :cond_2

    .line 304
    invoke-virtual {v0, v2}, Lo/generateLink;->onPostMessage(I)Lo/generateLink$extraCallback;

    move-result-object v4

    iget-boolean v4, v4, Lo/generateLink$extraCallback;->extraCallback:Z

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 308
    :cond_2
    invoke-virtual {p0, p1, p3, v3}, Lo/getDiagnosticsReport;->onMessageChannelReady(Lo/getConfigURL;Lo/p$a;Z)Ljava/util/List;

    move-result-object v2

    .line 309
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    .line 310
    iget-object p2, p3, Lo/p$a;->onTransact:Ljava/lang/String;

    .line 312
    invoke-interface {p1, p2, v1, v1}, Lo/getConfigURL;->onPostMessage(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 316
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    return v5

    :cond_3
    return v6

    .line 320
    :cond_4
    invoke-static {p2, v0}, Lo/getDiagnosticsReport;->onPostMessage(Lo/generateInviteUrl;Lo/generateLink;)Z

    move-result p2

    if-nez p2, :cond_5

    return v5

    .line 324
    :cond_5
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/isAirplaneModeOn;

    .line 325
    invoke-virtual {p2, p3}, Lo/isAirplaneModeOn;->onNavigationEvent(Lo/p$a;)Z

    move-result v0

    .line 327
    invoke-virtual {p2, p3}, Lo/isAirplaneModeOn;->onMessageChannelReady(Lo/p$a;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/16 p2, 0x10

    goto :goto_1

    :cond_6
    const/16 p2, 0x8

    :goto_1
    if-eqz v0, :cond_7

    .line 332
    iget-object v2, p3, Lo/p$a;->onTransact:Ljava/lang/String;

    .line 333
    invoke-interface {p1, v2, v3, v6}, Lo/getConfigURL;->onPostMessage(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 337
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 338
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/isAirplaneModeOn;

    .line 339
    invoke-virtual {p1, p3}, Lo/isAirplaneModeOn;->onNavigationEvent(Lo/p$a;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 340
    invoke-virtual {p1, p3}, Lo/isAirplaneModeOn;->onMessageChannelReady(Lo/p$a;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 v1, 0x20

    :cond_7
    if-eqz v0, :cond_8

    const/4 p1, 0x4

    goto :goto_2

    :cond_8
    const/4 p1, 0x3

    :goto_2
    or-int/2addr p2, v1

    or-int/2addr p1, p2

    return p1
.end method

.method protected onMessageChannelReady(Lo/p$a;Ljava/lang/String;Lo/getDiagnosticsReport$ICustomTabsCallback;FZI)Landroid/media/MediaFormat;
    .locals 2

    .line 1134
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    .line 1136
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    iget p2, p1, Lo/p$a;->getInterfaceDescriptor:I

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1138
    iget p2, p1, Lo/p$a;->newSession:I

    const-string v1, "height"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1139
    iget-object p2, p1, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-static {v0, p2}, Lo/getSDKVersion;->extraCallback(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 1141
    iget p2, p1, Lo/p$a;->updateVisuals:F

    const-string v1, "frame-rate"

    invoke-static {v0, v1, p2}, Lo/getSDKVersion;->onPostMessage(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 1142
    iget p2, p1, Lo/p$a;->postMessage:I

    const-string/jumbo v1, "rotation-degrees"

    invoke-static {v0, v1, p2}, Lo/getSDKVersion;->ICustomTabsCallback(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1143
    iget-object p2, p1, Lo/p$a;->ICustomTabsService$Stub$Proxy:Lo/getRewardDetails;

    invoke-static {v0, p2}, Lo/getSDKVersion;->onNavigationEvent(Landroid/media/MediaFormat;Lo/getRewardDetails;)V

    .line 1144
    iget-object p2, p1, Lo/p$a;->onTransact:Ljava/lang/String;

    const-string/jumbo v1, "video/dolby-vision"

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1147
    iget-object p1, p1, Lo/p$a;->asBinder:Ljava/lang/String;

    .line 1148
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1150
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 1151
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string p2, "profile"

    .line 1150
    invoke-static {v0, p2, p1}, Lo/getSDKVersion;->ICustomTabsCallback(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1155
    :cond_0
    iget p1, p3, Lo/getDiagnosticsReport$ICustomTabsCallback;->onNavigationEvent:I

    const-string p2, "max-width"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1156
    iget p1, p3, Lo/getDiagnosticsReport$ICustomTabsCallback;->extraCallback:I

    const-string p2, "max-height"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1157
    iget p1, p3, Lo/getDiagnosticsReport$ICustomTabsCallback;->onMessageChannelReady:I

    const-string p2, "max-input-size"

    invoke-static {v0, p2, p1}, Lo/getSDKVersion;->ICustomTabsCallback(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1160
    sget p1, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 p2, 0x17

    const/4 p3, 0x0

    if-lt p1, p2, :cond_1

    const-string p1, "priority"

    .line 1161
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p4, p1

    if-eqz p1, :cond_1

    const-string p1, "operating-rate"

    .line 1163
    invoke-virtual {v0, p1, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_1
    if-eqz p5, :cond_2

    const/4 p1, 0x1

    const-string p2, "no-post-process"

    .line 1167
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "auto-frc"

    .line 1168
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    if-eqz p6, :cond_3

    .line 1171
    invoke-static {v0, p6}, Lo/getDiagnosticsReport;->onNavigationEvent(Landroid/media/MediaFormat;I)V

    :cond_3
    return-object v0
.end method

.method public onMessageChannelReady(Lo/getConfigURL;Lo/p$a;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getConfigURL;",
            "Lo/p$a;",
            "Z)",
            "Ljava/util/List<",
            "Lo/isAirplaneModeOn;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 353
    iget-object p2, p2, Lo/p$a;->onTransact:Ljava/lang/String;

    iget-boolean v0, p0, Lo/getDiagnosticsReport;->write:Z

    .line 354
    invoke-interface {p1, p2, p3, v0}, Lo/getConfigURL;->onPostMessage(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 355
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onMessageChannelReady(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 6

    const-string v0, "crop-right"

    .line 661
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 662
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 666
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "width"

    .line 667
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-eqz v1, :cond_2

    .line 670
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v1, p2

    add-int/2addr v1, v5

    goto :goto_2

    :cond_2
    const-string v1, "height"

    .line 671
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 672
    :goto_2
    invoke-direct {p0, p1, v0, v1}, Lo/getDiagnosticsReport;->extraCallback(Landroid/media/MediaCodec;II)V

    return-void
.end method

.method public onMessageChannelReady(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 360
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onMessageChannelReady(Z)V

    .line 361
    iget p1, p0, Lo/getDiagnosticsReport;->AudioAttributesCompatParcelizer:I

    .line 362
    invoke-virtual {p0}, Lo/getDiagnosticsReport;->IPostMessageService()Lo/Payload;

    move-result-object v0

    iget v0, v0, Lo/Payload;->extraCallback:I

    iput v0, p0, Lo/getDiagnosticsReport;->AudioAttributesCompatParcelizer:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 363
    :goto_0
    iput-boolean v0, p0, Lo/getDiagnosticsReport;->write:Z

    .line 364
    iget v0, p0, Lo/getDiagnosticsReport;->AudioAttributesCompatParcelizer:I

    if-eq v0, p1, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel$Stub()V

    .line 367
    :cond_1
    iget-object p1, p0, Lo/getDiagnosticsReport;->ICustomTabsCallback$Stub:Lo/getCardExpiry$onMessageChannelReady;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    invoke-virtual {p1, v0}, Lo/getCardExpiry$onMessageChannelReady;->ICustomTabsCallback(Lo/getCampaign;)V

    .line 368
    iget-object p1, p0, Lo/getDiagnosticsReport;->asInterface:Lo/StatementResponse$CardDetails;

    invoke-virtual {p1}, Lo/StatementResponse$CardDetails;->extraCallback()V

    return-void
.end method

.method public onMessageChannelReady([Lo/p$a;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 373
    iget-wide v0, p0, Lo/getDiagnosticsReport;->read:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 374
    iput-wide p2, p0, Lo/getDiagnosticsReport;->read:J

    goto :goto_1

    .line 376
    :cond_0
    iget v0, p0, Lo/getDiagnosticsReport;->AudioAttributesImplBaseParcelizer:I

    iget-object v1, p0, Lo/getDiagnosticsReport;->getInterfaceDescriptor:[J

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Too many stream changes, so dropping offset: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getDiagnosticsReport;->getInterfaceDescriptor:[J

    iget v2, p0, Lo/getDiagnosticsReport;->AudioAttributesImplBaseParcelizer:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecVideoRenderer"

    invoke-static {v1, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 380
    iput v0, p0, Lo/getDiagnosticsReport;->AudioAttributesImplBaseParcelizer:I

    .line 382
    :goto_0
    iget-object v0, p0, Lo/getDiagnosticsReport;->getInterfaceDescriptor:[J

    iget v1, p0, Lo/getDiagnosticsReport;->AudioAttributesImplBaseParcelizer:I

    add-int/lit8 v2, v1, -0x1

    aput-wide p2, v0, v2

    .line 383
    iget-object v0, p0, Lo/getDiagnosticsReport;->newSession:[J

    add-int/lit8 v1, v1, -0x1

    iget-wide v2, p0, Lo/getDiagnosticsReport;->IconCompatParcelizer:J

    aput-wide v2, v0, v1

    .line 385
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onMessageChannelReady([Lo/p$a;J)V

    return-void
.end method

.method protected onNavigationEvent(J)V
    .locals 3

    .line 822
    invoke-virtual {p0, p1, p2}, Lo/getDiagnosticsReport;->extraCallback(J)Lo/p$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {p0}, Lo/getDiagnosticsReport;->INotificationSideChannel$Default()Landroid/media/MediaCodec;

    move-result-object v1

    iget v2, v0, Lo/p$a;->getInterfaceDescriptor:I

    iget v0, v0, Lo/p$a;->newSession:I

    invoke-direct {p0, v1, v2, v0}, Lo/getDiagnosticsReport;->extraCallback(Landroid/media/MediaCodec;II)V

    .line 826
    :cond_0
    invoke-direct {p0}, Lo/getDiagnosticsReport;->AudioAttributesImplApi21Parcelizer()V

    .line 827
    invoke-virtual {p0}, Lo/getDiagnosticsReport;->cancelAll()V

    .line 828
    invoke-virtual {p0, p1, p2}, Lo/getDiagnosticsReport;->ICustomTabsCallback(J)V

    return-void
.end method

.method protected onNavigationEvent(Landroid/media/MediaCodec;IJ)V
    .locals 0

    const-string p3, "dropVideoBuffer"

    .line 923
    invoke-static {p3}, Lo/StatementResponse;->ICustomTabsCallback(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 924
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 925
    invoke-static {}, Lo/StatementResponse;->onPostMessage()V

    const/4 p1, 0x1

    .line 926
    invoke-virtual {p0, p1}, Lo/getDiagnosticsReport;->ICustomTabsCallback(I)V

    return-void
.end method

.method public onNavigationEvent(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLo/p$a;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-object/from16 v10, p5

    move/from16 v11, p7

    move-wide/from16 v0, p9

    .line 688
    iget-wide v2, v7, Lo/getDiagnosticsReport;->postMessage:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 689
    iput-wide v8, v7, Lo/getDiagnosticsReport;->postMessage:J

    .line 692
    :cond_0
    iget-wide v2, v7, Lo/getDiagnosticsReport;->read:J

    sub-long v12, v0, v2

    const/4 v14, 0x1

    if-eqz p11, :cond_1

    if-nez p12, :cond_1

    .line 695
    invoke-virtual {v7, v10, v11, v12, v13}, Lo/getDiagnosticsReport;->extraCallback(Landroid/media/MediaCodec;IJ)V

    return v14

    :cond_1
    sub-long v2, v0, v8

    .line 700
    iget-object v4, v7, Lo/getDiagnosticsReport;->mayLaunchUrl:Landroid/view/Surface;

    iget-object v5, v7, Lo/getDiagnosticsReport;->updateVisuals:Landroid/view/Surface;

    const/4 v15, 0x0

    if-ne v4, v5, :cond_3

    .line 702
    invoke-static {v2, v3}, Lo/getDiagnosticsReport;->onRelationshipValidationResult(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    invoke-virtual {v7, v10, v11, v12, v13}, Lo/getDiagnosticsReport;->extraCallback(Landroid/media/MediaCodec;IJ)V

    return v14

    :cond_2
    return v15

    .line 709
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v16, 0x3e8

    mul-long v4, v4, v16

    .line 710
    invoke-virtual/range {p0 .. p0}, Lo/c$a;->q_()I

    move-result v6

    const/4 v14, 0x2

    if-ne v6, v14, :cond_4

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    .line 711
    :goto_0
    iget-boolean v14, v7, Lo/getDiagnosticsReport;->extraCommand:Z

    if-eqz v14, :cond_d

    if-eqz v6, :cond_5

    iget-wide v14, v7, Lo/getDiagnosticsReport;->cancelAll:J

    sub-long v14, v4, v14

    .line 713
    invoke-virtual {v7, v2, v3, v14, v15}, Lo/getDiagnosticsReport;->onPostMessage(JJ)Z

    move-result v14

    if-eqz v14, :cond_5

    goto/16 :goto_3

    :cond_5
    if-eqz v6, :cond_c

    .line 724
    iget-wide v14, v7, Lo/getDiagnosticsReport;->postMessage:J

    cmp-long v6, v8, v14

    if-nez v6, :cond_6

    goto/16 :goto_2

    :cond_6
    sub-long v4, v4, p3

    sub-long/2addr v2, v4

    .line 734
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    mul-long v2, v2, v16

    add-long/2addr v2, v4

    .line 738
    iget-object v6, v7, Lo/getDiagnosticsReport;->asInterface:Lo/StatementResponse$CardDetails;

    invoke-virtual {v6, v0, v1, v2, v3}, Lo/StatementResponse$CardDetails;->onMessageChannelReady(JJ)J

    move-result-wide v14

    sub-long v0, v14, v4

    .line 740
    div-long v18, v0, v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p3

    move/from16 v5, p12

    .line 742
    invoke-virtual/range {v0 .. v5}, Lo/getDiagnosticsReport;->onNavigationEvent(JJZ)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v12

    move-wide/from16 v5, p1

    .line 743
    invoke-virtual/range {v0 .. v6}, Lo/getDiagnosticsReport;->onNavigationEvent(Landroid/media/MediaCodec;IJJ)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    return v0

    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p3

    move/from16 v5, p12

    .line 745
    invoke-virtual/range {v0 .. v5}, Lo/getDiagnosticsReport;->onPostMessage(JJZ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 746
    invoke-virtual {v7, v10, v11, v12, v13}, Lo/getDiagnosticsReport;->onNavigationEvent(Landroid/media/MediaCodec;IJ)V

    const/4 v0, 0x1

    return v0

    .line 750
    :cond_8
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    const-wide/32 v0, 0xc350

    cmp-long v2, v18, v0

    if-gez v2, :cond_b

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v3, v14

    move-object/from16 v5, p13

    .line 753
    invoke-direct/range {v0 .. v5}, Lo/getDiagnosticsReport;->onPostMessage(JJLo/p$a;)V

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v12

    move-wide v5, v14

    .line 754
    invoke-virtual/range {v0 .. v6}, Lo/getDiagnosticsReport;->extraCallback(Landroid/media/MediaCodec;IJJ)V

    const/4 v0, 0x1

    return v0

    :cond_9
    const-wide/16 v0, 0x7530

    cmp-long v2, v18, v0

    if-gez v2, :cond_b

    const-wide/16 v0, 0x2af8

    cmp-long v2, v18, v0

    if-lez v2, :cond_a

    const-wide/16 v0, 0x2710

    sub-long v18, v18, v0

    .line 765
    :try_start_0
    div-long v18, v18, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 767
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    return v0

    :cond_a
    :goto_1
    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v3, v14

    move-object/from16 v5, p13

    .line 771
    invoke-direct/range {v0 .. v5}, Lo/getDiagnosticsReport;->onPostMessage(JJLo/p$a;)V

    .line 772
    invoke-virtual {v7, v10, v11, v12, v13}, Lo/getDiagnosticsReport;->ICustomTabsCallback(Landroid/media/MediaCodec;IJ)V

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_c
    :goto_2
    const/4 v0, 0x0

    return v0

    .line 714
    :cond_d
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v3, v8

    move-object/from16 v5, p13

    .line 715
    invoke-direct/range {v0 .. v5}, Lo/getDiagnosticsReport;->onPostMessage(JJLo/p$a;)V

    .line 716
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v12

    move-wide v5, v8

    .line 717
    invoke-virtual/range {v0 .. v6}, Lo/getDiagnosticsReport;->extraCallback(Landroid/media/MediaCodec;IJJ)V

    goto :goto_4

    .line 719
    :cond_e
    invoke-virtual {v7, v10, v11, v12, v13}, Lo/getDiagnosticsReport;->ICustomTabsCallback(Landroid/media/MediaCodec;IJ)V

    :goto_4
    const/4 v0, 0x1

    return v0
.end method

.method protected onNavigationEvent(JJZ)Z
    .locals 0

    .line 885
    invoke-static {p1, p2}, Lo/getDiagnosticsReport;->ICustomTabsCallback$Stub(J)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p5, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onNavigationEvent(Landroid/media/MediaCodec;IJJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 943
    invoke-virtual {p0, p5, p6}, Lo/getDiagnosticsReport;->onMessageChannelReady(J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 947
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    iget p3, p2, Lo/getCampaign;->asInterface:I

    const/4 p4, 0x1

    add-int/2addr p3, p4

    iput p3, p2, Lo/getCampaign;->asInterface:I

    .line 950
    iget p2, p0, Lo/getDiagnosticsReport;->ICustomTabsService$Stub$Proxy:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lo/getDiagnosticsReport;->ICustomTabsCallback(I)V

    .line 951
    invoke-virtual {p0}, Lo/getDiagnosticsReport;->INotificationSideChannel$Stub$Proxy()Z

    return p4
.end method

.method protected onNavigationEvent(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "OMX.google"

    .line 1403
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 1407
    :cond_0
    const-class p1, Lo/getDiagnosticsReport;

    monitor-enter p1

    .line 1408
    :try_start_0
    sget-boolean v1, Lo/getDiagnosticsReport;->onMessageChannelReady:Z

    if-nez v1, :cond_9

    .line 1409
    sget v1, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v2, 0x1b

    const/4 v3, 0x1

    if-gt v1, v2, :cond_2

    const-string v1, "dangal"

    sget-object v4, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HWEML"

    sget-object v4, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1412
    :cond_1
    sput-boolean v3, Lo/getDiagnosticsReport;->extraCallback:Z

    goto/16 :goto_5

    .line 1413
    :cond_2
    sget v1, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    if-ge v1, v2, :cond_8

    .line 1431
    sget-object v1, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "HWWAS-H"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x37

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "HWVNS-H"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x36

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "ELUGA_Prim"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "ELUGA_Note"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "ASUS_X00AD_2"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "HWCAM-H"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x35

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "HWBLN-H"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x34

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "BRAVIA_ATV3_4K"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "Infinix-X572"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x3a

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "PB2-670M"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x56

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v2, "santoni"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x66

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "iball8735_9806"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x39

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "CPH1609"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v2, "woods_f"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x76

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "htc_e56ml_dtul"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x32

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "EverStar_S"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "hwALE-H"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x33

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "itel_S41"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x3c

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "LS-5017"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x42

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "panell_d"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x52

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "j2xlteins"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x3d

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "A7000plus"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "manning"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x44

    goto/16 :goto_1

    :sswitch_17
    const-string v2, "GIONEE_WBL7519"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x30

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "GIONEE_WBL7365"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x2f

    goto/16 :goto_1

    :sswitch_19
    const-string v2, "GIONEE_WBL5708"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x2e

    goto/16 :goto_1

    :sswitch_1a
    const-string v2, "QM16XE_U"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x64

    goto/16 :goto_1

    :sswitch_1b
    const-string v2, "Pixi5-10_4G"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x5c

    goto/16 :goto_1

    :sswitch_1c
    const-string v2, "TB3-850M"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x6e

    goto/16 :goto_1

    :sswitch_1d
    const-string v2, "TB3-850F"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x6d

    goto/16 :goto_1

    :sswitch_1e
    const-string v2, "TB3-730X"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x6c

    goto/16 :goto_1

    :sswitch_1f
    const-string v2, "TB3-730F"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x6b

    goto/16 :goto_1

    :sswitch_20
    const-string v2, "A7020a48"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_21
    const-string v2, "A7010a48"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_22
    const-string v2, "griffin"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x31

    goto/16 :goto_1

    :sswitch_23
    const-string v2, "marino_f"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x45

    goto/16 :goto_1

    :sswitch_24
    const-string v2, "CPY83_I00"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_25
    const-string v2, "A2016a40"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_26
    const-string v2, "le_x6"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x41

    goto/16 :goto_1

    :sswitch_27
    const-string v2, "i9031"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x38

    goto/16 :goto_1

    :sswitch_28
    const-string v2, "X3_HK"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x78

    goto/16 :goto_1

    :sswitch_29
    const-string v2, "V23GB"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x71

    goto/16 :goto_1

    :sswitch_2a
    const-string v2, "Q4310"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x62

    goto/16 :goto_1

    :sswitch_2b
    const-string v2, "Q4260"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x60

    goto/16 :goto_1

    :sswitch_2c
    const-string v2, "PRO7S"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x5e

    goto/16 :goto_1

    :sswitch_2d
    const-string v2, "F3311"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x25

    goto/16 :goto_1

    :sswitch_2e
    const-string v2, "F3215"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x24

    goto/16 :goto_1

    :sswitch_2f
    const-string v2, "F3213"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x23

    goto/16 :goto_1

    :sswitch_30
    const-string v2, "F3211"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x22

    goto/16 :goto_1

    :sswitch_31
    const-string v2, "F3116"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x21

    goto/16 :goto_1

    :sswitch_32
    const-string v2, "F3113"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x20

    goto/16 :goto_1

    :sswitch_33
    const-string v2, "F3111"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x1f

    goto/16 :goto_1

    :sswitch_34
    const-string v2, "E5643"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_35
    const-string v2, "A1601"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_36
    const-string v2, "Aura_Note_2"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_37
    const-string v2, "MEIZU_M5"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x46

    goto/16 :goto_1

    :sswitch_38
    const-string v2, "p212"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x4f

    goto/16 :goto_1

    :sswitch_39
    const-string v2, "mido"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x48

    goto/16 :goto_1

    :sswitch_3a
    const-string v2, "kate"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x40

    goto/16 :goto_1

    :sswitch_3b
    const-string v2, "fugu"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x27

    goto/16 :goto_1

    :sswitch_3c
    const-string v2, "XE2X"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x79

    goto/16 :goto_1

    :sswitch_3d
    const-string v2, "Q427"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x61

    goto/16 :goto_1

    :sswitch_3e
    const-string v2, "Q350"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x5f

    goto/16 :goto_1

    :sswitch_3f
    const-string v2, "P681"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x50

    goto/16 :goto_1

    :sswitch_40
    const-string v2, "1714"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_41
    const-string v2, "1713"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto/16 :goto_1

    :sswitch_42
    const-string v2, "1601"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    goto/16 :goto_1

    :sswitch_43
    const-string v2, "flo"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x26

    goto/16 :goto_1

    :sswitch_44
    const-string v2, "deb"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_45
    const-string v2, "cv3"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_46
    const-string v2, "cv1"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_47
    const-string v2, "Z80"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x7c

    goto/16 :goto_1

    :sswitch_48
    const-string v2, "QX1"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x65

    goto/16 :goto_1

    :sswitch_49
    const-string v2, "PLE"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x5d

    goto/16 :goto_1

    :sswitch_4a
    const-string v2, "P85"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x51

    goto/16 :goto_1

    :sswitch_4b
    const-string v2, "MX6"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x49

    goto/16 :goto_1

    :sswitch_4c
    const-string v2, "M5c"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x43

    goto/16 :goto_1

    :sswitch_4d
    const-string v2, "JGZ"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x3e

    goto/16 :goto_1

    :sswitch_4e
    const-string v2, "mh"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x47

    goto/16 :goto_1

    :sswitch_4f
    const-string v2, "V5"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x72

    goto/16 :goto_1

    :sswitch_50
    const-string v2, "V1"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x70

    goto/16 :goto_1

    :sswitch_51
    const-string v2, "Q5"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x63

    goto/16 :goto_1

    :sswitch_52
    const-string v2, "C1"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_53
    const-string/jumbo v2, "woods_fn"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x77

    goto/16 :goto_1

    :sswitch_54
    const-string v2, "ELUGA_A3_Pro"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_55
    const-string v2, "Z12_PRO"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x7b

    goto/16 :goto_1

    :sswitch_56
    const-string v2, "BLACK-1X"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_57
    const-string/jumbo v2, "taido_row"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x6a

    goto/16 :goto_1

    :sswitch_58
    const-string v2, "Pixi4-7_3G"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x5b

    goto/16 :goto_1

    :sswitch_59
    const-string v2, "GIONEE_GBL7360"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x2a

    goto/16 :goto_1

    :sswitch_5a
    const-string v2, "GiONEE_CBL7513"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x28

    goto/16 :goto_1

    :sswitch_5b
    const-string v2, "OnePlus5T"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x4e

    goto/16 :goto_1

    :sswitch_5c
    const-string/jumbo v2, "whyred"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x75

    goto/16 :goto_1

    :sswitch_5d
    const-string/jumbo v2, "watson"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x74

    goto/16 :goto_1

    :sswitch_5e
    const-string v2, "SVP-DTV15"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x68

    goto/16 :goto_1

    :sswitch_5f
    const-string v2, "A7000-a"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_60
    const-string v2, "nicklaus_f"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x4b

    goto/16 :goto_1

    :sswitch_61
    const-string/jumbo v2, "tcl_eu"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x6f

    goto/16 :goto_1

    :sswitch_62
    const-string v2, "ELUGA_Ray_X"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_63
    const-string/jumbo v2, "s905x018"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x69

    goto/16 :goto_1

    :sswitch_64
    const-string v2, "A10-70L"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_65
    const-string v2, "A10-70F"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_66
    const-string v2, "namath"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x4a

    goto/16 :goto_1

    :sswitch_67
    const-string v2, "Slate_Pro"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x67

    goto/16 :goto_1

    :sswitch_68
    const-string v2, "iris60"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x3b

    goto/16 :goto_1

    :sswitch_69
    const-string v2, "BRAVIA_ATV2"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_6a
    const-string v2, "GiONEE_GBL7319"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x29

    goto/16 :goto_1

    :sswitch_6b
    const-string v2, "panell_dt"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x55

    goto/16 :goto_1

    :sswitch_6c
    const-string v2, "panell_ds"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x54

    goto/16 :goto_1

    :sswitch_6d
    const-string v2, "panell_dl"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x53

    goto/16 :goto_1

    :sswitch_6e
    const-string/jumbo v2, "vernee_M5"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x73

    goto/16 :goto_1

    :sswitch_6f
    const-string v2, "Phantom6"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x5a

    goto/16 :goto_1

    :sswitch_70
    const-string v2, "ComioS1"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_71
    const-string v2, "XT1663"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x7a

    goto/16 :goto_1

    :sswitch_72
    const-string v2, "AquaPowerM"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_73
    const-string v2, "PGN611"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x59

    goto/16 :goto_1

    :sswitch_74
    const-string v2, "PGN610"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x58

    goto :goto_1

    :sswitch_75
    const-string v2, "PGN528"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x57

    goto :goto_1

    :sswitch_76
    const-string v2, "NX573J"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x4d

    goto :goto_1

    :sswitch_77
    const-string v2, "NX541J"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x4c

    goto :goto_1

    :sswitch_78
    const-string v2, "CP8676_I02"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x13

    goto :goto_1

    :sswitch_79
    const-string v2, "K50a40"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x3f

    goto :goto_1

    :sswitch_7a
    const-string v2, "GIONEE_SWW1631"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x2d

    goto :goto_1

    :sswitch_7b
    const-string v2, "GIONEE_SWW1627"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x2c

    goto :goto_1

    :sswitch_7c
    const-string v2, "GIONEE_SWW1609"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x2b

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 1557
    :pswitch_0
    sput-boolean v3, Lo/getDiagnosticsReport;->extraCallback:Z

    .line 1563
    :goto_2
    sget-object v1, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v4, 0x1e9d52

    if-eq v2, v4, :cond_5

    const v0, 0x1e9d5f

    if-eq v2, v0, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "AFTN"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const-string v2, "AFTA"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, -0x1

    :goto_4
    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_7

    goto :goto_5

    .line 1566
    :cond_7
    sput-boolean v3, Lo/getDiagnosticsReport;->extraCallback:Z

    .line 1573
    :cond_8
    :goto_5
    sput-boolean v3, Lo/getDiagnosticsReport;->onMessageChannelReady:Z

    .line 1575
    :cond_9
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1576
    sget-boolean p1, Lo/getDiagnosticsReport;->extraCallback:Z

    return p1

    :catchall_0
    move-exception v0

    .line 1575
    monitor-exit p1

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_7c
        -0x7fd6c381 -> :sswitch_7b
        -0x7fd6c368 -> :sswitch_7a
        -0x7d026749 -> :sswitch_79
        -0x78929d6a -> :sswitch_78
        -0x75f50a1e -> :sswitch_77
        -0x75f4fe9d -> :sswitch_76
        -0x736f875c -> :sswitch_75
        -0x736f83c2 -> :sswitch_74
        -0x736f83c1 -> :sswitch_73
        -0x7327ce1c -> :sswitch_72
        -0x651ebb62 -> :sswitch_71
        -0x6423293b -> :sswitch_70
        -0x604f5117 -> :sswitch_6f
        -0x5ca40cc4 -> :sswitch_6e
        -0x58520ec1 -> :sswitch_6d
        -0x58520eba -> :sswitch_6c
        -0x58520eb9 -> :sswitch_6b
        -0x4eaed329 -> :sswitch_6a
        -0x4892fb4f -> :sswitch_69
        -0x465b3df3 -> :sswitch_68
        -0x43e6c939 -> :sswitch_67
        -0x3ec0fcc5 -> :sswitch_66
        -0x3b33cca0 -> :sswitch_65
        -0x3b33cc9a -> :sswitch_64
        -0x398ae3f6 -> :sswitch_63
        -0x391f0fb4 -> :sswitch_62
        -0x346837ae -> :sswitch_61
        -0x323788e3 -> :sswitch_60
        -0x30f57652 -> :sswitch_5f
        -0x2f88a116 -> :sswitch_5e
        -0x2f61ed98 -> :sswitch_5d
        -0x2efd0837 -> :sswitch_5c
        -0x2e9e9441 -> :sswitch_5b
        -0x2247b8b1 -> :sswitch_5a
        -0x1f0fa2b7 -> :sswitch_59
        -0x19af3b41 -> :sswitch_58
        -0x114fad3e -> :sswitch_57
        -0x10dae90b -> :sswitch_56
        -0x1084b7b7 -> :sswitch_55
        -0xa5988e9 -> :sswitch_54
        -0x35f9fbf -> :sswitch_53
        0x84e -> :sswitch_52
        0xa04 -> :sswitch_51
        0xa9b -> :sswitch_50
        0xa9f -> :sswitch_4f
        0xd9b -> :sswitch_4e
        0x11ebd -> :sswitch_4d
        0x127db -> :sswitch_4c
        0x12beb -> :sswitch_4b
        0x1334d -> :sswitch_4a
        0x135c9 -> :sswitch_49
        0x13aea -> :sswitch_48
        0x158d2 -> :sswitch_47
        0x1821e -> :sswitch_46
        0x18220 -> :sswitch_45
        0x18401 -> :sswitch_44
        0x18c69 -> :sswitch_43
        0x1716e6 -> :sswitch_42
        0x171ac8 -> :sswitch_41
        0x171ac9 -> :sswitch_40
        0x252f5f -> :sswitch_3f
        0x25981d -> :sswitch_3e
        0x259b88 -> :sswitch_3d
        0x290a13 -> :sswitch_3c
        0x3021fd -> :sswitch_3b
        0x321e47 -> :sswitch_3a
        0x332327 -> :sswitch_39
        0x33ab63 -> :sswitch_38
        0x27691fb -> :sswitch_37
        0x349f581 -> :sswitch_36
        0x3ab0ea7 -> :sswitch_35
        0x3e53ea5 -> :sswitch_34
        0x3f25a44 -> :sswitch_33
        0x3f25a46 -> :sswitch_32
        0x3f25a49 -> :sswitch_31
        0x3f25e05 -> :sswitch_30
        0x3f25e07 -> :sswitch_2f
        0x3f25e09 -> :sswitch_2e
        0x3f261c6 -> :sswitch_2d
        0x48dce49 -> :sswitch_2c
        0x48dd589 -> :sswitch_2b
        0x48dd8af -> :sswitch_2a
        0x4d36832 -> :sswitch_29
        0x4f0b0e7 -> :sswitch_28
        0x5e2479e -> :sswitch_27
        0x6214744 -> :sswitch_26
        0x9d91379 -> :sswitch_25
        0xadc0551 -> :sswitch_24
        0xea056b3 -> :sswitch_23
        0x1121dbc3 -> :sswitch_22
        0x1255818c -> :sswitch_21
        0x1263990d -> :sswitch_20
        0x12d90f3a -> :sswitch_1f
        0x12d90f4c -> :sswitch_1e
        0x12d98b1b -> :sswitch_1d
        0x12d98b22 -> :sswitch_1c
        0x1844c711 -> :sswitch_1b
        0x1e3e8044 -> :sswitch_1a
        0x2f5336ed -> :sswitch_19
        0x2f54115e -> :sswitch_18
        0x2f541849 -> :sswitch_17
        0x31cf010e -> :sswitch_16
        0x36ad82f4 -> :sswitch_15
        0x391a0b61 -> :sswitch_14
        0x3f3728cd -> :sswitch_13
        0x448ec687 -> :sswitch_12
        0x46260f63 -> :sswitch_11
        0x4c505106 -> :sswitch_10
        0x4de67084 -> :sswitch_f
        0x506ac5a9 -> :sswitch_e
        0x5abad9cd -> :sswitch_d
        0x64d2e6e9 -> :sswitch_c
        0x65e4085b -> :sswitch_b
        0x6f373556 -> :sswitch_a
        0x719f1dcb -> :sswitch_9
        0x75d9a0f0 -> :sswitch_8
        0x7796d144 -> :sswitch_7
        0x78fc0e50 -> :sswitch_6
        0x790521fb -> :sswitch_5
        0x7933207f -> :sswitch_4
        0x7a05a409 -> :sswitch_3
        0x7a0696bd -> :sswitch_2
        0x7a16dfe7 -> :sswitch_1
        0x7a1f0e95 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPostMessage(Landroid/media/MediaCodec;Lo/isAirplaneModeOn;Lo/p$a;Lo/p$a;)I
    .locals 1

    const/4 p1, 0x1

    .line 580
    invoke-virtual {p2, p3, p4, p1}, Lo/isAirplaneModeOn;->ICustomTabsCallback(Lo/p$a;Lo/p$a;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p4, Lo/p$a;->getInterfaceDescriptor:I

    iget-object v0, p0, Lo/getDiagnosticsReport;->warmup:Lo/getDiagnosticsReport$ICustomTabsCallback;

    iget v0, v0, Lo/getDiagnosticsReport$ICustomTabsCallback;->onNavigationEvent:I

    if-gt p1, v0, :cond_1

    iget p1, p4, Lo/p$a;->newSession:I

    iget-object v0, p0, Lo/getDiagnosticsReport;->warmup:Lo/getDiagnosticsReport$ICustomTabsCallback;

    iget v0, v0, Lo/getDiagnosticsReport$ICustomTabsCallback;->extraCallback:I

    if-gt p1, v0, :cond_1

    .line 584
    invoke-static {p2, p4}, Lo/getDiagnosticsReport;->ICustomTabsCallback(Lo/isAirplaneModeOn;Lo/p$a;)I

    move-result p1

    iget-object p2, p0, Lo/getDiagnosticsReport;->warmup:Lo/getDiagnosticsReport$ICustomTabsCallback;

    iget p2, p2, Lo/getDiagnosticsReport$ICustomTabsCallback;->onMessageChannelReady:I

    if-gt p1, p2, :cond_1

    .line 585
    invoke-virtual {p3, p4}, Lo/p$a;->onPostMessage(Lo/p$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPostMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 475
    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lo/getDiagnosticsReport;->onPostMessage(Landroid/view/Surface;)V

    return-void

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 477
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lo/getDiagnosticsReport;->requestPostMessageChannel:I

    .line 478
    invoke-virtual {p0}, Lo/getDiagnosticsReport;->INotificationSideChannel$Default()Landroid/media/MediaCodec;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 480
    iget p2, p0, Lo/getDiagnosticsReport;->requestPostMessageChannel:I

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 483
    check-cast p2, Lo/component6;

    iput-object p2, p0, Lo/getDiagnosticsReport;->MediaBrowserCompat:Lo/component6;

    return-void

    .line 485
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onPostMessage(JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 390
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage(JZ)V

    .line 391
    invoke-direct {p0}, Lo/getDiagnosticsReport;->RemoteActionCompatParcelizer()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 392
    iput-wide p1, p0, Lo/getDiagnosticsReport;->postMessage:J

    const/4 v0, 0x0

    .line 393
    iput v0, p0, Lo/getDiagnosticsReport;->validateRelationship:I

    .line 394
    iput-wide p1, p0, Lo/getDiagnosticsReport;->IconCompatParcelizer:J

    .line 395
    iget v1, p0, Lo/getDiagnosticsReport;->AudioAttributesImplBaseParcelizer:I

    if-eqz v1, :cond_0

    .line 396
    iget-object v2, p0, Lo/getDiagnosticsReport;->getInterfaceDescriptor:[J

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v2, v1

    iput-wide v1, p0, Lo/getDiagnosticsReport;->read:J

    .line 397
    iput v0, p0, Lo/getDiagnosticsReport;->AudioAttributesImplBaseParcelizer:I

    :cond_0
    if-eqz p3, :cond_1

    .line 400
    invoke-direct {p0}, Lo/getDiagnosticsReport;->AudioAttributesCompatParcelizer()V

    return-void

    .line 402
    :cond_1
    iput-wide p1, p0, Lo/getDiagnosticsReport;->IPostMessageService:J

    return-void
.end method

.method public onPostMessage(Lo/p$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 636
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage(Lo/p$a;)V

    .line 637
    iget-object v0, p0, Lo/getDiagnosticsReport;->ICustomTabsCallback$Stub:Lo/getCardExpiry$onMessageChannelReady;

    invoke-virtual {v0, p1}, Lo/getCardExpiry$onMessageChannelReady;->extraCallback(Lo/p$a;)V

    .line 638
    iget v0, p1, Lo/p$a;->extraCommand:F

    iput v0, p0, Lo/getDiagnosticsReport;->INotificationSideChannel:F

    .line 639
    iget p1, p1, Lo/p$a;->postMessage:I

    iput p1, p0, Lo/getDiagnosticsReport;->notify:I

    return-void
.end method

.method public onPostMessage(Lo/setReferrerCustomerId;)V
    .locals 4

    .line 650
    iget v0, p0, Lo/getDiagnosticsReport;->ICustomTabsService$Stub$Proxy:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/getDiagnosticsReport;->ICustomTabsService$Stub$Proxy:I

    .line 651
    iget-wide v0, p1, Lo/setReferrerCustomerId;->onPostMessage:J

    iget-wide v2, p0, Lo/getDiagnosticsReport;->IconCompatParcelizer:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lo/getDiagnosticsReport;->IconCompatParcelizer:J

    .line 652
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lo/getDiagnosticsReport;->write:Z

    if-eqz v0, :cond_0

    .line 655
    iget-wide v0, p1, Lo/setReferrerCustomerId;->onPostMessage:J

    invoke-virtual {p0, v0, v1}, Lo/getDiagnosticsReport;->onNavigationEvent(J)V

    :cond_0
    return-void
.end method

.method protected onPostMessage(JJ)Z
    .locals 1

    .line 898
    invoke-static {p1, p2}, Lo/getDiagnosticsReport;->onRelationshipValidationResult(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/32 p1, 0x186a0

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onPostMessage(JJZ)Z
    .locals 0

    .line 870
    invoke-static {p1, p2}, Lo/getDiagnosticsReport;->onRelationshipValidationResult(J)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p5, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public requestPostMessageChannel()V
    .locals 4

    .line 428
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->requestPostMessageChannel()V

    const/4 v0, 0x0

    .line 429
    iput v0, p0, Lo/getDiagnosticsReport;->IPostMessageService$Stub:I

    .line 430
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/getDiagnosticsReport;->ICustomTabsService$Stub:J

    .line 431
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lo/getDiagnosticsReport;->cancelAll:J

    return-void
.end method

.method public setDefaultImpl()Z
    .locals 2

    const/4 v0, 0x0

    .line 606
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setDefaultImpl()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    iput v0, p0, Lo/getDiagnosticsReport;->ICustomTabsService$Stub$Proxy:I

    return v1

    :catchall_0
    move-exception v1

    iput v0, p0, Lo/getDiagnosticsReport;->ICustomTabsService$Stub$Proxy:I

    .line 609
    throw v1
.end method

.method public updateVisuals()V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 443
    iput-wide v0, p0, Lo/getDiagnosticsReport;->IconCompatParcelizer:J

    .line 444
    iput-wide v0, p0, Lo/getDiagnosticsReport;->read:J

    const/4 v0, 0x0

    .line 445
    iput v0, p0, Lo/getDiagnosticsReport;->AudioAttributesImplBaseParcelizer:I

    .line 446
    invoke-direct {p0}, Lo/getDiagnosticsReport;->IconCompatParcelizer()V

    .line 447
    invoke-direct {p0}, Lo/getDiagnosticsReport;->RemoteActionCompatParcelizer()V

    .line 448
    iget-object v0, p0, Lo/getDiagnosticsReport;->asInterface:Lo/StatementResponse$CardDetails;

    invoke-virtual {v0}, Lo/StatementResponse$CardDetails;->onMessageChannelReady()V

    const/4 v0, 0x0

    .line 449
    iput-object v0, p0, Lo/getDiagnosticsReport;->ICustomTabsCallback:Lo/getDiagnosticsReport$onPostMessage;

    .line 451
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateVisuals()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    iget-object v0, p0, Lo/getDiagnosticsReport;->ICustomTabsCallback$Stub:Lo/getCardExpiry$onMessageChannelReady;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    invoke-virtual {v0, v1}, Lo/getCardExpiry$onMessageChannelReady;->onPostMessage(Lo/getCampaign;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lo/getDiagnosticsReport;->ICustomTabsCallback$Stub:Lo/getCardExpiry$onMessageChannelReady;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    invoke-virtual {v1, v2}, Lo/getCardExpiry$onMessageChannelReady;->onPostMessage(Lo/getCampaign;)V

    .line 454
    throw v0
.end method
