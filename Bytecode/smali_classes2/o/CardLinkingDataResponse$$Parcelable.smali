.class public final Lo/CardLinkingDataResponse$$Parcelable;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Context;

.field private final ICustomTabsCallback$Stub:[J

.field private ICustomTabsCallback$Stub$Proxy:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

.field private ICustomTabsService:Z

.field private final asBinder:Lo/CardTemplateData$$Parcelable;

.field private asInterface:Z

.field private final extraCallback:Ljava/lang/String;

.field private getInterfaceDescriptor:Z

.field private mayLaunchUrl:J

.field private newSession:Z

.field private final onMessageChannelReady:Lo/DataListJsonAdapter;

.field private final onNavigationEvent:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

.field private final onPostMessage:Lo/setCanReverse;

.field private final onRelationshipValidationResult:[Ljava/lang/String;

.field private onTransact:Z

.field private requestPostMessageChannel:Z

.field private warmup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/DataListJsonAdapter;Ljava/lang/String;Lo/setCanReverse;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;)V
    .locals 14

    move-object v1, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lo/CardValidationResponse$$Parcelable;

    invoke-direct {v2}, Lo/CardValidationResponse$$Parcelable;-><init>()V

    const-string v3, "min_1"

    const-wide/16 v4, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v2 .. v7}, Lo/CardValidationResponse$$Parcelable;->onPostMessage(Ljava/lang/String;DD)Lo/CardValidationResponse$$Parcelable;

    move-result-object v8

    const-string v9, "1_5"

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    invoke-virtual/range {v8 .. v13}, Lo/CardValidationResponse$$Parcelable;->onPostMessage(Ljava/lang/String;DD)Lo/CardValidationResponse$$Parcelable;

    move-result-object v2

    const-string v3, "5_10"

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-virtual/range {v2 .. v7}, Lo/CardValidationResponse$$Parcelable;->onPostMessage(Ljava/lang/String;DD)Lo/CardValidationResponse$$Parcelable;

    move-result-object v8

    const-string v9, "10_20"

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    invoke-virtual/range {v8 .. v13}, Lo/CardValidationResponse$$Parcelable;->onPostMessage(Ljava/lang/String;DD)Lo/CardValidationResponse$$Parcelable;

    move-result-object v2

    const-string v3, "20_30"

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-virtual/range {v2 .. v7}, Lo/CardValidationResponse$$Parcelable;->onPostMessage(Ljava/lang/String;DD)Lo/CardValidationResponse$$Parcelable;

    move-result-object v8

    const-string v9, "30_max"

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual/range {v8 .. v13}, Lo/CardValidationResponse$$Parcelable;->onPostMessage(Ljava/lang/String;DD)Lo/CardValidationResponse$$Parcelable;

    move-result-object v0

    invoke-virtual {v0}, Lo/CardValidationResponse$$Parcelable;->onMessageChannelReady()Lo/CardTemplateData$$Parcelable;

    move-result-object v0

    iput-object v0, v1, Lo/CardLinkingDataResponse$$Parcelable;->asBinder:Lo/CardTemplateData$$Parcelable;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lo/CardLinkingDataResponse$$Parcelable;->asInterface:Z

    iput-boolean v0, v1, Lo/CardLinkingDataResponse$$Parcelable;->onTransact:Z

    iput-boolean v0, v1, Lo/CardLinkingDataResponse$$Parcelable;->warmup:Z

    iput-boolean v0, v1, Lo/CardLinkingDataResponse$$Parcelable;->getInterfaceDescriptor:Z

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lo/CardLinkingDataResponse$$Parcelable;->mayLaunchUrl:J

    move-object v4, p1

    iput-object v4, v1, Lo/CardLinkingDataResponse$$Parcelable;->ICustomTabsCallback:Landroid/content/Context;

    move-object/from16 v4, p2

    iput-object v4, v1, Lo/CardLinkingDataResponse$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    move-object/from16 v4, p3

    iput-object v4, v1, Lo/CardLinkingDataResponse$$Parcelable;->extraCallback:Ljava/lang/String;

    move-object/from16 v4, p4

    iput-object v4, v1, Lo/CardLinkingDataResponse$$Parcelable;->onPostMessage:Lo/setCanReverse;

    move-object/from16 v4, p5

    iput-object v4, v1, Lo/CardLinkingDataResponse$$Parcelable;->onNavigationEvent:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    sget-object v4, Lo/WinningTypes;->ICustomTabsService$Stub:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, v1, Lo/CardLinkingDataResponse$$Parcelable;->onRelationshipValidationResult:[Ljava/lang/String;

    new-array v0, v0, [J

    iput-object v0, v1, Lo/CardLinkingDataResponse$$Parcelable;->ICustomTabsCallback$Stub:[J

    return-void

    :cond_0
    const-string v5, ","

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v1, Lo/CardLinkingDataResponse$$Parcelable;->onRelationshipValidationResult:[Ljava/lang/String;

    array-length v5, v4

    new-array v5, v5, [J

    iput-object v5, v1, Lo/CardLinkingDataResponse$$Parcelable;->ICustomTabsCallback$Stub:[J

    const/4 v5, 0x0

    :goto_0
    array-length v0, v4

    if-ge v5, v0, :cond_1

    :try_start_0
    iget-object v0, v1, Lo/CardLinkingDataResponse$$Parcelable;->ICustomTabsCallback$Stub:[J

    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v0, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "Unable to parse frame hash target time number."

    invoke-static {v6, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v1, Lo/CardLinkingDataResponse$$Parcelable;->ICustomTabsCallback$Stub:[J

    aput-wide v2, v0, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/CardLinkingDataResponse$$Parcelable;->ICustomTabsService:Z

    return-void
.end method

.method public final ICustomTabsCallback(Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lo/CardLinkingDataResponse$$Parcelable;->warmup:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lo/CardLinkingDataResponse$$Parcelable;->getInterfaceDescriptor:Z

    if-nez v1, :cond_1

    invoke-static {}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lo/CardLinkingDataResponse$$Parcelable;->getInterfaceDescriptor:Z

    if-nez v1, :cond_0

    const-string v1, "VideoMetricsMixin first frame"

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v0, Lo/CardLinkingDataResponse$$Parcelable;->onPostMessage:Lo/setCanReverse;

    iget-object v3, v0, Lo/CardLinkingDataResponse$$Parcelable;->onNavigationEvent:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    const-string v4, "vff2"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lo/setReelSymbols;->onNavigationEvent(Lo/setCanReverse;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    iput-boolean v2, v0, Lo/CardLinkingDataResponse$$Parcelable;->getInterfaceDescriptor:Z

    :cond_1
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->onMessageChannelReady()J

    move-result-wide v3

    iget-boolean v1, v0, Lo/CardLinkingDataResponse$$Parcelable;->ICustomTabsService:Z

    const-wide/16 v5, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lo/CardLinkingDataResponse$$Parcelable;->requestPostMessageChannel:Z

    if-eqz v1, :cond_2

    iget-wide v7, v0, Lo/CardLinkingDataResponse$$Parcelable;->mayLaunchUrl:J

    const-wide/16 v9, -0x1

    cmp-long v1, v7, v9

    if-eqz v1, :cond_2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    long-to-double v7, v7

    iget-wide v9, v0, Lo/CardLinkingDataResponse$$Parcelable;->mayLaunchUrl:J

    sub-long v9, v3, v9

    long-to-double v9, v9

    div-double/2addr v7, v9

    iget-object v1, v0, Lo/CardLinkingDataResponse$$Parcelable;->asBinder:Lo/CardTemplateData$$Parcelable;

    invoke-virtual {v1, v7, v8}, Lo/CardTemplateData$$Parcelable;->onNavigationEvent(D)V

    :cond_2
    iget-boolean v1, v0, Lo/CardLinkingDataResponse$$Parcelable;->ICustomTabsService:Z

    iput-boolean v1, v0, Lo/CardLinkingDataResponse$$Parcelable;->requestPostMessageChannel:Z

    iput-wide v3, v0, Lo/CardLinkingDataResponse$$Parcelable;->mayLaunchUrl:J

    sget-object v1, Lo/WinningTypes;->IPostMessageService:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub()I

    move-result v1

    int-to-long v7, v1

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-object v10, v0, Lo/CardLinkingDataResponse$$Parcelable;->onRelationshipValidationResult:[Ljava/lang/String;

    array-length v11, v10

    if-ge v9, v11, :cond_7

    aget-object v10, v10, v9

    if-nez v10, :cond_6

    iget-object v10, v0, Lo/CardLinkingDataResponse$$Parcelable;->ICustomTabsCallback$Stub:[J

    aget-wide v11, v10, v9

    sub-long v10, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v12, v3, v10

    if-lez v12, :cond_6

    iget-object v3, v0, Lo/CardLinkingDataResponse$$Parcelable;->onRelationshipValidationResult:[Ljava/lang/String;

    const/16 v4, 0x8

    move-object/from16 v10, p1

    invoke-virtual {v10, v4, v4}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v7

    const-wide/16 v10, 0x3f

    const/4 v8, 0x0

    const-wide/16 v14, 0x0

    :goto_1
    if-ge v8, v4, :cond_5

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v4, :cond_4

    invoke-virtual {v7, v12, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v16

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v13

    add-int v13, v16, v13

    const/16 v4, 0x80

    if-le v13, v4, :cond_3

    move-wide/from16 v17, v5

    goto :goto_3

    :cond_3
    const-wide/16 v17, 0x0

    :goto_3
    long-to-int v4, v10

    shl-long v17, v17, v4

    or-long v14, v14, v17

    add-int/lit8 v12, v12, 0x1

    sub-long/2addr v10, v5

    const/16 v4, 0x8

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    const/16 v4, 0x8

    goto :goto_1

    :cond_5
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "%016X"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v9

    return-void

    :cond_6
    move-object/from16 v10, p1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final extraCallback(Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V
    .locals 3

    iget-object v0, p0, Lo/CardLinkingDataResponse$$Parcelable;->onPostMessage:Lo/setCanReverse;

    iget-object v1, p0, Lo/CardLinkingDataResponse$$Parcelable;->onNavigationEvent:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    const-string v2, "vpc2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/setReelSymbols;->onNavigationEvent(Lo/setCanReverse;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/CardLinkingDataResponse$$Parcelable;->asInterface:Z

    iget-object v0, p0, Lo/CardLinkingDataResponse$$Parcelable;->onPostMessage:Lo/setCanReverse;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vpn"

    invoke-virtual {v0, v2, v1}, Lo/setCanReverse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lo/CardLinkingDataResponse$$Parcelable;->ICustomTabsCallback$Stub$Proxy:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 7

    sget-object v0, Lo/WinningTypes;->mayLaunchUrl:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lo/CardLinkingDataResponse$$Parcelable;->newSession:Z

    if-nez v0, :cond_5

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const-string v1, "native-player-metrics"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo/CardLinkingDataResponse$$Parcelable;->extraCallback:Ljava/lang/String;

    const-string v1, "request"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo/CardLinkingDataResponse$$Parcelable;->ICustomTabsCallback$Stub$Proxy:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "player"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo/CardLinkingDataResponse$$Parcelable;->asBinder:Lo/CardTemplateData$$Parcelable;

    invoke-virtual {v0}, Lo/CardTemplateData$$Parcelable;->onMessageChannelReady()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getInvalidPaymentAmount;

    const-string v2, "fps_c_"

    iget-object v3, v1, Lo/getInvalidPaymentAmount;->extraCallback:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_1
    iget v3, v1, Lo/getInvalidPaymentAmount;->onMessageChannelReady:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fps_p_"

    iget-object v3, v1, Lo/getInvalidPaymentAmount;->extraCallback:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_2
    iget-wide v3, v1, Lo/getInvalidPaymentAmount;->onPostMessage:D

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lo/CardLinkingDataResponse$$Parcelable;->ICustomTabsCallback$Stub:[J

    array-length v2, v1

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lo/CardLinkingDataResponse$$Parcelable;->onRelationshipValidationResult:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    aget-wide v3, v1, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "fh_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v1

    iget-object v2, p0, Lo/CardLinkingDataResponse$$Parcelable;->ICustomTabsCallback:Landroid/content/Context;

    iget-object v0, p0, Lo/CardLinkingDataResponse$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v3, v0, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    const/4 v6, 0x1

    const-string v4, "gmob-apps"

    invoke-virtual/range {v1 .. v6}, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/CardLinkingDataResponse$$Parcelable;->newSession:Z

    :cond_5
    return-void
.end method

.method public final onNavigationEvent()V
    .locals 3

    iget-boolean v0, p0, Lo/CardLinkingDataResponse$$Parcelable;->asInterface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/CardLinkingDataResponse$$Parcelable;->onTransact:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/CardLinkingDataResponse$$Parcelable;->onPostMessage:Lo/setCanReverse;

    iget-object v1, p0, Lo/CardLinkingDataResponse$$Parcelable;->onNavigationEvent:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    const-string v2, "vfr2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/setReelSymbols;->onNavigationEvent(Lo/setCanReverse;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/CardLinkingDataResponse$$Parcelable;->onTransact:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPostMessage()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/CardLinkingDataResponse$$Parcelable;->ICustomTabsService:Z

    iget-boolean v1, p0, Lo/CardLinkingDataResponse$$Parcelable;->onTransact:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lo/CardLinkingDataResponse$$Parcelable;->warmup:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/CardLinkingDataResponse$$Parcelable;->onPostMessage:Lo/setCanReverse;

    iget-object v2, p0, Lo/CardLinkingDataResponse$$Parcelable;->onNavigationEvent:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    const-string v3, "vfp2"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lo/setReelSymbols;->onNavigationEvent(Lo/setCanReverse;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    iput-boolean v0, p0, Lo/CardLinkingDataResponse$$Parcelable;->warmup:Z

    :cond_0
    return-void
.end method
