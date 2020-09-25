.class final Lo/n$2;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:Z

.field private final ICustomTabsCallback$Stub:[Z

.field private ICustomTabsCallback$Stub$Proxy:Lo/n$2;

.field private ICustomTabsService:Lo/OfferJsonAdapter;

.field private final asBinder:Lo/InstrumentsCompleteJsonAdapter;

.field private final asInterface:[Lo/MandatoryFields;

.field public extraCallback:Z

.field private newSession:J

.field public final onMessageChannelReady:Ljava/lang/Object;

.field public final onNavigationEvent:[Lo/CardInstrumentJsonAdapter;

.field public final onPostMessage:Lo/PaymentModeAdapter;

.field public onRelationshipValidationResult:Lo/p;

.field private final onTransact:Lo/InstrumentViewMapping;

.field private warmup:Lo/JuspaySessionToken;


# direct methods
.method public constructor <init>([Lo/MandatoryFields;JLo/InstrumentViewMapping;Lo/PaymentRequest;Lo/InstrumentsCompleteJsonAdapter;Lo/p;)V
    .locals 7

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lo/n$2;->asInterface:[Lo/MandatoryFields;

    .line 84
    iput-wide p2, p0, Lo/n$2;->newSession:J

    .line 85
    iput-object p4, p0, Lo/n$2;->onTransact:Lo/InstrumentViewMapping;

    .line 86
    iput-object p6, p0, Lo/n$2;->asBinder:Lo/InstrumentsCompleteJsonAdapter;

    .line 87
    iget-object p2, p7, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object p2, p2, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    iput-object p2, p0, Lo/n$2;->onMessageChannelReady:Ljava/lang/Object;

    .line 88
    iput-object p7, p0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    .line 89
    array-length p2, p1

    new-array p2, p2, [Lo/CardInstrumentJsonAdapter;

    iput-object p2, p0, Lo/n$2;->onNavigationEvent:[Lo/CardInstrumentJsonAdapter;

    .line 90
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lo/n$2;->ICustomTabsCallback$Stub:[Z

    .line 91
    iget-object v0, p7, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v3, p7, Lo/p;->onNavigationEvent:J

    iget-wide v5, p7, Lo/p;->ICustomTabsCallback:J

    move-object v1, p6

    move-object v2, p5

    .line 92
    invoke-static/range {v0 .. v6}, Lo/n$2;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/InstrumentsCompleteJsonAdapter;Lo/PaymentRequest;JJ)Lo/PaymentModeAdapter;

    move-result-object p1

    iput-object p1, p0, Lo/n$2;->onPostMessage:Lo/PaymentModeAdapter;

    return-void
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 4

    .line 351
    iget-object v0, p0, Lo/n$2;->ICustomTabsService:Lo/OfferJsonAdapter;

    .line 352
    invoke-direct {p0}, Lo/n$2;->warmup()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 355
    :goto_0
    iget v2, v0, Lo/OfferJsonAdapter;->onPostMessage:I

    if-ge v1, v2, :cond_2

    .line 356
    invoke-virtual {v0, v1}, Lo/OfferJsonAdapter;->onNavigationEvent(I)Z

    move-result v2

    .line 357
    iget-object v3, v0, Lo/OfferJsonAdapter;->extraCallback:Lo/InstrumentDataJsonAdapter;

    invoke-virtual {v3, v1}, Lo/InstrumentDataJsonAdapter;->onNavigationEvent(I)Lo/InstrumentView;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 359
    invoke-interface {v3}, Lo/InstrumentView;->onNavigationEvent()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static extraCallback(JLo/InstrumentsCompleteJsonAdapter;Lo/PaymentModeAdapter;)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    .line 431
    :try_start_0
    check-cast p3, Lo/getBitmapString;

    iget-object p0, p3, Lo/getBitmapString;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {p2, p0}, Lo/InstrumentsCompleteJsonAdapter;->ICustomTabsCallback(Lo/PaymentModeAdapter;)V

    return-void

    .line 433
    :cond_0
    invoke-interface {p2, p3}, Lo/InstrumentsCompleteJsonAdapter;->ICustomTabsCallback(Lo/PaymentModeAdapter;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "MediaPeriodHolder"

    const-string p2, "Period release failed."

    .line 437
    invoke-static {p1, p2, p0}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private getInterfaceDescriptor()V
    .locals 4

    .line 365
    iget-object v0, p0, Lo/n$2;->ICustomTabsService:Lo/OfferJsonAdapter;

    .line 366
    invoke-direct {p0}, Lo/n$2;->warmup()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 369
    :goto_0
    iget v2, v0, Lo/OfferJsonAdapter;->onPostMessage:I

    if-ge v1, v2, :cond_2

    .line 370
    invoke-virtual {v0, v1}, Lo/OfferJsonAdapter;->onNavigationEvent(I)Z

    move-result v2

    .line 371
    iget-object v3, v0, Lo/OfferJsonAdapter;->extraCallback:Lo/InstrumentDataJsonAdapter;

    invoke-virtual {v3, v1}, Lo/InstrumentDataJsonAdapter;->onNavigationEvent(I)Lo/InstrumentView;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 373
    invoke-interface {v3}, Lo/InstrumentView;->ICustomTabsCallback()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/InstrumentsCompleteJsonAdapter;Lo/PaymentRequest;JJ)Lo/PaymentModeAdapter;
    .locals 7

    .line 417
    invoke-interface {p1, p0, p2, p3, p4}, Lo/InstrumentsCompleteJsonAdapter;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/PaymentRequest;J)Lo/PaymentModeAdapter;

    move-result-object v1

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p5, p0

    if-eqz p2, :cond_0

    const-wide/high16 p0, -0x8000000000000000L

    cmp-long p2, p5, p0

    if-eqz p2, :cond_0

    .line 419
    new-instance p0, Lo/getBitmapString;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lo/getBitmapString;-><init>(Lo/PaymentModeAdapter;ZJJ)V

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method private onNavigationEvent([Lo/CardInstrumentJsonAdapter;)V
    .locals 3

    const/4 v0, 0x0

    .line 384
    :goto_0
    iget-object v1, p0, Lo/n$2;->asInterface:[Lo/MandatoryFields;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 385
    aget-object v1, v1, v0

    invoke-interface {v1}, Lo/MandatoryFields;->extraCallback()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 386
    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onPostMessage([Lo/CardInstrumentJsonAdapter;)V
    .locals 4

    .line 397
    iget-object v0, p0, Lo/n$2;->ICustomTabsService:Lo/OfferJsonAdapter;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/OfferJsonAdapter;

    const/4 v1, 0x0

    .line 398
    :goto_0
    iget-object v2, p0, Lo/n$2;->asInterface:[Lo/MandatoryFields;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 399
    aget-object v2, v2, v1

    invoke-interface {v2}, Lo/MandatoryFields;->extraCallback()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 400
    invoke-virtual {v0, v1}, Lo/OfferJsonAdapter;->onNavigationEvent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    new-instance v2, Lo/InstrumentWrapperCompleteJsonAdapter;

    invoke-direct {v2}, Lo/InstrumentWrapperCompleteJsonAdapter;-><init>()V

    aput-object v2, p1, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private warmup()Z
    .locals 1

    .line 407
    iget-object v0, p0, Lo/n$2;->ICustomTabsCallback$Stub$Proxy:Lo/n$2;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback(J)V
    .locals 0

    .line 123
    iput-wide p1, p0, Lo/n$2;->newSession:J

    return-void
.end method

.method public final ICustomTabsCallback()Z
    .locals 5

    .line 133
    iget-boolean v0, p0, Lo/n$2;->ICustomTabsCallback:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/n$2;->extraCallback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/n$2;->onPostMessage:Lo/PaymentModeAdapter;

    .line 134
    invoke-interface {v0}, Lo/PaymentModeAdapter;->extraCallback()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final asBinder()V
    .locals 4

    .line 305
    invoke-direct {p0}, Lo/n$2;->getInterfaceDescriptor()V

    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lo/n$2;->ICustomTabsService:Lo/OfferJsonAdapter;

    .line 307
    iget-object v0, p0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-wide v0, v0, Lo/p;->ICustomTabsCallback:J

    iget-object v2, p0, Lo/n$2;->asBinder:Lo/InstrumentsCompleteJsonAdapter;

    iget-object v3, p0, Lo/n$2;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-static {v0, v1, v2, v3}, Lo/n$2;->extraCallback(JLo/InstrumentsCompleteJsonAdapter;Lo/PaymentModeAdapter;)V

    return-void
.end method

.method public final asInterface()Lo/JuspaySessionToken;
    .locals 1

    .line 339
    iget-object v0, p0, Lo/n$2;->warmup:Lo/JuspaySessionToken;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/JuspaySessionToken;

    return-object v0
.end method

.method public final extraCallback()J
    .locals 2

    .line 114
    iget-wide v0, p0, Lo/n$2;->newSession:J

    return-wide v0
.end method

.method public final extraCallback(J)V
    .locals 1

    .line 186
    invoke-direct {p0}, Lo/n$2;->warmup()Z

    move-result v0

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 187
    iget-boolean v0, p0, Lo/n$2;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lo/n$2;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-virtual {p0, p1, p2}, Lo/n$2;->onNavigationEvent(J)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lo/PaymentModeAdapter;->onNavigationEvent(J)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()J
    .locals 5

    .line 144
    iget-boolean v0, p0, Lo/n$2;->ICustomTabsCallback:Z

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-wide v0, v0, Lo/p;->onNavigationEvent:J

    return-wide v0

    .line 147
    :cond_0
    iget-boolean v0, p0, Lo/n$2;->extraCallback:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/n$2;->onPostMessage:Lo/PaymentModeAdapter;

    .line 148
    invoke-interface {v0}, Lo/PaymentModeAdapter;->extraCallback()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 149
    iget-object v0, p0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-wide v0, v0, Lo/p;->extraCallback:J

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method public final onMessageChannelReady(J)J
    .locals 2

    .line 101
    invoke-virtual {p0}, Lo/n$2;->extraCallback()J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final onMessageChannelReady(Lo/OfferJsonAdapter;JZ[Z)J
    .locals 13

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 265
    :goto_0
    iget v4, v1, Lo/OfferJsonAdapter;->onPostMessage:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 266
    iget-object v4, v0, Lo/n$2;->ICustomTabsCallback$Stub:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Lo/n$2;->ICustomTabsService:Lo/OfferJsonAdapter;

    .line 267
    invoke-virtual {p1, v6, v3}, Lo/OfferJsonAdapter;->onNavigationEvent(Lo/OfferJsonAdapter;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    :cond_1
    iget-object v3, v0, Lo/n$2;->onNavigationEvent:[Lo/CardInstrumentJsonAdapter;

    invoke-direct {p0, v3}, Lo/n$2;->onNavigationEvent([Lo/CardInstrumentJsonAdapter;)V

    .line 273
    invoke-direct {p0}, Lo/n$2;->getInterfaceDescriptor()V

    .line 274
    iput-object v1, v0, Lo/n$2;->ICustomTabsService:Lo/OfferJsonAdapter;

    .line 275
    invoke-direct {p0}, Lo/n$2;->ICustomTabsCallback$Stub()V

    .line 277
    iget-object v3, v1, Lo/OfferJsonAdapter;->extraCallback:Lo/InstrumentDataJsonAdapter;

    .line 278
    iget-object v6, v0, Lo/n$2;->onPostMessage:Lo/PaymentModeAdapter;

    .line 280
    invoke-virtual {v3}, Lo/InstrumentDataJsonAdapter;->onMessageChannelReady()[Lo/InstrumentView;

    move-result-object v7

    iget-object v8, v0, Lo/n$2;->ICustomTabsCallback$Stub:[Z

    iget-object v9, v0, Lo/n$2;->onNavigationEvent:[Lo/CardInstrumentJsonAdapter;

    move-object/from16 v10, p5

    move-wide v11, p2

    .line 279
    invoke-interface/range {v6 .. v12}, Lo/PaymentModeAdapter;->extraCallback([Lo/InstrumentView;[Z[Lo/CardInstrumentJsonAdapter;[ZJ)J

    move-result-wide v6

    .line 285
    iget-object v4, v0, Lo/n$2;->onNavigationEvent:[Lo/CardInstrumentJsonAdapter;

    invoke-direct {p0, v4}, Lo/n$2;->onPostMessage([Lo/CardInstrumentJsonAdapter;)V

    .line 288
    iput-boolean v2, v0, Lo/n$2;->extraCallback:Z

    const/4 v4, 0x0

    .line 289
    :goto_2
    iget-object v8, v0, Lo/n$2;->onNavigationEvent:[Lo/CardInstrumentJsonAdapter;

    array-length v9, v8

    if-ge v4, v9, :cond_5

    .line 290
    aget-object v8, v8, v4

    if-eqz v8, :cond_2

    .line 291
    invoke-virtual {p1, v4}, Lo/OfferJsonAdapter;->onNavigationEvent(I)Z

    move-result v8

    invoke-static {v8}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 293
    iget-object v8, v0, Lo/n$2;->asInterface:[Lo/MandatoryFields;

    aget-object v8, v8, v4

    invoke-interface {v8}, Lo/MandatoryFields;->extraCallback()I

    move-result v8

    const/4 v9, 0x6

    if-eq v8, v9, :cond_4

    .line 294
    iput-boolean v5, v0, Lo/n$2;->extraCallback:Z

    goto :goto_4

    .line 297
    :cond_2
    invoke-virtual {v3, v4}, Lo/InstrumentDataJsonAdapter;->onNavigationEvent(I)Lo/InstrumentView;

    move-result-object v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    invoke-static {v8}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return-wide v6
.end method

.method public final onMessageChannelReady(FLo/t;)Lo/OfferJsonAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lo/n$2;->onTransact:Lo/InstrumentViewMapping;

    iget-object v1, p0, Lo/n$2;->asInterface:[Lo/MandatoryFields;

    .line 217
    invoke-virtual {p0}, Lo/n$2;->asInterface()Lo/JuspaySessionToken;

    move-result-object v2

    iget-object v3, p0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-object v3, v3, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-virtual {v0, v1, v2, v3, p2}, Lo/InstrumentViewMapping;->extraCallback([Lo/MandatoryFields;Lo/JuspaySessionToken;Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/t;)Lo/OfferJsonAdapter;

    move-result-object p2

    .line 218
    iget-object v0, p0, Lo/n$2;->ICustomTabsService:Lo/OfferJsonAdapter;

    invoke-virtual {p2, v0}, Lo/OfferJsonAdapter;->onPostMessage(Lo/OfferJsonAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 221
    :cond_0
    iget-object v0, p2, Lo/OfferJsonAdapter;->extraCallback:Lo/InstrumentDataJsonAdapter;

    invoke-virtual {v0}, Lo/InstrumentDataJsonAdapter;->onMessageChannelReady()[Lo/InstrumentView;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 223
    invoke-interface {v3, p1}, Lo/InstrumentView;->onMessageChannelReady(F)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public final onNavigationEvent()J
    .locals 4

    .line 128
    iget-object v0, p0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-wide v0, v0, Lo/p;->onNavigationEvent:J

    iget-wide v2, p0, Lo/n$2;->newSession:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final onNavigationEvent(J)J
    .locals 2

    .line 109
    invoke-virtual {p0}, Lo/n$2;->extraCallback()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final onPostMessage()J
    .locals 2

    .line 157
    iget-boolean v0, p0, Lo/n$2;->ICustomTabsCallback:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lo/n$2;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {v0}, Lo/PaymentModeAdapter;->ICustomTabsCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onPostMessage(Lo/OfferJsonAdapter;JZ)J
    .locals 7

    .line 241
    iget-object v0, p0, Lo/n$2;->asInterface:[Lo/MandatoryFields;

    array-length v0, v0

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/n$2;->onMessageChannelReady(Lo/OfferJsonAdapter;JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final onPostMessage(FLo/t;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lo/n$2;->ICustomTabsCallback:Z

    .line 169
    iget-object v0, p0, Lo/n$2;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {v0}, Lo/PaymentModeAdapter;->onPostMessage()Lo/JuspaySessionToken;

    move-result-object v0

    iput-object v0, p0, Lo/n$2;->warmup:Lo/JuspaySessionToken;

    .line 171
    invoke-virtual {p0, p1, p2}, Lo/n$2;->onMessageChannelReady(FLo/t;)Lo/OfferJsonAdapter;

    move-result-object p1

    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/OfferJsonAdapter;

    .line 172
    iget-object p2, p0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-wide v0, p2, Lo/p;->onNavigationEvent:J

    const/4 p2, 0x0

    .line 173
    invoke-virtual {p0, p1, v0, v1, p2}, Lo/n$2;->onPostMessage(Lo/OfferJsonAdapter;JZ)J

    move-result-wide p1

    .line 175
    iget-wide v0, p0, Lo/n$2;->newSession:J

    iget-object v2, p0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-wide v2, v2, Lo/p;->onNavigationEvent:J

    sub-long/2addr v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/n$2;->newSession:J

    .line 176
    iget-object v0, p0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    invoke-virtual {v0, p1, p2}, Lo/p;->onMessageChannelReady(J)Lo/p;

    move-result-object p1

    iput-object p1, p0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    return-void
.end method

.method public final onPostMessage(J)V
    .locals 1

    .line 199
    invoke-direct {p0}, Lo/n$2;->warmup()Z

    move-result v0

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 200
    invoke-virtual {p0, p1, p2}, Lo/n$2;->onNavigationEvent(J)J

    move-result-wide p1

    .line 201
    iget-object v0, p0, Lo/n$2;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {v0, p1, p2}, Lo/PaymentModeAdapter;->extraCallback(J)Z

    return-void
.end method

.method public final onPostMessage(Lo/n$2;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lo/n$2;->ICustomTabsCallback$Stub$Proxy:Lo/n$2;

    if-ne p1, v0, :cond_0

    return-void

    .line 320
    :cond_0
    invoke-direct {p0}, Lo/n$2;->getInterfaceDescriptor()V

    .line 321
    iput-object p1, p0, Lo/n$2;->ICustomTabsCallback$Stub$Proxy:Lo/n$2;

    .line 322
    invoke-direct {p0}, Lo/n$2;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method public final onRelationshipValidationResult()Lo/OfferJsonAdapter;
    .locals 1

    .line 347
    iget-object v0, p0, Lo/n$2;->ICustomTabsService:Lo/OfferJsonAdapter;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/OfferJsonAdapter;

    return-object v0
.end method

.method public final onTransact()Lo/n$2;
    .locals 1

    .line 331
    iget-object v0, p0, Lo/n$2;->ICustomTabsCallback$Stub$Proxy:Lo/n$2;

    return-object v0
.end method
