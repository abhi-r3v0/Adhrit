.class public Lo/g$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Validate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/g$b$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:J

.field private final ICustomTabsCallback$Stub:Z

.field private ICustomTabsService:Z

.field private final asBinder:Z

.field private final asInterface:J

.field private final extraCallback:J

.field private getInterfaceDescriptor:I

.field private newSession:Z

.field private final onMessageChannelReady:J

.field private final onNavigationEvent:J

.field private final onPostMessage:Lo/SessionDataJsonAdapter;

.field private final onRelationshipValidationResult:I

.field private final onTransact:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 256
    new-instance v0, Lo/SessionDataJsonAdapter;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lo/SessionDataJsonAdapter;-><init>(ZI)V

    invoke-direct {p0, v0}, Lo/g$b;-><init>(Lo/SessionDataJsonAdapter;)V

    return-void
.end method

.method public constructor <init>(Lo/SessionDataJsonAdapter;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v2, 0x3a98

    const v3, 0xc350

    const v4, 0xc350

    const/16 v5, 0x9c4

    const/16 v6, 0x1388

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 262
    invoke-direct/range {v0 .. v10}, Lo/g$b;-><init>(Lo/SessionDataJsonAdapter;IIIIIIZIZ)V

    return-void
.end method

.method protected constructor <init>(Lo/SessionDataJsonAdapter;IIIIIIZIZ)V
    .locals 13

    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p9

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v7, "0"

    const-string v8, "bufferForPlaybackMs"

    const/4 v9, 0x0

    .line 309
    invoke-static {v4, v9, v8, v7}, Lo/g$b;->onPostMessage(IILjava/lang/String;Ljava/lang/String;)V

    const-string v10, "bufferForPlaybackAfterRebufferMs"

    .line 310
    invoke-static {v5, v9, v10, v7}, Lo/g$b;->onPostMessage(IILjava/lang/String;Ljava/lang/String;)V

    const-string v11, "minBufferAudioMs"

    .line 312
    invoke-static {p2, v4, v11, v8}, Lo/g$b;->onPostMessage(IILjava/lang/String;Ljava/lang/String;)V

    const-string v12, "minBufferVideoMs"

    .line 314
    invoke-static {v2, v4, v12, v8}, Lo/g$b;->onPostMessage(IILjava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {p2, v5, v11, v10}, Lo/g$b;->onPostMessage(IILjava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {v2, v5, v12, v10}, Lo/g$b;->onPostMessage(IILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "maxBufferMs"

    .line 326
    invoke-static {v3, p2, v8, v11}, Lo/g$b;->onPostMessage(IILjava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {v3, v2, v8, v12}, Lo/g$b;->onPostMessage(IILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "backBufferDurationMs"

    .line 328
    invoke-static {v6, v9, v8, v7}, Lo/g$b;->onPostMessage(IILjava/lang/String;Ljava/lang/String;)V

    move-object v7, p1

    .line 330
    iput-object v7, v0, Lo/g$b;->onPostMessage:Lo/SessionDataJsonAdapter;

    int-to-long v7, v1

    .line 331
    invoke-static {v7, v8}, Lo/$$c;->ICustomTabsCallback(J)J

    move-result-wide v7

    iput-wide v7, v0, Lo/g$b;->extraCallback:J

    int-to-long v1, v2

    .line 332
    invoke-static {v1, v2}, Lo/$$c;->ICustomTabsCallback(J)J

    move-result-wide v1

    iput-wide v1, v0, Lo/g$b;->onNavigationEvent:J

    int-to-long v1, v3

    .line 333
    invoke-static {v1, v2}, Lo/$$c;->ICustomTabsCallback(J)J

    move-result-wide v1

    iput-wide v1, v0, Lo/g$b;->ICustomTabsCallback:J

    int-to-long v1, v4

    .line 334
    invoke-static {v1, v2}, Lo/$$c;->ICustomTabsCallback(J)J

    move-result-wide v1

    iput-wide v1, v0, Lo/g$b;->onMessageChannelReady:J

    int-to-long v1, v5

    .line 335
    invoke-static {v1, v2}, Lo/$$c;->ICustomTabsCallback(J)J

    move-result-wide v1

    iput-wide v1, v0, Lo/g$b;->onTransact:J

    move/from16 v1, p7

    .line 336
    iput v1, v0, Lo/g$b;->onRelationshipValidationResult:I

    move/from16 v1, p8

    .line 337
    iput-boolean v1, v0, Lo/g$b;->asBinder:Z

    int-to-long v1, v6

    .line 338
    invoke-static {v1, v2}, Lo/$$c;->ICustomTabsCallback(J)J

    move-result-wide v1

    iput-wide v1, v0, Lo/g$b;->asInterface:J

    move/from16 v1, p10

    .line 339
    iput-boolean v1, v0, Lo/g$b;->ICustomTabsCallback$Stub:Z

    return-void
.end method

.method private static ICustomTabsCallback([Lo/HuaweiReferrer;Lo/InstrumentDataJsonAdapter;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 462
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 463
    aget-object v2, p0, v1

    invoke-interface {v2}, Lo/HuaweiReferrer;->extraCallback()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v1}, Lo/InstrumentDataJsonAdapter;->onNavigationEvent(I)Lo/InstrumentView;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static extraCallback(I)I
    .locals 1

    const/high16 v0, 0x20000

    packed-switch p0, :pswitch_data_0

    .line 457
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    const/high16 p0, 0x1f40000

    return p0

    :pswitch_3
    const/high16 p0, 0x360000

    return p0

    :pswitch_4
    const/high16 p0, 0x22c0000

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic extraCallback(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-static {p0, p1, p2, p3}, Lo/g$b;->onPostMessage(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onMessageChannelReady(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 433
    iput v0, p0, Lo/g$b;->getInterfaceDescriptor:I

    .line 434
    iput-boolean v0, p0, Lo/g$b;->newSession:Z

    if-eqz p1, :cond_0

    .line 436
    iget-object p1, p0, Lo/g$b;->onPostMessage:Lo/SessionDataJsonAdapter;

    invoke-virtual {p1}, Lo/SessionDataJsonAdapter;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method private static onPostMessage(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 471
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x1

    .line 360
    invoke-direct {p0, v0}, Lo/g$b;->onMessageChannelReady(Z)V

    return-void
.end method

.method public ICustomTabsCallback$Stub()Z
    .locals 1

    .line 380
    iget-boolean v0, p0, Lo/g$b;->ICustomTabsCallback$Stub:Z

    return v0
.end method

.method public extraCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 344
    invoke-direct {p0, v0}, Lo/g$b;->onMessageChannelReady(Z)V

    return-void
.end method

.method public extraCallback(JF)Z
    .locals 8

    .line 385
    iget-object v0, p0, Lo/g$b;->onPostMessage:Lo/SessionDataJsonAdapter;

    invoke-virtual {v0}, Lo/SessionDataJsonAdapter;->ICustomTabsCallback()I

    move-result v0

    iget v1, p0, Lo/g$b;->getInterfaceDescriptor:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 386
    :goto_0
    iget-boolean v1, p0, Lo/g$b;->ICustomTabsService:Z

    if-eqz v1, :cond_1

    iget-wide v4, p0, Lo/g$b;->onNavigationEvent:J

    goto :goto_1

    :cond_1
    iget-wide v4, p0, Lo/g$b;->extraCallback:J

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    .line 391
    invoke-static {v4, v5, p3}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(JF)J

    move-result-wide v4

    .line 392
    iget-wide v6, p0, Lo/g$b;->ICustomTabsCallback:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_2
    cmp-long p3, p1, v4

    if-gez p3, :cond_5

    .line 395
    iget-boolean p1, p0, Lo/g$b;->asBinder:Z

    if-nez p1, :cond_4

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_2
    iput-boolean v2, p0, Lo/g$b;->newSession:Z

    goto :goto_3

    .line 396
    :cond_5
    iget-wide v1, p0, Lo/g$b;->ICustomTabsCallback:J

    cmp-long p3, p1, v1

    if-gez p3, :cond_6

    if-eqz v0, :cond_7

    .line 397
    :cond_6
    iput-boolean v3, p0, Lo/g$b;->newSession:Z

    .line 399
    :cond_7
    :goto_3
    iget-boolean p1, p0, Lo/g$b;->newSession:Z

    return p1
.end method

.method public onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x1

    .line 365
    invoke-direct {p0, v0}, Lo/g$b;->onMessageChannelReady(Z)V

    return-void
.end method

.method public onNavigationEvent()Lo/PaymentRequest;
    .locals 1

    .line 370
    iget-object v0, p0, Lo/g$b;->onPostMessage:Lo/SessionDataJsonAdapter;

    return-object v0
.end method

.method public onNavigationEvent([Lo/HuaweiReferrer;Lo/JuspaySessionToken;Lo/InstrumentDataJsonAdapter;)V
    .locals 1

    .line 350
    invoke-static {p1, p3}, Lo/g$b;->ICustomTabsCallback([Lo/HuaweiReferrer;Lo/InstrumentDataJsonAdapter;)Z

    move-result p2

    iput-boolean p2, p0, Lo/g$b;->ICustomTabsService:Z

    .line 351
    iget p2, p0, Lo/g$b;->onRelationshipValidationResult:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 353
    invoke-virtual {p0, p1, p3}, Lo/g$b;->onPostMessage([Lo/HuaweiReferrer;Lo/InstrumentDataJsonAdapter;)I

    move-result p2

    :cond_0
    iput p2, p0, Lo/g$b;->getInterfaceDescriptor:I

    .line 355
    iget-object p1, p0, Lo/g$b;->onPostMessage:Lo/SessionDataJsonAdapter;

    invoke-virtual {p1, p2}, Lo/SessionDataJsonAdapter;->onMessageChannelReady(I)V

    return-void
.end method

.method public onNavigationEvent(JFZ)Z
    .locals 3

    .line 405
    invoke-static {p1, p2, p3}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(JF)J

    move-result-wide p1

    if-eqz p4, :cond_0

    .line 406
    iget-wide p3, p0, Lo/g$b;->onTransact:J

    goto :goto_0

    :cond_0
    iget-wide p3, p0, Lo/g$b;->onMessageChannelReady:J

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_2

    cmp-long v0, p1, p3

    if-gez v0, :cond_2

    .line 407
    iget-boolean p1, p0, Lo/g$b;->asBinder:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lo/g$b;->onPostMessage:Lo/SessionDataJsonAdapter;

    .line 410
    invoke-virtual {p1}, Lo/SessionDataJsonAdapter;->ICustomTabsCallback()I

    move-result p1

    iget p2, p0, Lo/g$b;->getInterfaceDescriptor:I

    if-lt p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onPostMessage([Lo/HuaweiReferrer;Lo/InstrumentDataJsonAdapter;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 424
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 425
    invoke-virtual {p2, v0}, Lo/InstrumentDataJsonAdapter;->onNavigationEvent(I)Lo/InstrumentView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 426
    aget-object v2, p1, v0

    invoke-interface {v2}, Lo/HuaweiReferrer;->extraCallback()I

    move-result v2

    invoke-static {v2}, Lo/g$b;->extraCallback(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onPostMessage()J
    .locals 2

    .line 375
    iget-wide v0, p0, Lo/g$b;->asInterface:J

    return-wide v0
.end method
