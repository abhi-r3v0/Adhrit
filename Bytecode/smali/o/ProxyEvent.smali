.class final Lo/ProxyEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lo/PaymentModeAdapter$onNavigationEvent;
.implements Lo/InstrumentViewMapping$ICustomTabsCallback;
.implements Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;
.implements Lo/$$a$onPostMessage;
.implements Lo/GoogleReferrer$1$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ProxyEvent$ICustomTabsCallback;,
        Lo/ProxyEvent$onMessageChannelReady;,
        Lo/ProxyEvent$onPostMessage;,
        Lo/ProxyEvent$extraCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/InstrumentViewMapping;

.field private final ICustomTabsCallback$Stub:Landroid/os/HandlerThread;

.field private final ICustomTabsCallback$Stub$Proxy:Lo/ProxyEvent$ICustomTabsCallback;

.field private final ICustomTabsService:Z

.field private ICustomTabsService$Stub:Lo/InstrumentsCompleteJsonAdapter;

.field private ICustomTabsService$Stub$Proxy:[Lo/HuaweiReferrer;

.field private INotificationSideChannel:Lo/ProxyEvent$extraCallback;

.field private INotificationSideChannel$Stub$Proxy:J

.field private IPostMessageService:Z

.field private IPostMessageService$Stub:Z

.field private IPostMessageService$Stub$Proxy:Z

.field private final asBinder:Lo/EncoderDecoder$RDSException;

.field private final asInterface:Landroid/os/Handler;

.field private cancel:I

.field private cancelAll:Z

.field private final extraCallback:Lo/Validate;

.field private extraCommand:Lo/t$d;

.field private final getInterfaceDescriptor:Lo/t$onPostMessage;

.field private final mayLaunchUrl:Lo/onSensorChanged;

.field private final newSession:Lo/$$a;

.field private notify:I

.field private final onMessageChannelReady:[Lo/HuaweiReferrer;

.field private final onNavigationEvent:Lo/OfferJsonAdapter;

.field private final onPostMessage:[Lo/MandatoryFields;

.field private final onRelationshipValidationResult:Lo/t$onMessageChannelReady;

.field private final onTransact:Lo/PaymentInstrumentRequestJsonAdapter;

.field private final postMessage:Lo/CheckoutBuilder$PolingRemoteConfig;

.field private final requestPostMessageChannel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/ProxyEvent$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private setDefaultImpl:I

.field private updateVisuals:Lo/GoogleReferrer;

.field private validateRelationship:Z

.field private final warmup:J


# direct methods
.method public constructor <init>([Lo/HuaweiReferrer;Lo/InstrumentViewMapping;Lo/OfferJsonAdapter;Lo/Validate;Lo/PaymentInstrumentRequestJsonAdapter;ZIZLandroid/os/Handler;Lo/CheckoutBuilder$PolingRemoteConfig;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    .line 138
    iput-object p2, p0, Lo/ProxyEvent;->ICustomTabsCallback:Lo/InstrumentViewMapping;

    .line 139
    iput-object p3, p0, Lo/ProxyEvent;->onNavigationEvent:Lo/OfferJsonAdapter;

    .line 140
    iput-object p4, p0, Lo/ProxyEvent;->extraCallback:Lo/Validate;

    .line 141
    iput-object p5, p0, Lo/ProxyEvent;->onTransact:Lo/PaymentInstrumentRequestJsonAdapter;

    .line 142
    iput-boolean p6, p0, Lo/ProxyEvent;->IPostMessageService$Stub:Z

    .line 143
    iput p7, p0, Lo/ProxyEvent;->cancel:I

    .line 144
    iput-boolean p8, p0, Lo/ProxyEvent;->IPostMessageService$Stub$Proxy:Z

    .line 145
    iput-object p9, p0, Lo/ProxyEvent;->asInterface:Landroid/os/Handler;

    .line 146
    iput-object p10, p0, Lo/ProxyEvent;->postMessage:Lo/CheckoutBuilder$PolingRemoteConfig;

    .line 147
    new-instance p6, Lo/onSensorChanged;

    invoke-direct {p6}, Lo/onSensorChanged;-><init>()V

    iput-object p6, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    .line 149
    invoke-interface {p4}, Lo/Validate;->onPostMessage()J

    move-result-wide p6

    iput-wide p6, p0, Lo/ProxyEvent;->warmup:J

    .line 150
    invoke-interface {p4}, Lo/Validate;->ICustomTabsCallback$Stub()Z

    move-result p4

    iput-boolean p4, p0, Lo/ProxyEvent;->ICustomTabsService:Z

    .line 152
    sget-object p4, Lo/t$d;->ICustomTabsCallback:Lo/t$d;

    iput-object p4, p0, Lo/ProxyEvent;->extraCommand:Lo/t$d;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    .line 154
    invoke-static {p6, p7, p3}, Lo/GoogleReferrer;->extraCallback(JLo/OfferJsonAdapter;)Lo/GoogleReferrer;

    move-result-object p3

    iput-object p3, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    .line 155
    new-instance p3, Lo/ProxyEvent$ICustomTabsCallback;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lo/ProxyEvent$ICustomTabsCallback;-><init>(Lo/ProxyEvent$5;)V

    iput-object p3, p0, Lo/ProxyEvent;->ICustomTabsCallback$Stub$Proxy:Lo/ProxyEvent$ICustomTabsCallback;

    .line 156
    array-length p3, p1

    new-array p3, p3, [Lo/MandatoryFields;

    iput-object p3, p0, Lo/ProxyEvent;->onPostMessage:[Lo/MandatoryFields;

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 157
    :goto_0
    array-length p6, p1

    if-ge p4, p6, :cond_0

    .line 158
    aget-object p6, p1, p4

    invoke-interface {p6, p4}, Lo/HuaweiReferrer;->extraCallback(I)V

    .line 159
    iget-object p6, p0, Lo/ProxyEvent;->onPostMessage:[Lo/MandatoryFields;

    aget-object p7, p1, p4

    invoke-interface {p7}, Lo/HuaweiReferrer;->p_()Lo/MandatoryFields;

    move-result-object p7

    aput-object p7, p6, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 161
    :cond_0
    new-instance p1, Lo/$$a;

    invoke-direct {p1, p0, p10}, Lo/$$a;-><init>(Lo/$$a$onPostMessage;Lo/CheckoutBuilder$PolingRemoteConfig;)V

    iput-object p1, p0, Lo/ProxyEvent;->newSession:Lo/$$a;

    .line 162
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    new-array p1, p3, [Lo/HuaweiReferrer;

    .line 163
    iput-object p1, p0, Lo/ProxyEvent;->ICustomTabsService$Stub$Proxy:[Lo/HuaweiReferrer;

    .line 164
    new-instance p1, Lo/t$onMessageChannelReady;

    invoke-direct {p1}, Lo/t$onMessageChannelReady;-><init>()V

    iput-object p1, p0, Lo/ProxyEvent;->onRelationshipValidationResult:Lo/t$onMessageChannelReady;

    .line 165
    new-instance p1, Lo/t$onPostMessage;

    invoke-direct {p1}, Lo/t$onPostMessage;-><init>()V

    iput-object p1, p0, Lo/ProxyEvent;->getInterfaceDescriptor:Lo/t$onPostMessage;

    .line 166
    invoke-virtual {p2, p0, p5}, Lo/InstrumentViewMapping;->onPostMessage(Lo/InstrumentViewMapping$ICustomTabsCallback;Lo/PaymentInstrumentRequestJsonAdapter;)V

    .line 170
    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lo/ProxyEvent;->ICustomTabsCallback$Stub:Landroid/os/HandlerThread;

    .line 172
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 173
    iget-object p1, p0, Lo/ProxyEvent;->ICustomTabsCallback$Stub:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-interface {p10, p1, p0}, Lo/CheckoutBuilder$PolingRemoteConfig;->onMessageChannelReady(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lo/EncoderDecoder$RDSException;

    move-result-object p1

    iput-object p1, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lo/ProxyEvent;->newSession:Lo/$$a;

    invoke-virtual {v0}, Lo/$$a;->ICustomTabsCallback()V

    .line 511
    iget-object v0, p0, Lo/ProxyEvent;->ICustomTabsService$Stub$Proxy:[Lo/HuaweiReferrer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 512
    invoke-direct {p0, v3}, Lo/ProxyEvent;->onNavigationEvent(Lo/HuaweiReferrer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ICustomTabsCallback(F)V
    .locals 5

    .line 1182
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->extraCallback()Lo/n$2;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1183
    iget-boolean v1, v0, Lo/n$2;->ICustomTabsCallback:Z

    if-eqz v1, :cond_2

    .line 1184
    invoke-virtual {v0}, Lo/n$2;->onRelationshipValidationResult()Lo/OfferJsonAdapter;

    move-result-object v1

    iget-object v1, v1, Lo/OfferJsonAdapter;->extraCallback:Lo/InstrumentDataJsonAdapter;

    invoke-virtual {v1}, Lo/InstrumentDataJsonAdapter;->onMessageChannelReady()[Lo/InstrumentView;

    move-result-object v1

    .line 1185
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 1187
    invoke-interface {v4, p1}, Lo/InstrumentView;->onMessageChannelReady(F)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1190
    :cond_1
    invoke-virtual {v0}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private ICustomTabsCallback(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 466
    iput p1, p0, Lo/ProxyEvent;->cancel:I

    .line 467
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0, p1}, Lo/onSensorChanged;->extraCallback(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 468
    invoke-direct {p0, p1}, Lo/ProxyEvent;->asBinder(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 470
    invoke-direct {p0, p1}, Lo/ProxyEvent;->ICustomTabsCallback$Stub(Z)V

    return-void
.end method

.method private ICustomTabsCallback(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    .line 773
    invoke-virtual {v0}, Lo/onSensorChanged;->asInterface()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    .line 775
    invoke-virtual {v0}, Lo/onSensorChanged;->onNavigationEvent()Lo/n$2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/n$2;->onMessageChannelReady(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lo/ProxyEvent;->INotificationSideChannel$Stub$Proxy:J

    .line 776
    iget-object v0, p0, Lo/ProxyEvent;->newSession:Lo/$$a;

    invoke-virtual {v0, p1, p2}, Lo/$$a;->onPostMessage(J)V

    .line 777
    iget-object p1, p0, Lo/ProxyEvent;->ICustomTabsService$Stub$Proxy:[Lo/HuaweiReferrer;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 778
    iget-wide v2, p0, Lo/ProxyEvent;->INotificationSideChannel$Stub$Proxy:J

    invoke-interface {v1, v2, v3}, Lo/HuaweiReferrer;->onPostMessage(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 780
    :cond_1
    invoke-direct {p0}, Lo/ProxyEvent;->ICustomTabsService()V

    return-void
.end method

.method private ICustomTabsCallback(JJ)V
    .locals 2

    .line 631
    iget-object v0, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lo/EncoderDecoder$RDSException;->ICustomTabsCallback(I)V

    .line 632
    iget-object v0, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    add-long/2addr p1, p3

    invoke-interface {v0, v1, p1, p2}, Lo/EncoderDecoder$RDSException;->ICustomTabsCallback(IJ)Z

    return-void
.end method

.method private ICustomTabsCallback(Lo/GoogleReferrer$1;)V
    .locals 2

    .line 956
    invoke-virtual {p1}, Lo/GoogleReferrer$1;->extraCallback()Landroid/os/Handler;

    move-result-object v0

    .line 957
    new-instance v1, Lo/UninstallTokenEvent;

    invoke-direct {v1, p0, p1}, Lo/UninstallTokenEvent;-><init>(Lo/ProxyEvent;Lo/GoogleReferrer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private ICustomTabsCallback(Lo/JuspaySessionToken;Lo/OfferJsonAdapter;)V
    .locals 2

    .line 1828
    iget-object v0, p0, Lo/ProxyEvent;->extraCallback:Lo/Validate;

    iget-object v1, p0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    iget-object p2, p2, Lo/OfferJsonAdapter;->extraCallback:Lo/InstrumentDataJsonAdapter;

    invoke-interface {v0, v1, p1, p2}, Lo/Validate;->onNavigationEvent([Lo/HuaweiReferrer;Lo/JuspaySessionToken;Lo/InstrumentDataJsonAdapter;)V

    return-void
.end method

.method private ICustomTabsCallback(Lo/PaymentModeAdapter;)V
    .locals 2

    .line 1666
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0, p1}, Lo/onSensorChanged;->onPostMessage(Lo/PaymentModeAdapter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1670
    :cond_0
    iget-object p1, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    iget-wide v0, p0, Lo/ProxyEvent;->INotificationSideChannel$Stub$Proxy:J

    invoke-virtual {p1, v0, v1}, Lo/onSensorChanged;->onPostMessage(J)V

    .line 1671
    invoke-direct {p0}, Lo/ProxyEvent;->extraCommand()V

    return-void
.end method

.method private ICustomTabsCallback(Lo/ProxyEvent$onMessageChannelReady;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1271
    iget-object v0, p1, Lo/ProxyEvent$onMessageChannelReady;->onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter;

    iget-object v1, p0, Lo/ProxyEvent;->ICustomTabsService$Stub:Lo/InstrumentsCompleteJsonAdapter;

    if-eq v0, v1, :cond_0

    return-void

    .line 1275
    :cond_0
    iget-object v0, p0, Lo/ProxyEvent;->ICustomTabsCallback$Stub$Proxy:Lo/ProxyEvent$ICustomTabsCallback;

    iget v1, p0, Lo/ProxyEvent;->notify:I

    invoke-virtual {v0, v1}, Lo/ProxyEvent$ICustomTabsCallback;->onNavigationEvent(I)V

    const/4 v0, 0x0

    .line 1276
    iput v0, p0, Lo/ProxyEvent;->notify:I

    .line 1278
    iget-object v1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v1, v1, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    .line 1279
    iget-object v2, p1, Lo/ProxyEvent$onMessageChannelReady;->extraCallback:Lo/t;

    .line 1280
    iget-object p1, p1, Lo/ProxyEvent$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Object;

    .line 1281
    iget-object v3, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v3, v2}, Lo/onSensorChanged;->extraCallback(Lo/t;)V

    .line 1282
    iget-object v3, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    invoke-virtual {v3, v2, p1}, Lo/GoogleReferrer;->ICustomTabsCallback(Lo/t;Ljava/lang/Object;)Lo/GoogleReferrer;

    move-result-object p1

    iput-object p1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    .line 1283
    invoke-direct {p0}, Lo/ProxyEvent;->onTransact()V

    .line 1285
    iget-object p1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object p1, p1, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 1286
    iget-object v3, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v3, v3, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 1287
    invoke-virtual {v3}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v3, v3, Lo/GoogleReferrer;->onNavigationEvent:J

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v3, v3, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    .line 1289
    :goto_0
    iget-object v5, p0, Lo/ProxyEvent;->INotificationSideChannel:Lo/ProxyEvent$extraCallback;

    if-eqz v5, :cond_3

    const/4 p1, 0x1

    .line 1292
    invoke-direct {p0, v5, p1}, Lo/ProxyEvent;->extraCallback(Lo/ProxyEvent$extraCallback;Z)Landroid/util/Pair;

    move-result-object p1

    const/4 v1, 0x0

    .line 1293
    iput-object v1, p0, Lo/ProxyEvent;->INotificationSideChannel:Lo/ProxyEvent$extraCallback;

    if-nez p1, :cond_2

    .line 1297
    invoke-direct {p0}, Lo/ProxyEvent;->requestPostMessageChannel()V

    return-void

    .line 1300
    :cond_2
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 1301
    iget-object v5, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, p1, v1, v2}, Lo/onSensorChanged;->onNavigationEvent(Ljava/lang/Object;J)Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-result-object p1

    :goto_1
    move-object v6, p1

    move-wide v9, v1

    goto/16 :goto_3

    :cond_3
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_5

    .line 1302
    invoke-virtual {v2}, Lo/t;->extraCallback()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1304
    iget-boolean p1, p0, Lo/ProxyEvent;->IPostMessageService$Stub$Proxy:Z

    .line 1306
    invoke-virtual {v2, p1}, Lo/t;->extraCallback(Z)I

    move-result p1

    .line 1305
    invoke-direct {p0, v2, p1, v5, v6}, Lo/ProxyEvent;->onNavigationEvent(Lo/t;IJ)Landroid/util/Pair;

    move-result-object p1

    .line 1307
    iget-object v1, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v5, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v2, v5, v6}, Lo/onSensorChanged;->onNavigationEvent(Ljava/lang/Object;J)Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-result-object v1

    .line 1308
    invoke-virtual {v1}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1310
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    goto :goto_2

    :cond_4
    move-wide v5, v3

    :goto_2
    move-wide v9, v5

    move-object v6, v1

    goto :goto_3

    .line 1312
    :cond_5
    iget-object v7, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v2, v7}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    .line 1315
    iget-object p1, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v2}, Lo/ProxyEvent;->onNavigationEvent(Ljava/lang/Object;Lo/t;Lo/t;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    .line 1318
    invoke-direct {p0}, Lo/ProxyEvent;->requestPostMessageChannel()V

    return-void

    .line 1322
    :cond_6
    iget-object v1, p0, Lo/ProxyEvent;->getInterfaceDescriptor:Lo/t$onPostMessage;

    .line 1324
    invoke-virtual {v2, p1, v1}, Lo/t;->onPostMessage(Ljava/lang/Object;Lo/t$onPostMessage;)Lo/t$onPostMessage;

    move-result-object p1

    iget p1, p1, Lo/t$onPostMessage;->onNavigationEvent:I

    .line 1323
    invoke-direct {p0, v2, p1, v5, v6}, Lo/ProxyEvent;->onNavigationEvent(Lo/t;IJ)Landroid/util/Pair;

    move-result-object p1

    .line 1325
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 1326
    iget-object v5, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, p1, v1, v2}, Lo/onSensorChanged;->onNavigationEvent(Ljava/lang/Object;J)Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-result-object p1

    goto :goto_1

    .line 1329
    :cond_7
    iget-object p1, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    iget-object v1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v1, v1, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object v1, v1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    .line 1330
    invoke-virtual {p1, v1, v3, v4}, Lo/onSensorChanged;->onNavigationEvent(Ljava/lang/Object;J)Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-result-object p1

    .line 1331
    iget-object v1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v1, v1, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-virtual {v1}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1335
    iget-object p1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object p1, p1, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    :cond_8
    move-object v6, p1

    move-wide v9, v3

    .line 1339
    :goto_3
    iget-object p1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object p1, p1, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    cmp-long p1, v3, v9

    if-nez p1, :cond_9

    .line 1341
    iget-object p1, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    iget-wide v1, p0, Lo/ProxyEvent;->INotificationSideChannel$Stub$Proxy:J

    invoke-direct {p0}, Lo/ProxyEvent;->newSession()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lo/onSensorChanged;->ICustomTabsCallback(JJ)Z

    move-result p1

    if-nez p1, :cond_d

    .line 1342
    invoke-direct {p0, v0}, Lo/ProxyEvent;->asBinder(Z)V

    goto :goto_6

    .line 1346
    :cond_9
    iget-object p1, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {p1}, Lo/onSensorChanged;->extraCallback()Lo/n$2;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1349
    :cond_a
    :goto_4
    invoke-virtual {p1}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1350
    invoke-virtual {p1}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object p1

    .line 1351
    iget-object v1, p1, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-object v1, v1, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1352
    iget-object v1, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    iget-object v2, p1, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    invoke-virtual {v1, v2}, Lo/onSensorChanged;->ICustomTabsCallback(Lo/p;)Lo/p;

    move-result-object v1

    iput-object v1, p1, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    goto :goto_4

    .line 1357
    :cond_b
    invoke-virtual {v6}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result p1

    if-eqz p1, :cond_c

    const-wide/16 v1, 0x0

    goto :goto_5

    :cond_c
    move-wide v1, v9

    .line 1358
    :goto_5
    invoke-direct {p0, v6, v1, v2}, Lo/ProxyEvent;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;J)J

    move-result-wide v7

    .line 1359
    iget-object v5, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    .line 1361
    invoke-direct {p0}, Lo/ProxyEvent;->mayLaunchUrl()J

    move-result-wide v11

    .line 1360
    invoke-virtual/range {v5 .. v12}, Lo/GoogleReferrer;->onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)Lo/GoogleReferrer;

    move-result-object p1

    iput-object p1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    .line 1363
    :cond_d
    :goto_6
    invoke-direct {p0, v0}, Lo/ProxyEvent;->ICustomTabsCallback$Stub(Z)V

    return-void
.end method

.method private ICustomTabsCallback(Lo/r;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1676
    iget-object v0, p0, Lo/ProxyEvent;->asInterface:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1677
    iget v0, p1, Lo/r;->ICustomTabsCallback:F

    invoke-direct {p0, v0}, Lo/ProxyEvent;->ICustomTabsCallback(F)V

    .line 1678
    iget-object v0, p0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 1680
    iget v4, p1, Lo/r;->ICustomTabsCallback:F

    invoke-interface {v3, v4}, Lo/HuaweiReferrer;->onNavigationEvent(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private ICustomTabsCallback(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 449
    iput-boolean v0, p0, Lo/ProxyEvent;->IPostMessageService:Z

    .line 450
    iput-boolean p1, p0, Lo/ProxyEvent;->IPostMessageService$Stub:Z

    if-nez p1, :cond_0

    .line 452
    invoke-direct {p0}, Lo/ProxyEvent;->ICustomTabsCallback()V

    .line 453
    invoke-direct {p0}, Lo/ProxyEvent;->asInterface()V

    return-void

    .line 455
    :cond_0
    iget-object p1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget p1, p1, Lo/GoogleReferrer;->onTransact:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 456
    invoke-direct {p0}, Lo/ProxyEvent;->onNavigationEvent()V

    .line 457
    iget-object p1, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    invoke-interface {p1, v1}, Lo/EncoderDecoder$RDSException;->onNavigationEvent(I)Z

    return-void

    .line 458
    :cond_1
    iget-object p1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget p1, p1, Lo/GoogleReferrer;->onTransact:I

    if-ne p1, v1, :cond_2

    .line 459
    iget-object p1, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    invoke-interface {p1, v1}, Lo/EncoderDecoder$RDSException;->onNavigationEvent(I)Z

    :cond_2
    return-void
.end method

.method private ICustomTabsCallback(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    .line 793
    iget-boolean v0, p0, Lo/ProxyEvent;->cancelAll:Z

    if-eq v0, p1, :cond_1

    .line 794
    iput-boolean p1, p0, Lo/ProxyEvent;->cancelAll:Z

    if-nez p1, :cond_1

    .line 796
    iget-object p1, p0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 797
    invoke-interface {v2}, Lo/HuaweiReferrer;->q_()I

    move-result v3

    if-nez v3, :cond_0

    .line 798
    invoke-interface {v2}, Lo/HuaweiReferrer;->newSession()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 804
    monitor-enter p0

    const/4 p1, 0x1

    .line 805
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 806
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 807
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    return-void
.end method

.method private static ICustomTabsCallback(Lo/InstrumentView;)[Lo/p$a;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1833
    invoke-interface {p0}, Lo/InstrumentView;->onRelationshipValidationResult()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1834
    :goto_0
    new-array v2, v1, [Lo/p$a;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1836
    invoke-interface {p0, v0}, Lo/InstrumentView;->onNavigationEvent(I)Lo/p$a;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 551
    iget-object v1, v0, Lo/ProxyEvent;->postMessage:Lo/CheckoutBuilder$PolingRemoteConfig;

    invoke-interface {v1}, Lo/CheckoutBuilder$PolingRemoteConfig;->extraCallback()J

    move-result-wide v1

    .line 552
    invoke-direct/range {p0 .. p0}, Lo/ProxyEvent;->postMessage()V

    .line 553
    iget-object v3, v0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v3}, Lo/onSensorChanged;->asInterface()Z

    move-result v3

    const-wide/16 v4, 0xa

    if-nez v3, :cond_0

    .line 555
    invoke-direct/range {p0 .. p0}, Lo/ProxyEvent;->getInterfaceDescriptor()V

    .line 556
    invoke-direct {v0, v1, v2, v4, v5}, Lo/ProxyEvent;->ICustomTabsCallback(JJ)V

    return-void

    .line 559
    :cond_0
    iget-object v3, v0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v3}, Lo/onSensorChanged;->onNavigationEvent()Lo/n$2;

    move-result-object v3

    const-string v6, "doSomeWork"

    .line 561
    invoke-static {v6}, Lo/StatementResponse;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 563
    invoke-direct/range {p0 .. p0}, Lo/ProxyEvent;->asInterface()V

    .line 564
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    .line 566
    iget-object v10, v3, Lo/n$2;->onPostMessage:Lo/PaymentModeAdapter;

    iget-object v11, v0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v11, v11, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    iget-wide v13, v0, Lo/ProxyEvent;->warmup:J

    sub-long/2addr v11, v13

    iget-boolean v13, v0, Lo/ProxyEvent;->ICustomTabsService:Z

    invoke-interface {v10, v11, v12, v13}, Lo/PaymentModeAdapter;->onNavigationEvent(JZ)V

    .line 571
    iget-object v10, v0, Lo/ProxyEvent;->ICustomTabsService$Stub$Proxy:[Lo/HuaweiReferrer;

    array-length v11, v10

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    :goto_0
    if-ge v14, v11, :cond_6

    aget-object v12, v10, v14

    .line 575
    iget-wide v8, v0, Lo/ProxyEvent;->INotificationSideChannel$Stub$Proxy:J

    invoke-interface {v12, v8, v9, v6, v7}, Lo/HuaweiReferrer;->onMessageChannelReady(JJ)V

    if-eqz v16, :cond_1

    .line 576
    invoke-interface {v12}, Lo/HuaweiReferrer;->IPostMessageService$Stub()Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    .line 581
    :goto_1
    invoke-interface {v12}, Lo/HuaweiReferrer;->ICustomTabsService$Stub$Proxy()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v12}, Lo/HuaweiReferrer;->IPostMessageService$Stub()Z

    move-result v8

    if-nez v8, :cond_3

    .line 582
    invoke-direct {v0, v12}, Lo/ProxyEvent;->extraCallback(Lo/HuaweiReferrer;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v8, 0x1

    :goto_3
    if-nez v8, :cond_4

    .line 584
    invoke-interface {v12}, Lo/HuaweiReferrer;->warmup()V

    :cond_4
    if-eqz v15, :cond_5

    if-eqz v8, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v8, 0x3e8

    goto :goto_0

    :cond_6
    if-nez v15, :cond_7

    .line 589
    invoke-direct/range {p0 .. p0}, Lo/ProxyEvent;->getInterfaceDescriptor()V

    .line 592
    :cond_7
    iget-object v6, v3, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-wide v6, v6, Lo/p;->extraCallback:J

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v16, :cond_9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v6, v11

    if-eqz v13, :cond_8

    .line 593
    iget-object v11, v0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v11, v11, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    cmp-long v13, v6, v11

    if-gtz v13, :cond_9

    :cond_8
    iget-object v3, v3, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-boolean v3, v3, Lo/p;->asBinder:Z

    if-eqz v3, :cond_9

    .line 597
    invoke-direct {v0, v8}, Lo/ProxyEvent;->extraCallback(I)V

    .line 598
    invoke-direct/range {p0 .. p0}, Lo/ProxyEvent;->ICustomTabsCallback()V

    goto :goto_5

    .line 599
    :cond_9
    iget-object v3, v0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget v3, v3, Lo/GoogleReferrer;->onTransact:I

    if-ne v3, v10, :cond_a

    .line 600
    invoke-direct {v0, v15}, Lo/ProxyEvent;->onTransact(Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 601
    invoke-direct {v0, v9}, Lo/ProxyEvent;->extraCallback(I)V

    .line 602
    iget-boolean v3, v0, Lo/ProxyEvent;->IPostMessageService$Stub:Z

    if-eqz v3, :cond_d

    .line 603
    invoke-direct/range {p0 .. p0}, Lo/ProxyEvent;->onNavigationEvent()V

    goto :goto_5

    .line 605
    :cond_a
    iget-object v3, v0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget v3, v3, Lo/GoogleReferrer;->onTransact:I

    if-ne v3, v9, :cond_d

    iget-object v3, v0, Lo/ProxyEvent;->ICustomTabsService$Stub$Proxy:[Lo/HuaweiReferrer;

    array-length v3, v3

    if-nez v3, :cond_b

    .line 606
    invoke-direct/range {p0 .. p0}, Lo/ProxyEvent;->ICustomTabsCallback$Stub$Proxy()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_5

    :cond_b
    if-nez v15, :cond_d

    .line 607
    :cond_c
    iget-boolean v3, v0, Lo/ProxyEvent;->IPostMessageService$Stub:Z

    iput-boolean v3, v0, Lo/ProxyEvent;->IPostMessageService:Z

    .line 608
    invoke-direct {v0, v10}, Lo/ProxyEvent;->extraCallback(I)V

    .line 609
    invoke-direct/range {p0 .. p0}, Lo/ProxyEvent;->ICustomTabsCallback()V

    .line 612
    :cond_d
    :goto_5
    iget-object v3, v0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget v3, v3, Lo/GoogleReferrer;->onTransact:I

    if-ne v3, v10, :cond_e

    .line 613
    iget-object v3, v0, Lo/ProxyEvent;->ICustomTabsService$Stub$Proxy:[Lo/HuaweiReferrer;

    array-length v6, v3

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v6, :cond_e

    aget-object v7, v3, v12

    .line 614
    invoke-interface {v7}, Lo/HuaweiReferrer;->warmup()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 618
    :cond_e
    iget-boolean v3, v0, Lo/ProxyEvent;->IPostMessageService$Stub:Z

    if-eqz v3, :cond_f

    iget-object v3, v0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget v3, v3, Lo/GoogleReferrer;->onTransact:I

    if-eq v3, v9, :cond_10

    :cond_f
    iget-object v3, v0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget v3, v3, Lo/GoogleReferrer;->onTransact:I

    if-ne v3, v10, :cond_11

    .line 620
    :cond_10
    invoke-direct {v0, v1, v2, v4, v5}, Lo/ProxyEvent;->ICustomTabsCallback(JJ)V

    goto :goto_7

    .line 621
    :cond_11
    iget-object v3, v0, Lo/ProxyEvent;->ICustomTabsService$Stub$Proxy:[Lo/HuaweiReferrer;

    array-length v3, v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget v3, v3, Lo/GoogleReferrer;->onTransact:I

    if-eq v3, v8, :cond_12

    const-wide/16 v3, 0x3e8

    .line 622
    invoke-direct {v0, v1, v2, v3, v4}, Lo/ProxyEvent;->ICustomTabsCallback(JJ)V

    goto :goto_7

    .line 624
    :cond_12
    iget-object v1, v0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    invoke-interface {v1, v10}, Lo/EncoderDecoder$RDSException;->ICustomTabsCallback(I)V

    .line 627
    :goto_7
    invoke-static {}, Lo/StatementResponse;->onPostMessage()V

    return-void
.end method

.method private ICustomTabsCallback$Stub(Lo/GoogleReferrer$1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 969
    invoke-virtual {p1}, Lo/GoogleReferrer$1;->asBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 973
    :try_start_0
    invoke-virtual {p1}, Lo/GoogleReferrer$1;->onPostMessage()Lo/GoogleReferrer$1$onMessageChannelReady;

    move-result-object v1

    invoke-virtual {p1}, Lo/GoogleReferrer$1;->ICustomTabsCallback()I

    move-result v2

    invoke-virtual {p1}, Lo/GoogleReferrer$1;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lo/GoogleReferrer$1$onMessageChannelReady;->onPostMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    invoke-virtual {p1, v0}, Lo/GoogleReferrer$1;->extraCallback(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lo/GoogleReferrer$1;->extraCallback(Z)V

    .line 976
    throw v1
.end method

.method private ICustomTabsCallback$Stub(Z)V
    .locals 5

    .line 1790
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->ICustomTabsCallback()Lo/n$2;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1791
    iget-object v1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v1, v1, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-object v1, v1, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 1793
    :goto_0
    iget-object v2, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v2, v2, Lo/GoogleReferrer;->asInterface:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 1794
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1796
    iget-object v3, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    invoke-virtual {v3, v1}, Lo/GoogleReferrer;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/GoogleReferrer;

    move-result-object v1

    iput-object v1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    .line 1798
    :cond_1
    iget-object v1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    if-nez v0, :cond_2

    iget-wide v3, v1, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    goto :goto_1

    .line 1801
    :cond_2
    invoke-virtual {v0}, Lo/n$2;->onMessageChannelReady()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Lo/GoogleReferrer;->warmup:J

    .line 1802
    iget-object v1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    invoke-direct {p0}, Lo/ProxyEvent;->mayLaunchUrl()J

    move-result-wide v3

    iput-wide v3, v1, Lo/GoogleReferrer;->ICustomTabsService:J

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    .line 1803
    iget-boolean p1, v0, Lo/n$2;->ICustomTabsCallback:Z

    if-eqz p1, :cond_4

    .line 1807
    invoke-virtual {v0}, Lo/n$2;->asInterface()Lo/JuspaySessionToken;

    move-result-object p1

    .line 1808
    invoke-virtual {v0}, Lo/n$2;->onRelationshipValidationResult()Lo/OfferJsonAdapter;

    move-result-object v0

    .line 1806
    invoke-direct {p0, p1, v0}, Lo/ProxyEvent;->ICustomTabsCallback(Lo/JuspaySessionToken;Lo/OfferJsonAdapter;)V

    :cond_4
    return-void
.end method

.method private ICustomTabsCallback$Stub$Proxy()Z
    .locals 6

    .line 1232
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->onNavigationEvent()Lo/n$2;

    move-result-object v0

    .line 1233
    invoke-virtual {v0}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v1

    .line 1234
    iget-object v0, v0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-wide v2, v0, Lo/p;->extraCallback:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 1235
    iget-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v4, v0, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lo/n$2;->ICustomTabsCallback:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-object v0, v0, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 1238
    invoke-virtual {v0}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private ICustomTabsService()V
    .locals 5

    .line 1195
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->extraCallback()Lo/n$2;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1197
    invoke-virtual {v0}, Lo/n$2;->onRelationshipValidationResult()Lo/OfferJsonAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1199
    iget-object v1, v1, Lo/OfferJsonAdapter;->extraCallback:Lo/InstrumentDataJsonAdapter;

    invoke-virtual {v1}, Lo/InstrumentDataJsonAdapter;->onMessageChannelReady()[Lo/InstrumentView;

    move-result-object v1

    .line 1200
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 1202
    invoke-interface {v4}, Lo/InstrumentView;->ICustomTabsCallback$Stub()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1206
    :cond_1
    invoke-virtual {v0}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private asBinder()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1092
    iget-object v1, v0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v1}, Lo/onSensorChanged;->asInterface()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1096
    :cond_0
    iget-object v1, v0, Lo/ProxyEvent;->newSession:Lo/$$a;

    invoke-virtual {v1}, Lo/$$a;->onPostMessage()Lo/r;

    move-result-object v1

    iget v1, v1, Lo/r;->ICustomTabsCallback:F

    .line 1098
    iget-object v2, v0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v2}, Lo/onSensorChanged;->onNavigationEvent()Lo/n$2;

    move-result-object v2

    .line 1099
    iget-object v3, v0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v3}, Lo/onSensorChanged;->onMessageChannelReady()Lo/n$2;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    if-eqz v2, :cond_c

    .line 1103
    iget-boolean v6, v2, Lo/n$2;->ICustomTabsCallback:Z

    if-nez v6, :cond_1

    goto/16 :goto_5

    .line 1107
    :cond_1
    iget-object v6, v0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v6, v6, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    invoke-virtual {v2, v1, v6}, Lo/n$2;->onMessageChannelReady(FLo/t;)Lo/OfferJsonAdapter;

    move-result-object v8

    const/4 v6, 0x0

    if-nez v8, :cond_3

    if-ne v2, v3, :cond_2

    const/4 v5, 0x0

    .line 1116
    :cond_2
    invoke-virtual {v2}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-eqz v5, :cond_a

    .line 1121
    iget-object v2, v0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v2}, Lo/onSensorChanged;->onNavigationEvent()Lo/n$2;

    move-result-object v2

    .line 1122
    iget-object v3, v0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v3, v2}, Lo/onSensorChanged;->onPostMessage(Lo/n$2;)Z

    move-result v11

    .line 1124
    iget-object v3, v0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    array-length v3, v3

    new-array v3, v3, [Z

    .line 1125
    iget-object v5, v0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v9, v5, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    move-object v7, v2

    move-object v12, v3

    .line 1126
    invoke-virtual/range {v7 .. v12}, Lo/n$2;->onMessageChannelReady(Lo/OfferJsonAdapter;JZ[Z)J

    move-result-wide v7

    .line 1128
    iget-object v5, v0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget v5, v5, Lo/GoogleReferrer;->onTransact:I

    if-eq v5, v1, :cond_4

    iget-object v5, v0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v9, v5, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    cmp-long v5, v7, v9

    if-eqz v5, :cond_4

    .line 1130
    iget-object v12, v0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v13, v12, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object v5, v0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v9, v5, Lo/GoogleReferrer;->onNavigationEvent:J

    .line 1135
    invoke-direct/range {p0 .. p0}, Lo/ProxyEvent;->mayLaunchUrl()J

    move-result-wide v18

    move-wide v14, v7

    move-wide/from16 v16, v9

    .line 1131
    invoke-virtual/range {v12 .. v19}, Lo/GoogleReferrer;->onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)Lo/GoogleReferrer;

    move-result-object v5

    iput-object v5, v0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    .line 1136
    iget-object v5, v0, Lo/ProxyEvent;->ICustomTabsCallback$Stub$Proxy:Lo/ProxyEvent$ICustomTabsCallback;

    invoke-virtual {v5, v1}, Lo/ProxyEvent$ICustomTabsCallback;->ICustomTabsCallback(I)V

    .line 1137
    invoke-direct {v0, v7, v8}, Lo/ProxyEvent;->ICustomTabsCallback(J)V

    .line 1141
    :cond_4
    iget-object v5, v0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    array-length v5, v5

    new-array v5, v5, [Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1142
    :goto_1
    iget-object v9, v0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    array-length v10, v9

    if-ge v7, v10, :cond_9

    .line 1143
    aget-object v9, v9, v7

    .line 1144
    invoke-interface {v9}, Lo/HuaweiReferrer;->q_()I

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    :goto_2
    aput-boolean v10, v5, v7

    .line 1145
    iget-object v10, v2, Lo/n$2;->onNavigationEvent:[Lo/CardInstrumentJsonAdapter;

    aget-object v10, v10, v7

    if-eqz v10, :cond_6

    add-int/lit8 v8, v8, 0x1

    .line 1149
    :cond_6
    aget-boolean v11, v5, v7

    if-eqz v11, :cond_8

    .line 1150
    invoke-interface {v9}, Lo/HuaweiReferrer;->ICustomTabsCallback$Stub()Lo/CardInstrumentJsonAdapter;

    move-result-object v11

    if-eq v10, v11, :cond_7

    .line 1152
    invoke-direct {v0, v9}, Lo/ProxyEvent;->onMessageChannelReady(Lo/HuaweiReferrer;)V

    goto :goto_3

    .line 1153
    :cond_7
    aget-boolean v10, v3, v7

    if-eqz v10, :cond_8

    .line 1155
    iget-wide v10, v0, Lo/ProxyEvent;->INotificationSideChannel$Stub$Proxy:J

    invoke-interface {v9, v10, v11}, Lo/HuaweiReferrer;->onPostMessage(J)V

    :cond_8
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1159
    :cond_9
    iget-object v3, v0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    .line 1161
    invoke-virtual {v2}, Lo/n$2;->asInterface()Lo/JuspaySessionToken;

    move-result-object v6

    invoke-virtual {v2}, Lo/n$2;->onRelationshipValidationResult()Lo/OfferJsonAdapter;

    move-result-object v2

    .line 1160
    invoke-virtual {v3, v6, v2}, Lo/GoogleReferrer;->onMessageChannelReady(Lo/JuspaySessionToken;Lo/OfferJsonAdapter;)Lo/GoogleReferrer;

    move-result-object v2

    iput-object v2, v0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    .line 1162
    invoke-direct {v0, v5, v8}, Lo/ProxyEvent;->onMessageChannelReady([ZI)V

    goto :goto_4

    .line 1165
    :cond_a
    iget-object v3, v0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v3, v2}, Lo/onSensorChanged;->onPostMessage(Lo/n$2;)Z

    .line 1166
    iget-boolean v3, v2, Lo/n$2;->ICustomTabsCallback:Z

    if-eqz v3, :cond_b

    .line 1167
    iget-object v3, v2, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-wide v9, v3, Lo/p;->onNavigationEvent:J

    iget-wide v11, v0, Lo/ProxyEvent;->INotificationSideChannel$Stub$Proxy:J

    .line 1169
    invoke-virtual {v2, v11, v12}, Lo/n$2;->onNavigationEvent(J)J

    move-result-wide v11

    .line 1168
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 1170
    invoke-virtual {v2, v8, v9, v10, v6}, Lo/n$2;->onPostMessage(Lo/OfferJsonAdapter;JZ)J

    .line 1173
    :cond_b
    :goto_4
    invoke-direct {v0, v4}, Lo/ProxyEvent;->ICustomTabsCallback$Stub(Z)V

    .line 1174
    iget-object v2, v0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget v2, v2, Lo/GoogleReferrer;->onTransact:I

    if-eq v2, v1, :cond_c

    .line 1175
    invoke-direct/range {p0 .. p0}, Lo/ProxyEvent;->extraCommand()V

    .line 1176
    invoke-direct/range {p0 .. p0}, Lo/ProxyEvent;->asInterface()V

    .line 1177
    iget-object v1, v0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lo/EncoderDecoder$RDSException;->onNavigationEvent(I)Z

    :cond_c
    :goto_5
    return-void
.end method

.method private asBinder(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->onNavigationEvent()Lo/n$2;

    move-result-object v0

    iget-object v0, v0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-object v2, v0, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 486
    iget-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v0, v0, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    const/4 v3, 0x1

    .line 487
    invoke-direct {p0, v2, v0, v1, v3}, Lo/ProxyEvent;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JZ)J

    move-result-wide v3

    .line 488
    iget-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v0, v0, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    cmp-long v5, v3, v0

    if-eqz v5, :cond_0

    .line 489
    iget-object v1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v5, v1, Lo/GoogleReferrer;->onNavigationEvent:J

    .line 494
    invoke-direct {p0}, Lo/ProxyEvent;->mayLaunchUrl()J

    move-result-wide v7

    .line 490
    invoke-virtual/range {v1 .. v8}, Lo/GoogleReferrer;->onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)Lo/GoogleReferrer;

    move-result-object v0

    iput-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    if-eqz p1, :cond_0

    .line 496
    iget-object p1, p0, Lo/ProxyEvent;->ICustomTabsCallback$Stub$Proxy:Lo/ProxyEvent$ICustomTabsCallback;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lo/ProxyEvent$ICustomTabsCallback;->ICustomTabsCallback(I)V

    :cond_0
    return-void
.end method

.method private asInterface()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->asInterface()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->onNavigationEvent()Lo/n$2;

    move-result-object v0

    .line 523
    iget-object v1, v0, Lo/n$2;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {v1}, Lo/PaymentModeAdapter;->onMessageChannelReady()J

    move-result-wide v4

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v1

    if-eqz v3, :cond_1

    .line 525
    invoke-direct {p0, v4, v5}, Lo/ProxyEvent;->ICustomTabsCallback(J)V

    .line 528
    iget-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v0, v0, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    cmp-long v2, v4, v0

    if-eqz v2, :cond_2

    .line 529
    iget-object v2, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v3, v2, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v6, v0, Lo/GoogleReferrer;->onNavigationEvent:J

    .line 534
    invoke-direct {p0}, Lo/ProxyEvent;->mayLaunchUrl()J

    move-result-wide v8

    .line 530
    invoke-virtual/range {v2 .. v9}, Lo/GoogleReferrer;->onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)Lo/GoogleReferrer;

    move-result-object v0

    iput-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    .line 535
    iget-object v0, p0, Lo/ProxyEvent;->ICustomTabsCallback$Stub$Proxy:Lo/ProxyEvent$ICustomTabsCallback;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/ProxyEvent$ICustomTabsCallback;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 538
    :cond_1
    iget-object v1, p0, Lo/ProxyEvent;->newSession:Lo/$$a;

    invoke-virtual {v1}, Lo/$$a;->extraCallback()J

    move-result-wide v1

    iput-wide v1, p0, Lo/ProxyEvent;->INotificationSideChannel$Stub$Proxy:J

    .line 539
    invoke-virtual {v0, v1, v2}, Lo/n$2;->onNavigationEvent(J)J

    move-result-wide v0

    .line 540
    iget-object v2, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v2, v2, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    invoke-direct {p0, v2, v3, v0, v1}, Lo/ProxyEvent;->onNavigationEvent(JJ)V

    .line 541
    iget-object v2, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iput-wide v0, v2, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    .line 545
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->ICustomTabsCallback()Lo/n$2;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    invoke-virtual {v0}, Lo/n$2;->onMessageChannelReady()J

    move-result-wide v2

    iput-wide v2, v1, Lo/GoogleReferrer;->warmup:J

    .line 547
    iget-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    invoke-direct {p0}, Lo/ProxyEvent;->mayLaunchUrl()J

    move-result-wide v1

    iput-wide v1, v0, Lo/GoogleReferrer;->ICustomTabsService:J

    return-void
.end method

.method private extraCallback(Lo/ProxyEvent$extraCallback;Z)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ProxyEvent$extraCallback;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1438
    iget-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    .line 1439
    iget-object v1, p1, Lo/ProxyEvent$extraCallback;->onPostMessage:Lo/t;

    .line 1440
    invoke-virtual {v0}, Lo/t;->extraCallback()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 1444
    :cond_0
    invoke-virtual {v1}, Lo/t;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 1452
    :cond_1
    :try_start_0
    iget-object v5, p0, Lo/ProxyEvent;->onRelationshipValidationResult:Lo/t$onMessageChannelReady;

    iget-object v6, p0, Lo/ProxyEvent;->getInterfaceDescriptor:Lo/t$onPostMessage;

    iget v7, p1, Lo/ProxyEvent$extraCallback;->ICustomTabsCallback:I

    iget-wide v8, p1, Lo/ProxyEvent$extraCallback;->onMessageChannelReady:J

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Lo/t;->ICustomTabsCallback(Lo/t$onMessageChannelReady;Lo/t$onPostMessage;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_2

    return-object p1

    .line 1463
    :cond_2
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    .line 1470
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v0}, Lo/ProxyEvent;->onNavigationEvent(Ljava/lang/Object;Lo/t;Lo/t;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1473
    iget-object p1, p0, Lo/ProxyEvent;->getInterfaceDescriptor:Lo/t$onPostMessage;

    .line 1474
    invoke-virtual {v0, v2, p1}, Lo/t;->ICustomTabsCallback(ILo/t$onPostMessage;)Lo/t$onPostMessage;

    move-result-object p1

    iget p1, p1, Lo/t$onPostMessage;->onNavigationEvent:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1473
    invoke-direct {p0, v0, p1, v1, v2}, Lo/ProxyEvent;->onNavigationEvent(Lo/t;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :catch_0
    :cond_4
    return-object v3
.end method

.method private extraCallback(I)V
    .locals 1

    .line 411
    iget-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget v0, v0, Lo/GoogleReferrer;->onTransact:I

    if-eq v0, p1, :cond_0

    .line 412
    iget-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    invoke-virtual {v0, p1}, Lo/GoogleReferrer;->ICustomTabsCallback(I)Lo/GoogleReferrer;

    move-result-object p1

    iput-object p1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    :cond_0
    return-void
.end method

.method private extraCallback(Lo/InstrumentsCompleteJsonAdapter;ZZ)V
    .locals 2

    .line 438
    iget v0, p0, Lo/ProxyEvent;->notify:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lo/ProxyEvent;->notify:I

    const/4 v0, 0x0

    .line 439
    invoke-direct {p0, v0, v1, p2, p3}, Lo/ProxyEvent;->onNavigationEvent(ZZZZ)V

    .line 441
    iget-object p2, p0, Lo/ProxyEvent;->extraCallback:Lo/Validate;

    invoke-interface {p2}, Lo/Validate;->extraCallback()V

    .line 442
    iput-object p1, p0, Lo/ProxyEvent;->ICustomTabsService$Stub:Lo/InstrumentsCompleteJsonAdapter;

    const/4 p2, 0x2

    .line 443
    invoke-direct {p0, p2}, Lo/ProxyEvent;->extraCallback(I)V

    .line 444
    iget-object p3, p0, Lo/ProxyEvent;->onTransact:Lo/PaymentInstrumentRequestJsonAdapter;

    invoke-interface {p3}, Lo/PaymentInstrumentRequestJsonAdapter;->ICustomTabsCallback()Lo/InitPayloadJsonAdapter;

    move-result-object p3

    invoke-interface {p1, p0, p3}, Lo/InstrumentsCompleteJsonAdapter;->onPostMessage(Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;Lo/InitPayloadJsonAdapter;)V

    .line 445
    iget-object p1, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    invoke-interface {p1, p2}, Lo/EncoderDecoder$RDSException;->onNavigationEvent(I)Z

    return-void
.end method

.method private extraCallback(Lo/r;)V
    .locals 1

    .line 784
    iget-object v0, p0, Lo/ProxyEvent;->newSession:Lo/$$a;

    invoke-virtual {v0, p1}, Lo/$$a;->ICustomTabsCallback(Lo/r;)Lo/r;

    return-void
.end method

.method private extraCallback(Lo/t$d;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lo/ProxyEvent;->extraCommand:Lo/t$d;

    return-void
.end method

.method private extraCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 475
    iput-boolean p1, p0, Lo/ProxyEvent;->IPostMessageService$Stub$Proxy:Z

    .line 476
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0, p1}, Lo/onSensorChanged;->onNavigationEvent(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 477
    invoke-direct {p0, p1}, Lo/ProxyEvent;->asBinder(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 479
    invoke-direct {p0, p1}, Lo/ProxyEvent;->ICustomTabsCallback$Stub(Z)V

    return-void
.end method

.method private extraCallback(Lo/HuaweiReferrer;)Z
    .locals 1

    .line 1784
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->onMessageChannelReady()Lo/n$2;

    move-result-object v0

    .line 1785
    invoke-virtual {v0}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1786
    iget-boolean v0, v0, Lo/n$2;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lo/HuaweiReferrer;->onTransact()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private extraCommand()V
    .locals 6

    .line 1686
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->ICustomTabsCallback()Lo/n$2;

    move-result-object v0

    .line 1687
    invoke-virtual {v0}, Lo/n$2;->onPostMessage()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v0, 0x0

    .line 1689
    invoke-direct {p0, v0}, Lo/ProxyEvent;->onNavigationEvent(Z)V

    return-void

    .line 1693
    :cond_0
    invoke-direct {p0, v1, v2}, Lo/ProxyEvent;->onPostMessage(J)J

    move-result-wide v1

    .line 1694
    iget-object v3, p0, Lo/ProxyEvent;->extraCallback:Lo/Validate;

    iget-object v4, p0, Lo/ProxyEvent;->newSession:Lo/$$a;

    .line 1696
    invoke-virtual {v4}, Lo/$$a;->onPostMessage()Lo/r;

    move-result-object v4

    iget v4, v4, Lo/r;->ICustomTabsCallback:F

    .line 1695
    invoke-interface {v3, v1, v2, v4}, Lo/Validate;->extraCallback(JF)Z

    move-result v1

    .line 1697
    invoke-direct {p0, v1}, Lo/ProxyEvent;->onNavigationEvent(Z)V

    if-eqz v1, :cond_1

    .line 1699
    iget-wide v1, p0, Lo/ProxyEvent;->INotificationSideChannel$Stub$Proxy:J

    invoke-virtual {v0, v1, v2}, Lo/n$2;->onPostMessage(J)V

    :cond_1
    return-void
.end method

.method private getInterfaceDescriptor()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1255
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->ICustomTabsCallback()Lo/n$2;

    move-result-object v0

    .line 1256
    iget-object v1, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v1}, Lo/onSensorChanged;->onMessageChannelReady()Lo/n$2;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 1257
    iget-boolean v2, v0, Lo/n$2;->ICustomTabsCallback:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    .line 1259
    invoke-virtual {v1}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v1

    if-ne v1, v0, :cond_3

    .line 1260
    :cond_0
    iget-object v1, p0, Lo/ProxyEvent;->ICustomTabsService$Stub$Proxy:[Lo/HuaweiReferrer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1261
    invoke-interface {v4}, Lo/HuaweiReferrer;->onTransact()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1265
    :cond_2
    iget-object v0, v0, Lo/n$2;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {v0}, Lo/PaymentModeAdapter;->onNavigationEvent()V

    :cond_3
    return-void
.end method

.method private mayLaunchUrl()J
    .locals 2

    .line 1813
    iget-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v0, v0, Lo/GoogleReferrer;->warmup:J

    invoke-direct {p0, v0, v1}, Lo/ProxyEvent;->onPostMessage(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private newSession()J
    .locals 9

    .line 1367
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->onMessageChannelReady()Lo/n$2;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1371
    :cond_0
    invoke-virtual {v0}, Lo/n$2;->extraCallback()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 1372
    :goto_0
    iget-object v4, p0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 1373
    aget-object v4, v4, v3

    invoke-interface {v4}, Lo/HuaweiReferrer;->q_()I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    aget-object v4, v4, v3

    .line 1374
    invoke-interface {v4}, Lo/HuaweiReferrer;->ICustomTabsCallback$Stub()Lo/CardInstrumentJsonAdapter;

    move-result-object v4

    iget-object v5, v0, Lo/n$2;->onNavigationEvent:[Lo/CardInstrumentJsonAdapter;

    aget-object v5, v5, v3

    if-ne v4, v5, :cond_2

    .line 1378
    iget-object v4, p0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lo/HuaweiReferrer;->asInterface()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    return-wide v6

    .line 1382
    :cond_1
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-wide v1
.end method

.method private onMessageChannelReady(Lo/HuaweiReferrer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1086
    iget-object v0, p0, Lo/ProxyEvent;->newSession:Lo/$$a;

    invoke-virtual {v0, p1}, Lo/$$a;->onPostMessage(Lo/HuaweiReferrer;)V

    .line 1087
    invoke-direct {p0, p1}, Lo/ProxyEvent;->onNavigationEvent(Lo/HuaweiReferrer;)V

    .line 1088
    invoke-interface {p1}, Lo/HuaweiReferrer;->getInterfaceDescriptor()V

    return-void
.end method

.method private onMessageChannelReady(Lo/n$2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1706
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->onNavigationEvent()Lo/n$2;

    move-result-object v0

    if-eqz v0, :cond_6

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 1711
    :cond_0
    iget-object v1, p0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    array-length v1, v1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1712
    :goto_0
    iget-object v5, p0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    array-length v6, v5

    if-ge v3, v6, :cond_5

    .line 1713
    aget-object v5, v5, v3

    .line 1714
    invoke-interface {v5}, Lo/HuaweiReferrer;->q_()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v1, v3

    .line 1715
    invoke-virtual {v0}, Lo/n$2;->onRelationshipValidationResult()Lo/OfferJsonAdapter;

    move-result-object v6

    invoke-virtual {v6, v3}, Lo/OfferJsonAdapter;->onNavigationEvent(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 1718
    :cond_2
    aget-boolean v6, v1, v3

    if-eqz v6, :cond_4

    .line 1719
    invoke-virtual {v0}, Lo/n$2;->onRelationshipValidationResult()Lo/OfferJsonAdapter;

    move-result-object v6

    invoke-virtual {v6, v3}, Lo/OfferJsonAdapter;->onNavigationEvent(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1720
    invoke-interface {v5}, Lo/HuaweiReferrer;->asBinder()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1721
    invoke-interface {v5}, Lo/HuaweiReferrer;->ICustomTabsCallback$Stub()Lo/CardInstrumentJsonAdapter;

    move-result-object v6

    iget-object v7, p1, Lo/n$2;->onNavigationEvent:[Lo/CardInstrumentJsonAdapter;

    aget-object v7, v7, v3

    if-ne v6, v7, :cond_4

    .line 1725
    :cond_3
    invoke-direct {p0, v5}, Lo/ProxyEvent;->onMessageChannelReady(Lo/HuaweiReferrer;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1728
    :cond_5
    iget-object p1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    .line 1730
    invoke-virtual {v0}, Lo/n$2;->asInterface()Lo/JuspaySessionToken;

    move-result-object v2

    .line 1731
    invoke-virtual {v0}, Lo/n$2;->onRelationshipValidationResult()Lo/OfferJsonAdapter;

    move-result-object v0

    .line 1729
    invoke-virtual {p1, v2, v0}, Lo/GoogleReferrer;->onMessageChannelReady(Lo/JuspaySessionToken;Lo/OfferJsonAdapter;)Lo/GoogleReferrer;

    move-result-object p1

    iput-object p1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    .line 1732
    invoke-direct {p0, v1, v4}, Lo/ProxyEvent;->onMessageChannelReady([ZI)V

    :cond_6
    :goto_2
    return-void
.end method

.method private onMessageChannelReady(ZZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 813
    iget-boolean p1, p0, Lo/ProxyEvent;->cancelAll:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-direct {p0, p1, v1, p2, p2}, Lo/ProxyEvent;->onNavigationEvent(ZZZZ)V

    .line 818
    iget-object p1, p0, Lo/ProxyEvent;->ICustomTabsCallback$Stub$Proxy:Lo/ProxyEvent$ICustomTabsCallback;

    iget p2, p0, Lo/ProxyEvent;->notify:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lo/ProxyEvent$ICustomTabsCallback;->onNavigationEvent(I)V

    .line 820
    iput v0, p0, Lo/ProxyEvent;->notify:I

    .line 821
    iget-object p1, p0, Lo/ProxyEvent;->extraCallback:Lo/Validate;

    invoke-interface {p1}, Lo/Validate;->ICustomTabsCallback()V

    .line 822
    invoke-direct {p0, v1}, Lo/ProxyEvent;->extraCallback(I)V

    return-void
.end method

.method private onMessageChannelReady([ZI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1737
    new-array p2, p2, [Lo/HuaweiReferrer;

    iput-object p2, p0, Lo/ProxyEvent;->ICustomTabsService$Stub$Proxy:[Lo/HuaweiReferrer;

    .line 1739
    iget-object p2, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {p2}, Lo/onSensorChanged;->onNavigationEvent()Lo/n$2;

    move-result-object p2

    invoke-virtual {p2}, Lo/n$2;->onRelationshipValidationResult()Lo/OfferJsonAdapter;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1742
    :goto_0
    iget-object v2, p0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1743
    invoke-virtual {p2, v1}, Lo/OfferJsonAdapter;->onNavigationEvent(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1744
    iget-object v2, p0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lo/HuaweiReferrer;->newSession()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1748
    :goto_1
    iget-object v2, p0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1749
    invoke-virtual {p2, v0}, Lo/OfferJsonAdapter;->onNavigationEvent(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1750
    aget-boolean v2, p1, v0

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lo/ProxyEvent;->onPostMessage(IZI)V

    move v1, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    .line 711
    invoke-virtual {v0}, Lo/onSensorChanged;->onNavigationEvent()Lo/n$2;

    move-result-object v0

    iget-object v1, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v1}, Lo/onSensorChanged;->onMessageChannelReady()Lo/n$2;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 710
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lo/ProxyEvent;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JZ)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 717
    invoke-direct {p0}, Lo/ProxyEvent;->ICustomTabsCallback()V

    const/4 v0, 0x0

    .line 718
    iput-boolean v0, p0, Lo/ProxyEvent;->IPostMessageService:Z

    const/4 v1, 0x2

    .line 719
    invoke-direct {p0, v1}, Lo/ProxyEvent;->extraCallback(I)V

    .line 722
    iget-object v2, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v2}, Lo/onSensorChanged;->onNavigationEvent()Lo/n$2;

    move-result-object v2

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 725
    iget-object v4, v3, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-object v4, v4, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lo/n$2;->ICustomTabsCallback:Z

    if-eqz v4, :cond_0

    .line 726
    iget-object p1, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {p1, v3}, Lo/onSensorChanged;->onPostMessage(Lo/n$2;)Z

    goto :goto_1

    .line 729
    :cond_0
    iget-object v3, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v3}, Lo/onSensorChanged;->ICustomTabsCallback$Stub()Lo/n$2;

    move-result-object v3

    goto :goto_0

    :cond_1
    :goto_1
    const-wide/16 v4, 0x0

    if-nez p4, :cond_2

    if-ne v2, v3, :cond_2

    if-eqz v3, :cond_4

    .line 737
    invoke-virtual {v3, p2, p3}, Lo/n$2;->onMessageChannelReady(J)J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-gez p1, :cond_4

    .line 738
    :cond_2
    iget-object p1, p0, Lo/ProxyEvent;->ICustomTabsService$Stub$Proxy:[Lo/HuaweiReferrer;

    array-length p4, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p4, :cond_3

    aget-object v6, p1, v2

    .line 739
    invoke-direct {p0, v6}, Lo/ProxyEvent;->onMessageChannelReady(Lo/HuaweiReferrer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-array p1, v0, [Lo/HuaweiReferrer;

    .line 741
    iput-object p1, p0, Lo/ProxyEvent;->ICustomTabsService$Stub$Proxy:[Lo/HuaweiReferrer;

    const/4 v2, 0x0

    if-eqz v3, :cond_4

    .line 744
    invoke-virtual {v3, v4, v5}, Lo/n$2;->ICustomTabsCallback(J)V

    :cond_4
    if-eqz v3, :cond_6

    .line 750
    invoke-direct {p0, v2}, Lo/ProxyEvent;->onMessageChannelReady(Lo/n$2;)V

    .line 751
    iget-boolean p1, v3, Lo/n$2;->extraCallback:Z

    if-eqz p1, :cond_5

    .line 752
    iget-object p1, v3, Lo/n$2;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {p1, p2, p3}, Lo/PaymentModeAdapter;->onMessageChannelReady(J)J

    move-result-wide p1

    .line 753
    iget-object p3, v3, Lo/n$2;->onPostMessage:Lo/PaymentModeAdapter;

    iget-wide v2, p0, Lo/ProxyEvent;->warmup:J

    sub-long v2, p1, v2

    iget-boolean p4, p0, Lo/ProxyEvent;->ICustomTabsService:Z

    invoke-interface {p3, v2, v3, p4}, Lo/PaymentModeAdapter;->onNavigationEvent(JZ)V

    move-wide p2, p1

    .line 756
    :cond_5
    invoke-direct {p0, p2, p3}, Lo/ProxyEvent;->ICustomTabsCallback(J)V

    .line 757
    invoke-direct {p0}, Lo/ProxyEvent;->extraCommand()V

    goto :goto_3

    .line 759
    :cond_6
    iget-object p1, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Lo/onSensorChanged;->ICustomTabsCallback(Z)V

    .line 761
    iget-object p1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    sget-object p4, Lo/JuspaySessionToken;->onPostMessage:Lo/JuspaySessionToken;

    iget-object v2, p0, Lo/ProxyEvent;->onNavigationEvent:Lo/OfferJsonAdapter;

    .line 762
    invoke-virtual {p1, p4, v2}, Lo/GoogleReferrer;->onMessageChannelReady(Lo/JuspaySessionToken;Lo/OfferJsonAdapter;)Lo/GoogleReferrer;

    move-result-object p1

    iput-object p1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    .line 763
    invoke-direct {p0, p2, p3}, Lo/ProxyEvent;->ICustomTabsCallback(J)V

    .line 766
    :goto_3
    invoke-direct {p0, v0}, Lo/ProxyEvent;->ICustomTabsCallback$Stub(Z)V

    .line 767
    iget-object p1, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    invoke-interface {p1, v1}, Lo/EncoderDecoder$RDSException;->onNavigationEvent(I)Z

    return-wide p2
.end method

.method private onNavigationEvent(Lo/t;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/t;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1487
    iget-object v1, p0, Lo/ProxyEvent;->onRelationshipValidationResult:Lo/t$onMessageChannelReady;

    iget-object v2, p0, Lo/ProxyEvent;->getInterfaceDescriptor:Lo/t$onPostMessage;

    move-object v0, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lo/t;->ICustomTabsCallback(Lo/t$onMessageChannelReady;Lo/t$onPostMessage;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private onNavigationEvent(Ljava/lang/Object;Lo/t;Lo/t;)Ljava/lang/Object;
    .locals 9

    .line 1410
    invoke-virtual {p2, p1}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result p1

    .line 1412
    invoke-virtual {p2}, Lo/t;->onPostMessage()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p1

    const/4 p1, -0x1

    :goto_0
    if-ge v2, v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 1414
    iget-object v5, p0, Lo/ProxyEvent;->getInterfaceDescriptor:Lo/t$onPostMessage;

    iget-object v6, p0, Lo/ProxyEvent;->onRelationshipValidationResult:Lo/t$onMessageChannelReady;

    iget v7, p0, Lo/ProxyEvent;->cancel:I

    iget-boolean v8, p0, Lo/ProxyEvent;->IPostMessageService$Stub$Proxy:Z

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lo/t;->extraCallback(ILo/t$onPostMessage;Lo/t$onMessageChannelReady;IZ)I

    move-result v4

    if-eq v4, v1, :cond_0

    .line 1420
    invoke-virtual {p2, v4}, Lo/t;->ICustomTabsCallback(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1422
    :cond_1
    invoke-virtual {p3, p1}, Lo/t;->ICustomTabsCallback(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private onNavigationEvent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 502
    iput-boolean v0, p0, Lo/ProxyEvent;->IPostMessageService:Z

    .line 503
    iget-object v1, p0, Lo/ProxyEvent;->newSession:Lo/$$a;

    invoke-virtual {v1}, Lo/$$a;->onNavigationEvent()V

    .line 504
    iget-object v1, p0, Lo/ProxyEvent;->ICustomTabsService$Stub$Proxy:[Lo/HuaweiReferrer;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 505
    invoke-interface {v3}, Lo/HuaweiReferrer;->ICustomTabsCallback()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onNavigationEvent(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1021
    iget-object v0, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-virtual {v0}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 1026
    :cond_0
    iget-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v0, v0, Lo/GoogleReferrer;->onPostMessage:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    .line 1030
    :cond_1
    iget-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    iget-object v1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v1, v1, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object v1, v1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    .line 1031
    invoke-virtual {v0, v1}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result v0

    .line 1032
    iget v1, p0, Lo/ProxyEvent;->setDefaultImpl:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v3, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    .line 1033
    invoke-virtual {v3, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ProxyEvent$onPostMessage;

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 1034
    iget v3, v1, Lo/ProxyEvent$onPostMessage;->onNavigationEvent:I

    if-gt v3, v0, :cond_3

    iget v3, v1, Lo/ProxyEvent$onPostMessage;->onNavigationEvent:I

    if-ne v3, v0, :cond_4

    iget-wide v3, v1, Lo/ProxyEvent$onPostMessage;->ICustomTabsCallback:J

    cmp-long v1, v3, p1

    if-lez v1, :cond_4

    .line 1038
    :cond_3
    iget v1, p0, Lo/ProxyEvent;->setDefaultImpl:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lo/ProxyEvent;->setDefaultImpl:I

    if-lez v1, :cond_2

    .line 1039
    iget-object v3, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    .line 1040
    invoke-virtual {v3, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ProxyEvent$onPostMessage;

    goto :goto_0

    .line 1042
    :cond_4
    iget v1, p0, Lo/ProxyEvent;->setDefaultImpl:I

    iget-object v3, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    .line 1043
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v1, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    iget v3, p0, Lo/ProxyEvent;->setDefaultImpl:I

    .line 1044
    invoke-virtual {v1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ProxyEvent$onPostMessage;

    goto :goto_1

    :cond_5
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_7

    .line 1046
    iget-object v3, v1, Lo/ProxyEvent$onPostMessage;->extraCallback:Ljava/lang/Object;

    if-eqz v3, :cond_7

    iget v3, v1, Lo/ProxyEvent$onPostMessage;->onNavigationEvent:I

    if-lt v3, v0, :cond_6

    iget v3, v1, Lo/ProxyEvent$onPostMessage;->onNavigationEvent:I

    if-ne v3, v0, :cond_7

    iget-wide v3, v1, Lo/ProxyEvent$onPostMessage;->ICustomTabsCallback:J

    cmp-long v5, v3, p1

    if-gtz v5, :cond_7

    .line 1051
    :cond_6
    iget v1, p0, Lo/ProxyEvent;->setDefaultImpl:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/ProxyEvent;->setDefaultImpl:I

    .line 1052
    iget-object v3, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    .line 1053
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v1, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    iget v3, p0, Lo/ProxyEvent;->setDefaultImpl:I

    .line 1054
    invoke-virtual {v1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ProxyEvent$onPostMessage;

    goto :goto_1

    :cond_7
    :goto_2
    if-eqz v1, :cond_d

    .line 1058
    iget-object v3, v1, Lo/ProxyEvent$onPostMessage;->extraCallback:Ljava/lang/Object;

    if-eqz v3, :cond_d

    iget v3, v1, Lo/ProxyEvent$onPostMessage;->onNavigationEvent:I

    if-ne v3, v0, :cond_d

    iget-wide v3, v1, Lo/ProxyEvent$onPostMessage;->ICustomTabsCallback:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_d

    iget-wide v3, v1, Lo/ProxyEvent$onPostMessage;->ICustomTabsCallback:J

    cmp-long v5, v3, p3

    if-gtz v5, :cond_d

    .line 1064
    :try_start_0
    iget-object v3, v1, Lo/ProxyEvent$onPostMessage;->onPostMessage:Lo/GoogleReferrer$1;

    invoke-direct {p0, v3}, Lo/ProxyEvent;->onPostMessage(Lo/GoogleReferrer$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    iget-object v3, v1, Lo/ProxyEvent$onPostMessage;->onPostMessage:Lo/GoogleReferrer$1;

    invoke-virtual {v3}, Lo/GoogleReferrer$1;->onRelationshipValidationResult()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v1, v1, Lo/ProxyEvent$onPostMessage;->onPostMessage:Lo/GoogleReferrer$1;

    invoke-virtual {v1}, Lo/GoogleReferrer$1;->asBinder()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    .line 1069
    :cond_8
    iget v1, p0, Lo/ProxyEvent;->setDefaultImpl:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/ProxyEvent;->setDefaultImpl:I

    goto :goto_4

    .line 1067
    :cond_9
    :goto_3
    iget-object v1, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    iget v3, p0, Lo/ProxyEvent;->setDefaultImpl:I

    invoke-virtual {v1, v3}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    .line 1072
    :goto_4
    iget v1, p0, Lo/ProxyEvent;->setDefaultImpl:I

    iget-object v3, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    .line 1073
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    iget-object v1, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    iget v3, p0, Lo/ProxyEvent;->setDefaultImpl:I

    .line 1074
    invoke-virtual {v1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ProxyEvent$onPostMessage;

    goto :goto_2

    :cond_a
    move-object v1, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1066
    iget-object p2, v1, Lo/ProxyEvent$onPostMessage;->onPostMessage:Lo/GoogleReferrer$1;

    invoke-virtual {p2}, Lo/GoogleReferrer$1;->onRelationshipValidationResult()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, v1, Lo/ProxyEvent$onPostMessage;->onPostMessage:Lo/GoogleReferrer$1;

    invoke-virtual {p2}, Lo/GoogleReferrer$1;->asBinder()Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_5

    .line 1069
    :cond_b
    iget p2, p0, Lo/ProxyEvent;->setDefaultImpl:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lo/ProxyEvent;->setDefaultImpl:I

    goto :goto_6

    .line 1067
    :cond_c
    :goto_5
    iget-object p2, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    iget p3, p0, Lo/ProxyEvent;->setDefaultImpl:I

    invoke-virtual {p2, p3}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    .line 1071
    :goto_6
    throw p1

    :cond_d
    :goto_7
    return-void
.end method

.method private onNavigationEvent(Lo/GoogleReferrer$1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 924
    invoke-virtual {p1}, Lo/GoogleReferrer$1;->asInterface()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 926
    invoke-direct {p0, p1}, Lo/ProxyEvent;->onPostMessage(Lo/GoogleReferrer$1;)V

    return-void

    .line 927
    :cond_0
    iget-object v0, p0, Lo/ProxyEvent;->ICustomTabsService$Stub:Lo/InstrumentsCompleteJsonAdapter;

    if-eqz v0, :cond_3

    iget v0, p0, Lo/ProxyEvent;->notify:I

    if-lez v0, :cond_1

    goto :goto_0

    .line 931
    :cond_1
    new-instance v0, Lo/ProxyEvent$onPostMessage;

    invoke-direct {v0, p1}, Lo/ProxyEvent$onPostMessage;-><init>(Lo/GoogleReferrer$1;)V

    .line 932
    invoke-direct {p0, v0}, Lo/ProxyEvent;->onPostMessage(Lo/ProxyEvent$onPostMessage;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 933
    iget-object p1, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 935
    iget-object p1, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 937
    invoke-virtual {p1, v0}, Lo/GoogleReferrer$1;->extraCallback(Z)V

    return-void

    .line 929
    :cond_3
    :goto_0
    iget-object v0, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    new-instance v1, Lo/ProxyEvent$onPostMessage;

    invoke-direct {v1, p1}, Lo/ProxyEvent$onPostMessage;-><init>(Lo/GoogleReferrer$1;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private onNavigationEvent(Lo/HuaweiReferrer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1080
    invoke-interface {p1}, Lo/HuaweiReferrer;->q_()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1081
    invoke-interface {p1}, Lo/HuaweiReferrer;->ICustomTabsService()V

    :cond_0
    return-void
.end method

.method private onNavigationEvent(Lo/PaymentModeAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1647
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0, p1}, Lo/onSensorChanged;->onPostMessage(Lo/PaymentModeAdapter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1651
    :cond_0
    iget-object p1, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {p1}, Lo/onSensorChanged;->ICustomTabsCallback()Lo/n$2;

    move-result-object p1

    .line 1652
    iget-object v0, p0, Lo/ProxyEvent;->newSession:Lo/$$a;

    .line 1653
    invoke-virtual {v0}, Lo/$$a;->onPostMessage()Lo/r;

    move-result-object v0

    iget v0, v0, Lo/r;->ICustomTabsCallback:F

    iget-object v1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v1, v1, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    .line 1652
    invoke-virtual {p1, v0, v1}, Lo/n$2;->onPostMessage(FLo/t;)V

    .line 1655
    invoke-virtual {p1}, Lo/n$2;->asInterface()Lo/JuspaySessionToken;

    move-result-object v0

    invoke-virtual {p1}, Lo/n$2;->onRelationshipValidationResult()Lo/OfferJsonAdapter;

    move-result-object p1

    .line 1654
    invoke-direct {p0, v0, p1}, Lo/ProxyEvent;->ICustomTabsCallback(Lo/JuspaySessionToken;Lo/OfferJsonAdapter;)V

    .line 1656
    iget-object p1, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {p1}, Lo/onSensorChanged;->asInterface()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1658
    iget-object p1, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {p1}, Lo/onSensorChanged;->ICustomTabsCallback$Stub()Lo/n$2;

    move-result-object p1

    .line 1659
    iget-object p1, p1, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-wide v0, p1, Lo/p;->onNavigationEvent:J

    invoke-direct {p0, v0, v1}, Lo/ProxyEvent;->ICustomTabsCallback(J)V

    const/4 p1, 0x0

    .line 1660
    invoke-direct {p0, p1}, Lo/ProxyEvent;->onMessageChannelReady(Lo/n$2;)V

    .line 1662
    :cond_1
    invoke-direct {p0}, Lo/ProxyEvent;->extraCommand()V

    return-void
.end method

.method private onNavigationEvent(Lo/ProxyEvent$extraCallback;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 636
    iget-object v2, v1, Lo/ProxyEvent;->ICustomTabsCallback$Stub$Proxy:Lo/ProxyEvent$ICustomTabsCallback;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lo/ProxyEvent$ICustomTabsCallback;->onNavigationEvent(I)V

    .line 643
    invoke-direct {v1, v0, v3}, Lo/ProxyEvent;->extraCallback(Lo/ProxyEvent$extraCallback;Z)Landroid/util/Pair;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    if-nez v2, :cond_0

    .line 647
    iget-object v2, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-boolean v9, v1, Lo/ProxyEvent;->IPostMessageService$Stub$Proxy:Z

    iget-object v10, v1, Lo/ProxyEvent;->onRelationshipValidationResult:Lo/t$onMessageChannelReady;

    invoke-virtual {v2, v9, v10}, Lo/GoogleReferrer;->extraCallback(ZLo/t$onMessageChannelReady;)Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-result-object v2

    move-object v15, v2

    move-wide v12, v6

    move-wide/from16 v18, v12

    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    .line 653
    :cond_0
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 654
    iget-object v10, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 655
    iget-object v12, v1, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v12, v9, v10, v11}, Lo/onSensorChanged;->onNavigationEvent(Ljava/lang/Object;J)Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-result-object v9

    .line 656
    invoke-virtual {v9}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v12

    if-eqz v12, :cond_1

    move-wide v12, v4

    move-object v15, v9

    move-wide/from16 v18, v10

    goto :goto_0

    .line 660
    :cond_1
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    .line 661
    iget-wide v14, v0, Lo/ProxyEvent$extraCallback;->onMessageChannelReady:J

    cmp-long v2, v14, v6

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move-object v15, v9

    move-wide/from16 v18, v10

    :goto_2
    const/4 v9, 0x2

    .line 666
    :try_start_0
    iget-object v10, v1, Lo/ProxyEvent;->ICustomTabsService$Stub:Lo/InstrumentsCompleteJsonAdapter;

    if-eqz v10, :cond_a

    iget v10, v1, Lo/ProxyEvent;->notify:I

    if-lez v10, :cond_3

    goto :goto_5

    :cond_3
    cmp-long v0, v12, v6

    if-nez v0, :cond_4

    const/4 v0, 0x4

    .line 671
    invoke-direct {v1, v0}, Lo/ProxyEvent;->extraCallback(I)V

    .line 672
    invoke-direct {v1, v8, v8, v3, v8}, Lo/ProxyEvent;->onNavigationEvent(ZZZZ)V

    goto :goto_6

    .line 680
    :cond_4
    iget-object v0, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 681
    iget-object v0, v1, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->onNavigationEvent()Lo/n$2;

    move-result-object v0

    if-eqz v0, :cond_5

    cmp-long v6, v12, v4

    if-eqz v6, :cond_5

    .line 683
    iget-object v0, v0, Lo/n$2;->onPostMessage:Lo/PaymentModeAdapter;

    iget-object v4, v1, Lo/ProxyEvent;->extraCommand:Lo/t$d;

    .line 684
    invoke-interface {v0, v12, v13, v4}, Lo/PaymentModeAdapter;->ICustomTabsCallback(JLo/t$d;)J

    move-result-wide v4

    goto :goto_3

    :cond_5
    move-wide v4, v12

    .line 687
    :goto_3
    invoke-static {v4, v5}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide v6

    iget-object v0, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v10, v0, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    invoke-static {v10, v11}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide v10

    cmp-long v0, v6, v10

    if-nez v0, :cond_8

    .line 689
    iget-object v0, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v3, v0, Lo/GoogleReferrer;->getInterfaceDescriptor:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    iget-object v14, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    .line 700
    invoke-direct/range {p0 .. p0}, Lo/ProxyEvent;->mayLaunchUrl()J

    move-result-wide v20

    move-wide/from16 v16, v3

    .line 699
    invoke-virtual/range {v14 .. v21}, Lo/GoogleReferrer;->onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)Lo/GoogleReferrer;

    move-result-object v0

    iput-object v0, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    if-eqz v2, :cond_6

    .line 702
    iget-object v0, v1, Lo/ProxyEvent;->ICustomTabsCallback$Stub$Proxy:Lo/ProxyEvent$ICustomTabsCallback;

    invoke-virtual {v0, v9}, Lo/ProxyEvent$ICustomTabsCallback;->ICustomTabsCallback(I)V

    :cond_6
    return-void

    :cond_7
    move-wide v4, v12

    .line 693
    :cond_8
    :try_start_1
    invoke-direct {v1, v15, v4, v5}, Lo/ProxyEvent;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;J)J

    move-result-wide v4

    cmp-long v0, v12, v4

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    or-int/2addr v2, v3

    move-wide/from16 v16, v4

    goto :goto_7

    .line 668
    :cond_a
    :goto_5
    iput-object v0, v1, Lo/ProxyEvent;->INotificationSideChannel:Lo/ProxyEvent$extraCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    move-wide/from16 v16, v12

    .line 698
    :goto_7
    iget-object v14, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    .line 700
    invoke-direct/range {p0 .. p0}, Lo/ProxyEvent;->mayLaunchUrl()J

    move-result-wide v20

    .line 699
    invoke-virtual/range {v14 .. v21}, Lo/GoogleReferrer;->onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)Lo/GoogleReferrer;

    move-result-object v0

    iput-object v0, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    if-eqz v2, :cond_b

    .line 702
    iget-object v0, v1, Lo/ProxyEvent;->ICustomTabsCallback$Stub$Proxy:Lo/ProxyEvent$ICustomTabsCallback;

    invoke-virtual {v0, v9}, Lo/ProxyEvent$ICustomTabsCallback;->ICustomTabsCallback(I)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    .line 698
    iget-object v14, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    .line 700
    invoke-direct/range {p0 .. p0}, Lo/ProxyEvent;->mayLaunchUrl()J

    move-result-wide v20

    move-wide/from16 v16, v12

    .line 699
    invoke-virtual/range {v14 .. v21}, Lo/GoogleReferrer;->onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)Lo/GoogleReferrer;

    move-result-object v3

    iput-object v3, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    if-eqz v2, :cond_c

    .line 702
    iget-object v2, v1, Lo/ProxyEvent;->ICustomTabsCallback$Stub$Proxy:Lo/ProxyEvent$ICustomTabsCallback;

    invoke-virtual {v2, v9}, Lo/ProxyEvent$ICustomTabsCallback;->ICustomTabsCallback(I)V

    .line 704
    :cond_c
    throw v0
.end method

.method private onNavigationEvent(Z)V
    .locals 1

    .line 417
    iget-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-boolean v0, v0, Lo/GoogleReferrer;->asBinder:Z

    if-eq v0, p1, :cond_0

    .line 418
    iget-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    invoke-virtual {v0, p1}, Lo/GoogleReferrer;->extraCallback(Z)Lo/GoogleReferrer;

    move-result-object p1

    iput-object p1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    :cond_0
    return-void
.end method

.method private onNavigationEvent(ZZZZ)V
    .locals 23

    move-object/from16 v1, p0

    .line 845
    iget-object v0, v1, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lo/EncoderDecoder$RDSException;->ICustomTabsCallback(I)V

    const/4 v2, 0x0

    .line 846
    iput-boolean v2, v1, Lo/ProxyEvent;->IPostMessageService:Z

    .line 847
    iget-object v0, v1, Lo/ProxyEvent;->newSession:Lo/$$a;

    invoke-virtual {v0}, Lo/$$a;->ICustomTabsCallback()V

    const-wide/16 v3, 0x0

    .line 848
    iput-wide v3, v1, Lo/ProxyEvent;->INotificationSideChannel$Stub$Proxy:J

    .line 849
    iget-object v3, v1, Lo/ProxyEvent;->ICustomTabsService$Stub$Proxy:[Lo/HuaweiReferrer;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    const-string v6, "ExoPlayerImplInternal"

    if-ge v5, v4, :cond_0

    aget-object v0, v3, v5

    .line 851
    :try_start_0
    invoke-direct {v1, v0}, Lo/ProxyEvent;->onMessageChannelReady(Lo/HuaweiReferrer;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v7, "Disable failed."

    .line 854
    invoke-static {v6, v7, v0}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 858
    iget-object v3, v1, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_1

    aget-object v0, v3, v5

    .line 860
    :try_start_1
    invoke-interface {v0}, Lo/HuaweiReferrer;->newSession()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v7, v0

    const-string v0, "Reset failed."

    .line 863
    invoke-static {v6, v0, v7}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    new-array v0, v2, [Lo/HuaweiReferrer;

    .line 867
    iput-object v0, v1, Lo/ProxyEvent;->ICustomTabsService$Stub$Proxy:[Lo/HuaweiReferrer;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 870
    iput-object v0, v1, Lo/ProxyEvent;->INotificationSideChannel:Lo/ProxyEvent$extraCallback;

    goto :goto_5

    :cond_2
    if-eqz p4, :cond_4

    .line 875
    iget-object v3, v1, Lo/ProxyEvent;->INotificationSideChannel:Lo/ProxyEvent$extraCallback;

    if-nez v3, :cond_3

    iget-object v3, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v3, v3, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    invoke-virtual {v3}, Lo/t;->extraCallback()Z

    move-result v3

    if-nez v3, :cond_3

    .line 876
    iget-object v3, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v3, v3, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    iget-object v4, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v4, v4, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object v4, v4, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    iget-object v5, v1, Lo/ProxyEvent;->getInterfaceDescriptor:Lo/t$onPostMessage;

    invoke-virtual {v3, v4, v5}, Lo/t;->onPostMessage(Ljava/lang/Object;Lo/t$onPostMessage;)Lo/t$onPostMessage;

    .line 877
    iget-object v3, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v3, v3, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    iget-object v5, v1, Lo/ProxyEvent;->getInterfaceDescriptor:Lo/t$onPostMessage;

    invoke-virtual {v5}, Lo/t$onPostMessage;->onMessageChannelReady()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 878
    new-instance v5, Lo/ProxyEvent$extraCallback;

    sget-object v6, Lo/t;->extraCallback:Lo/t;

    iget-object v7, v1, Lo/ProxyEvent;->getInterfaceDescriptor:Lo/t$onPostMessage;

    iget v7, v7, Lo/t$onPostMessage;->onNavigationEvent:I

    invoke-direct {v5, v6, v7, v3, v4}, Lo/ProxyEvent$extraCallback;-><init>(Lo/t;IJ)V

    iput-object v5, v1, Lo/ProxyEvent;->INotificationSideChannel:Lo/ProxyEvent$extraCallback;

    :cond_3
    const/4 v3, 0x1

    goto :goto_6

    :cond_4
    :goto_5
    move/from16 v3, p3

    .line 883
    :goto_6
    iget-object v4, v1, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lo/onSensorChanged;->ICustomTabsCallback(Z)V

    .line 884
    invoke-direct {v1, v2}, Lo/ProxyEvent;->onNavigationEvent(Z)V

    if-eqz p4, :cond_6

    .line 886
    iget-object v4, v1, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    sget-object v5, Lo/t;->extraCallback:Lo/t;

    invoke-virtual {v4, v5}, Lo/onSensorChanged;->extraCallback(Lo/t;)V

    .line 887
    iget-object v4, v1, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/ProxyEvent$onPostMessage;

    .line 888
    iget-object v5, v5, Lo/ProxyEvent$onPostMessage;->onPostMessage:Lo/GoogleReferrer$1;

    invoke-virtual {v5, v2}, Lo/GoogleReferrer$1;->extraCallback(Z)V

    goto :goto_7

    .line 890
    :cond_5
    iget-object v4, v1, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->clear()V

    .line 891
    iput v2, v1, Lo/ProxyEvent;->setDefaultImpl:I

    :cond_6
    if-eqz v3, :cond_7

    .line 893
    iget-object v2, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-boolean v4, v1, Lo/ProxyEvent;->IPostMessageService$Stub$Proxy:Z

    iget-object v5, v1, Lo/ProxyEvent;->onRelationshipValidationResult:Lo/t$onMessageChannelReady;

    .line 895
    invoke-virtual {v2, v4, v5}, Lo/GoogleReferrer;->extraCallback(ZLo/t$onMessageChannelReady;)Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-result-object v2

    goto :goto_8

    :cond_7
    iget-object v2, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v2, v2, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    :goto_8
    move-object/from16 v16, v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_8

    move-wide/from16 v21, v4

    goto :goto_9

    .line 898
    :cond_8
    iget-object v2, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v6, v2, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    move-wide/from16 v21, v6

    :goto_9
    if-eqz v3, :cond_9

    move-wide v10, v4

    goto :goto_a

    .line 899
    :cond_9
    iget-object v2, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-wide v2, v2, Lo/GoogleReferrer;->onNavigationEvent:J

    move-wide v10, v2

    .line 900
    :goto_a
    new-instance v2, Lo/GoogleReferrer;

    if-eqz p4, :cond_a

    sget-object v3, Lo/t;->extraCallback:Lo/t;

    goto :goto_b

    :cond_a
    iget-object v3, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v3, v3, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    :goto_b
    move-object v5, v3

    if-eqz p4, :cond_b

    move-object v6, v0

    goto :goto_c

    :cond_b
    iget-object v3, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v3, v3, Lo/GoogleReferrer;->extraCallback:Ljava/lang/Object;

    move-object v6, v3

    :goto_c
    iget-object v3, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget v12, v3, Lo/GoogleReferrer;->onTransact:I

    const/4 v13, 0x0

    if-eqz p4, :cond_c

    sget-object v3, Lo/JuspaySessionToken;->onPostMessage:Lo/JuspaySessionToken;

    goto :goto_d

    :cond_c
    iget-object v3, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v3, v3, Lo/GoogleReferrer;->ICustomTabsCallback$Stub:Lo/JuspaySessionToken;

    :goto_d
    move-object v14, v3

    if-eqz p4, :cond_d

    iget-object v3, v1, Lo/ProxyEvent;->onNavigationEvent:Lo/OfferJsonAdapter;

    goto :goto_e

    :cond_d
    iget-object v3, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v3, v3, Lo/GoogleReferrer;->onRelationshipValidationResult:Lo/OfferJsonAdapter;

    :goto_e
    move-object v15, v3

    const-wide/16 v19, 0x0

    move-object v4, v2

    move-object/from16 v7, v16

    move-wide/from16 v8, v21

    move-wide/from16 v17, v21

    invoke-direct/range {v4 .. v22}, Lo/GoogleReferrer;-><init>(Lo/t;Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJIZLo/JuspaySessionToken;Lo/OfferJsonAdapter;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)V

    iput-object v2, v1, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    if-eqz p2, :cond_e

    .line 916
    iget-object v2, v1, Lo/ProxyEvent;->ICustomTabsService$Stub:Lo/InstrumentsCompleteJsonAdapter;

    if-eqz v2, :cond_e

    .line 917
    invoke-interface {v2, v1}, Lo/InstrumentsCompleteJsonAdapter;->ICustomTabsCallback(Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;)V

    .line 918
    iput-object v0, v1, Lo/ProxyEvent;->ICustomTabsService$Stub:Lo/InstrumentsCompleteJsonAdapter;

    :cond_e
    return-void
.end method

.method private onPostMessage(J)J
    .locals 5

    .line 1817
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->ICustomTabsCallback()Lo/n$2;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 1821
    :cond_0
    iget-wide v3, p0, Lo/ProxyEvent;->INotificationSideChannel$Stub$Proxy:J

    .line 1822
    invoke-virtual {v0, v3, v4}, Lo/n$2;->onNavigationEvent(J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    .line 1823
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private onPostMessage()V
    .locals 5

    .line 423
    iget-object v0, p0, Lo/ProxyEvent;->ICustomTabsCallback$Stub$Proxy:Lo/ProxyEvent$ICustomTabsCallback;

    iget-object v1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    invoke-virtual {v0, v1}, Lo/ProxyEvent$ICustomTabsCallback;->onPostMessage(Lo/GoogleReferrer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lo/ProxyEvent;->asInterface:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lo/ProxyEvent;->ICustomTabsCallback$Stub$Proxy:Lo/ProxyEvent$ICustomTabsCallback;

    .line 427
    invoke-static {v2}, Lo/ProxyEvent$ICustomTabsCallback;->ICustomTabsCallback(Lo/ProxyEvent$ICustomTabsCallback;)I

    move-result v2

    iget-object v3, p0, Lo/ProxyEvent;->ICustomTabsCallback$Stub$Proxy:Lo/ProxyEvent$ICustomTabsCallback;

    .line 428
    invoke-static {v3}, Lo/ProxyEvent$ICustomTabsCallback;->extraCallback(Lo/ProxyEvent$ICustomTabsCallback;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lo/ProxyEvent;->ICustomTabsCallback$Stub$Proxy:Lo/ProxyEvent$ICustomTabsCallback;

    .line 429
    invoke-static {v3}, Lo/ProxyEvent$ICustomTabsCallback;->onNavigationEvent(Lo/ProxyEvent$ICustomTabsCallback;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iget-object v4, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    .line 425
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 433
    iget-object v0, p0, Lo/ProxyEvent;->ICustomTabsCallback$Stub$Proxy:Lo/ProxyEvent$ICustomTabsCallback;

    iget-object v1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    invoke-virtual {v0, v1}, Lo/ProxyEvent$ICustomTabsCallback;->ICustomTabsCallback(Lo/GoogleReferrer;)V

    :cond_1
    return-void
.end method

.method private onPostMessage(IZI)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1758
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->onNavigationEvent()Lo/n$2;

    move-result-object v0

    .line 1759
    iget-object v1, p0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    aget-object v1, v1, p1

    .line 1760
    iget-object v2, p0, Lo/ProxyEvent;->ICustomTabsService$Stub$Proxy:[Lo/HuaweiReferrer;

    aput-object v1, v2, p3

    .line 1761
    invoke-interface {v1}, Lo/HuaweiReferrer;->q_()I

    move-result p3

    if-nez p3, :cond_2

    .line 1762
    invoke-virtual {v0}, Lo/n$2;->onRelationshipValidationResult()Lo/OfferJsonAdapter;

    move-result-object p3

    .line 1763
    iget-object v2, p3, Lo/OfferJsonAdapter;->onMessageChannelReady:[Lo/Payload;

    aget-object v3, v2, p1

    .line 1765
    iget-object p3, p3, Lo/OfferJsonAdapter;->extraCallback:Lo/InstrumentDataJsonAdapter;

    invoke-virtual {p3, p1}, Lo/InstrumentDataJsonAdapter;->onNavigationEvent(I)Lo/InstrumentView;

    move-result-object p3

    .line 1766
    invoke-static {p3}, Lo/ProxyEvent;->ICustomTabsCallback(Lo/InstrumentView;)[Lo/p$a;

    move-result-object v4

    .line 1768
    iget-boolean p3, p0, Lo/ProxyEvent;->IPostMessageService$Stub:Z

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget p3, p3, Lo/GoogleReferrer;->onTransact:I

    const/4 v6, 0x3

    if-ne p3, v6, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 1772
    :goto_1
    iget-object p2, v0, Lo/n$2;->onNavigationEvent:[Lo/CardInstrumentJsonAdapter;

    aget-object v5, p2, p1

    iget-wide v6, p0, Lo/ProxyEvent;->INotificationSideChannel$Stub$Proxy:J

    .line 1774
    invoke-virtual {v0}, Lo/n$2;->extraCallback()J

    move-result-wide v9

    move-object v2, v1

    .line 1772
    invoke-interface/range {v2 .. v10}, Lo/HuaweiReferrer;->ICustomTabsCallback(Lo/Payload;[Lo/p$a;Lo/CardInstrumentJsonAdapter;JZJ)V

    .line 1775
    iget-object p1, p0, Lo/ProxyEvent;->newSession:Lo/$$a;

    invoke-virtual {p1, v1}, Lo/$$a;->onNavigationEvent(Lo/HuaweiReferrer;)V

    if-eqz p3, :cond_2

    .line 1778
    invoke-interface {v1}, Lo/HuaweiReferrer;->ICustomTabsCallback()V

    :cond_2
    return-void
.end method

.method private onPostMessage(Lo/GoogleReferrer$1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 943
    invoke-virtual {p1}, Lo/GoogleReferrer$1;->extraCallback()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    invoke-interface {v1}, Lo/EncoderDecoder$RDSException;->onPostMessage()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 944
    invoke-direct {p0, p1}, Lo/ProxyEvent;->ICustomTabsCallback$Stub(Lo/GoogleReferrer$1;)V

    .line 945
    iget-object p1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget p1, p1, Lo/GoogleReferrer;->onTransact:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget p1, p1, Lo/GoogleReferrer;->onTransact:I

    if-ne p1, v1, :cond_2

    .line 948
    :cond_0
    iget-object p1, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    invoke-interface {p1, v1}, Lo/EncoderDecoder$RDSException;->onNavigationEvent(I)Z

    return-void

    .line 951
    :cond_1
    iget-object v0, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    const/16 v1, 0x10

    invoke-interface {v0, v1, p1}, Lo/EncoderDecoder$RDSException;->onMessageChannelReady(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method private onPostMessage(Lo/ProxyEvent$onPostMessage;)Z
    .locals 6

    .line 992
    iget-object v0, p1, Lo/ProxyEvent$onPostMessage;->extraCallback:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 994
    new-instance v0, Lo/ProxyEvent$extraCallback;

    iget-object v2, p1, Lo/ProxyEvent$onPostMessage;->onPostMessage:Lo/GoogleReferrer$1;

    .line 997
    invoke-virtual {v2}, Lo/GoogleReferrer$1;->onNavigationEvent()Lo/t;

    move-result-object v2

    iget-object v3, p1, Lo/ProxyEvent$onPostMessage;->onPostMessage:Lo/GoogleReferrer$1;

    .line 998
    invoke-virtual {v3}, Lo/GoogleReferrer$1;->onTransact()I

    move-result v3

    iget-object v4, p1, Lo/ProxyEvent$onPostMessage;->onPostMessage:Lo/GoogleReferrer$1;

    .line 999
    invoke-virtual {v4}, Lo/GoogleReferrer$1;->asInterface()J

    move-result-wide v4

    invoke-static {v4, v5}, Lo/$$c;->ICustomTabsCallback(J)J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lo/ProxyEvent$extraCallback;-><init>(Lo/t;IJ)V

    .line 995
    invoke-direct {p0, v0, v1}, Lo/ProxyEvent;->extraCallback(Lo/ProxyEvent$extraCallback;Z)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 1004
    :cond_0
    iget-object v1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v1, v1, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1005
    invoke-virtual {v1, v2}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 1006
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1004
    invoke-virtual {p1, v1, v2, v3, v0}, Lo/ProxyEvent$onPostMessage;->onMessageChannelReady(IJLjava/lang/Object;)V

    goto :goto_0

    .line 1010
    :cond_1
    iget-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    iget-object v2, p1, Lo/ProxyEvent$onPostMessage;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return v1

    .line 1014
    :cond_2
    iput v0, p1, Lo/ProxyEvent$onPostMessage;->onNavigationEvent:I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private onRelationshipValidationResult()V
    .locals 2

    const/4 v0, 0x1

    .line 826
    invoke-direct {p0, v0, v0, v0, v0}, Lo/ProxyEvent;->onNavigationEvent(ZZZZ)V

    .line 831
    iget-object v1, p0, Lo/ProxyEvent;->extraCallback:Lo/Validate;

    invoke-interface {v1}, Lo/Validate;->onMessageChannelReady()V

    .line 832
    invoke-direct {p0, v0}, Lo/ProxyEvent;->extraCallback(I)V

    .line 833
    iget-object v1, p0, Lo/ProxyEvent;->ICustomTabsCallback$Stub:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 834
    monitor-enter p0

    .line 835
    :try_start_0
    iput-boolean v0, p0, Lo/ProxyEvent;->validateRelationship:Z

    .line 836
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 837
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onTransact()V
    .locals 3

    .line 980
    iget-object v0, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 981
    iget-object v1, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ProxyEvent$onPostMessage;

    invoke-direct {p0, v1}, Lo/ProxyEvent;->onPostMessage(Lo/ProxyEvent$onPostMessage;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 983
    iget-object v1, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ProxyEvent$onPostMessage;

    iget-object v1, v1, Lo/ProxyEvent$onPostMessage;->onPostMessage:Lo/GoogleReferrer$1;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/GoogleReferrer$1;->extraCallback(Z)V

    .line 984
    iget-object v1, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 988
    :cond_1
    iget-object v0, p0, Lo/ProxyEvent;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private onTransact(Z)Z
    .locals 6

    .line 1211
    iget-object v0, p0, Lo/ProxyEvent;->ICustomTabsService$Stub$Proxy:[Lo/HuaweiReferrer;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 1213
    invoke-direct {p0}, Lo/ProxyEvent;->ICustomTabsCallback$Stub$Proxy()Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1218
    :cond_1
    iget-object p1, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-boolean p1, p1, Lo/GoogleReferrer;->asBinder:Z

    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    .line 1224
    :cond_2
    iget-object p1, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {p1}, Lo/onSensorChanged;->ICustomTabsCallback()Lo/n$2;

    move-result-object p1

    .line 1225
    invoke-virtual {p1}, Lo/n$2;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p1, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-boolean p1, p1, Lo/p;->asBinder:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_5

    .line 1226
    iget-object p1, p0, Lo/ProxyEvent;->extraCallback:Lo/Validate;

    .line 1228
    invoke-direct {p0}, Lo/ProxyEvent;->mayLaunchUrl()J

    move-result-wide v2

    iget-object v4, p0, Lo/ProxyEvent;->newSession:Lo/$$a;

    invoke-virtual {v4}, Lo/$$a;->onPostMessage()Lo/r;

    move-result-object v4

    iget v4, v4, Lo/r;->ICustomTabsCallback:F

    iget-boolean v5, p0, Lo/ProxyEvent;->IPostMessageService:Z

    .line 1227
    invoke-interface {p1, v2, v3, v4, v5}, Lo/Validate;->onNavigationEvent(JFZ)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method private postMessage()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1491
    iget-object v0, p0, Lo/ProxyEvent;->ICustomTabsService$Stub:Lo/InstrumentsCompleteJsonAdapter;

    if-nez v0, :cond_0

    return-void

    .line 1495
    :cond_0
    iget v1, p0, Lo/ProxyEvent;->notify:I

    if-lez v1, :cond_1

    .line 1497
    invoke-interface {v0}, Lo/InstrumentsCompleteJsonAdapter;->ICustomTabsCallback()V

    return-void

    .line 1502
    :cond_1
    invoke-direct {p0}, Lo/ProxyEvent;->updateVisuals()V

    .line 1503
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->ICustomTabsCallback()Lo/n$2;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1504
    invoke-virtual {v0}, Lo/n$2;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1506
    :cond_2
    iget-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-boolean v0, v0, Lo/GoogleReferrer;->asBinder:Z

    if-nez v0, :cond_4

    .line 1507
    invoke-direct {p0}, Lo/ProxyEvent;->extraCommand()V

    goto :goto_1

    .line 1505
    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lo/ProxyEvent;->onNavigationEvent(Z)V

    .line 1510
    :cond_4
    :goto_1
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->asInterface()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 1516
    :cond_5
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->onNavigationEvent()Lo/n$2;

    move-result-object v0

    .line 1517
    iget-object v2, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v2}, Lo/onSensorChanged;->onMessageChannelReady()Lo/n$2;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1519
    :goto_2
    iget-boolean v5, p0, Lo/ProxyEvent;->IPostMessageService$Stub:Z

    if-eqz v5, :cond_8

    if-eq v0, v2, :cond_8

    iget-wide v5, p0, Lo/ProxyEvent;->INotificationSideChannel$Stub$Proxy:J

    .line 1521
    invoke-virtual {v0}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v7

    invoke-virtual {v7}, Lo/n$2;->onNavigationEvent()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-ltz v9, :cond_8

    if-eqz v4, :cond_6

    .line 1526
    invoke-direct {p0}, Lo/ProxyEvent;->onPostMessage()V

    .line 1528
    :cond_6
    iget-object v4, v0, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-boolean v4, v4, Lo/p;->onRelationshipValidationResult:Z

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    const/4 v4, 0x3

    .line 1533
    :goto_3
    iget-object v5, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v5}, Lo/onSensorChanged;->ICustomTabsCallback$Stub()Lo/n$2;

    move-result-object v5

    .line 1534
    invoke-direct {p0, v0}, Lo/ProxyEvent;->onMessageChannelReady(Lo/n$2;)V

    .line 1535
    iget-object v6, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    iget-object v0, v5, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-object v7, v0, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object v0, v5, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-wide v8, v0, Lo/p;->onNavigationEvent:J

    iget-object v0, v5, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-wide v10, v0, Lo/p;->onMessageChannelReady:J

    .line 1540
    invoke-direct {p0}, Lo/ProxyEvent;->mayLaunchUrl()J

    move-result-wide v12

    .line 1536
    invoke-virtual/range {v6 .. v13}, Lo/GoogleReferrer;->onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)Lo/GoogleReferrer;

    move-result-object v0

    iput-object v0, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    .line 1541
    iget-object v0, p0, Lo/ProxyEvent;->ICustomTabsCallback$Stub$Proxy:Lo/ProxyEvent$ICustomTabsCallback;

    invoke-virtual {v0, v4}, Lo/ProxyEvent$ICustomTabsCallback;->ICustomTabsCallback(I)V

    .line 1542
    invoke-direct {p0}, Lo/ProxyEvent;->asInterface()V

    move-object v0, v5

    const/4 v4, 0x1

    goto :goto_2

    .line 1546
    :cond_8
    iget-object v0, v2, Lo/n$2;->onRelationshipValidationResult:Lo/p;

    iget-boolean v0, v0, Lo/p;->asBinder:Z

    if-eqz v0, :cond_b

    .line 1547
    :goto_4
    iget-object v0, p0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    array-length v3, v0

    if-ge v1, v3, :cond_a

    .line 1548
    aget-object v0, v0, v1

    .line 1549
    iget-object v3, v2, Lo/n$2;->onNavigationEvent:[Lo/CardInstrumentJsonAdapter;

    aget-object v3, v3, v1

    if-eqz v3, :cond_9

    .line 1552
    invoke-interface {v0}, Lo/HuaweiReferrer;->ICustomTabsCallback$Stub()Lo/CardInstrumentJsonAdapter;

    move-result-object v4

    if-ne v4, v3, :cond_9

    .line 1553
    invoke-interface {v0}, Lo/HuaweiReferrer;->onTransact()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1554
    invoke-interface {v0}, Lo/HuaweiReferrer;->onRelationshipValidationResult()V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    return-void

    .line 1561
    :cond_b
    invoke-virtual {v2}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 1566
    :goto_5
    iget-object v4, p0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    array-length v5, v4

    if-ge v0, v5, :cond_f

    .line 1567
    aget-object v4, v4, v0

    .line 1568
    iget-object v5, v2, Lo/n$2;->onNavigationEvent:[Lo/CardInstrumentJsonAdapter;

    aget-object v5, v5, v0

    .line 1569
    invoke-interface {v4}, Lo/HuaweiReferrer;->ICustomTabsCallback$Stub()Lo/CardInstrumentJsonAdapter;

    move-result-object v6

    if-ne v6, v5, :cond_e

    if-eqz v5, :cond_d

    .line 1570
    invoke-interface {v4}, Lo/HuaweiReferrer;->onTransact()Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    return-void

    .line 1576
    :cond_f
    invoke-virtual {v2}, Lo/n$2;->onTransact()Lo/n$2;

    move-result-object v0

    iget-boolean v0, v0, Lo/n$2;->ICustomTabsCallback:Z

    if-nez v0, :cond_10

    .line 1578
    invoke-direct {p0}, Lo/ProxyEvent;->getInterfaceDescriptor()V

    return-void

    .line 1582
    :cond_10
    invoke-virtual {v2}, Lo/n$2;->onRelationshipValidationResult()Lo/OfferJsonAdapter;

    move-result-object v0

    .line 1583
    iget-object v2, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v2}, Lo/onSensorChanged;->onRelationshipValidationResult()Lo/n$2;

    move-result-object v2

    .line 1584
    invoke-virtual {v2}, Lo/n$2;->onRelationshipValidationResult()Lo/OfferJsonAdapter;

    move-result-object v4

    .line 1586
    iget-object v5, v2, Lo/n$2;->onPostMessage:Lo/PaymentModeAdapter;

    .line 1587
    invoke-interface {v5}, Lo/PaymentModeAdapter;->onMessageChannelReady()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-eqz v9, :cond_11

    const/4 v5, 0x1

    goto :goto_7

    :cond_11
    const/4 v5, 0x0

    :goto_7
    const/4 v6, 0x0

    .line 1588
    :goto_8
    iget-object v7, p0, Lo/ProxyEvent;->onMessageChannelReady:[Lo/HuaweiReferrer;

    array-length v8, v7

    if-ge v6, v8, :cond_15

    .line 1589
    aget-object v7, v7, v6

    .line 1590
    invoke-virtual {v0, v6}, Lo/OfferJsonAdapter;->onNavigationEvent(I)Z

    move-result v8

    if-eqz v8, :cond_14

    if-nez v5, :cond_13

    .line 1597
    invoke-interface {v7}, Lo/HuaweiReferrer;->asBinder()Z

    move-result v8

    if-nez v8, :cond_14

    .line 1598
    iget-object v8, v4, Lo/OfferJsonAdapter;->extraCallback:Lo/InstrumentDataJsonAdapter;

    invoke-virtual {v8, v6}, Lo/InstrumentDataJsonAdapter;->onNavigationEvent(I)Lo/InstrumentView;

    move-result-object v8

    .line 1599
    invoke-virtual {v4, v6}, Lo/OfferJsonAdapter;->onNavigationEvent(I)Z

    move-result v9

    .line 1600
    iget-object v10, p0, Lo/ProxyEvent;->onPostMessage:[Lo/MandatoryFields;

    aget-object v10, v10, v6

    invoke-interface {v10}, Lo/MandatoryFields;->extraCallback()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_12

    const/4 v10, 0x1

    goto :goto_9

    :cond_12
    const/4 v10, 0x0

    .line 1601
    :goto_9
    iget-object v11, v0, Lo/OfferJsonAdapter;->onMessageChannelReady:[Lo/Payload;

    aget-object v11, v11, v6

    .line 1602
    iget-object v12, v4, Lo/OfferJsonAdapter;->onMessageChannelReady:[Lo/Payload;

    aget-object v12, v12, v6

    if-eqz v9, :cond_13

    .line 1603
    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    if-nez v10, :cond_13

    .line 1610
    invoke-static {v8}, Lo/ProxyEvent;->ICustomTabsCallback(Lo/InstrumentView;)[Lo/p$a;

    move-result-object v8

    .line 1611
    iget-object v9, v2, Lo/n$2;->onNavigationEvent:[Lo/CardInstrumentJsonAdapter;

    aget-object v9, v9, v6

    .line 1612
    invoke-virtual {v2}, Lo/n$2;->extraCallback()J

    move-result-wide v10

    .line 1611
    invoke-interface {v7, v8, v9, v10, v11}, Lo/HuaweiReferrer;->onNavigationEvent([Lo/p$a;Lo/CardInstrumentJsonAdapter;J)V

    goto :goto_a

    .line 1619
    :cond_13
    invoke-interface {v7}, Lo/HuaweiReferrer;->onRelationshipValidationResult()V

    :cond_14
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_15
    return-void
.end method

.method private requestPostMessageChannel()V
    .locals 2

    const/4 v0, 0x4

    .line 1389
    invoke-direct {p0, v0}, Lo/ProxyEvent;->extraCallback(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1391
    invoke-direct {p0, v0, v0, v1, v0}, Lo/ProxyEvent;->onNavigationEvent(ZZZZ)V

    return-void
.end method

.method private updateVisuals()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1626
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    iget-wide v1, p0, Lo/ProxyEvent;->INotificationSideChannel$Stub$Proxy:J

    invoke-virtual {v0, v1, v2}, Lo/onSensorChanged;->onPostMessage(J)V

    .line 1627
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1628
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    iget-wide v1, p0, Lo/ProxyEvent;->INotificationSideChannel$Stub$Proxy:J

    iget-object v3, p0, Lo/ProxyEvent;->updateVisuals:Lo/GoogleReferrer;

    invoke-virtual {v0, v1, v2, v3}, Lo/onSensorChanged;->onNavigationEvent(JLo/GoogleReferrer;)Lo/p;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1630
    invoke-direct {p0}, Lo/ProxyEvent;->warmup()V

    return-void

    .line 1632
    :cond_0
    iget-object v4, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    iget-object v5, p0, Lo/ProxyEvent;->onPostMessage:[Lo/MandatoryFields;

    iget-object v6, p0, Lo/ProxyEvent;->ICustomTabsCallback:Lo/InstrumentViewMapping;

    iget-object v1, p0, Lo/ProxyEvent;->extraCallback:Lo/Validate;

    .line 1636
    invoke-interface {v1}, Lo/Validate;->onNavigationEvent()Lo/PaymentRequest;

    move-result-object v7

    iget-object v8, p0, Lo/ProxyEvent;->ICustomTabsService$Stub:Lo/InstrumentsCompleteJsonAdapter;

    move-object v9, v0

    .line 1633
    invoke-virtual/range {v4 .. v9}, Lo/onSensorChanged;->onNavigationEvent([Lo/MandatoryFields;Lo/InstrumentViewMapping;Lo/PaymentRequest;Lo/InstrumentsCompleteJsonAdapter;Lo/p;)Lo/PaymentModeAdapter;

    move-result-object v1

    .line 1639
    iget-wide v2, v0, Lo/p;->onNavigationEvent:J

    invoke-interface {v1, p0, v2, v3}, Lo/PaymentModeAdapter;->onNavigationEvent(Lo/PaymentModeAdapter$onNavigationEvent;J)V

    const/4 v0, 0x1

    .line 1640
    invoke-direct {p0, v0}, Lo/ProxyEvent;->onNavigationEvent(Z)V

    const/4 v0, 0x0

    .line 1641
    invoke-direct {p0, v0}, Lo/ProxyEvent;->ICustomTabsCallback$Stub(Z)V

    :cond_1
    return-void
.end method

.method private warmup()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1242
    iget-object v0, p0, Lo/ProxyEvent;->mayLaunchUrl:Lo/onSensorChanged;

    invoke-virtual {v0}, Lo/onSensorChanged;->ICustomTabsCallback()Lo/n$2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1245
    iget-object v0, p0, Lo/ProxyEvent;->ICustomTabsService$Stub$Proxy:[Lo/HuaweiReferrer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1246
    invoke-interface {v3}, Lo/HuaweiReferrer;->onTransact()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1251
    :cond_1
    iget-object v0, p0, Lo/ProxyEvent;->ICustomTabsService$Stub:Lo/InstrumentsCompleteJsonAdapter;

    invoke-interface {v0}, Lo/InstrumentsCompleteJsonAdapter;->ICustomTabsCallback()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Landroid/os/Looper;
    .locals 1

    .line 264
    iget-object v0, p0, Lo/ProxyEvent;->ICustomTabsCallback$Stub:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized extraCallback(Lo/GoogleReferrer$1;)V
    .locals 2

    monitor-enter p0

    .line 213
    :try_start_0
    iget-boolean v0, p0, Lo/ProxyEvent;->validateRelationship:Z

    if-eqz v0, :cond_0

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    .line 214
    invoke-static {v0, v1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p1, v0}, Lo/GoogleReferrer$1;->extraCallback(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 218
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Lo/EncoderDecoder$RDSException;->onMessageChannelReady(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final extraCallback(Lo/PaymentModeAdapter;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lo/EncoderDecoder$RDSException;->onMessageChannelReady(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    const-string v0, "ExoPlayerImplInternal"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 309
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    return v3

    .line 360
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/r;

    invoke-direct {p0, p1}, Lo/ProxyEvent;->ICustomTabsCallback(Lo/r;)V

    goto/16 :goto_6

    .line 366
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/GoogleReferrer$1;

    invoke-direct {p0, p1}, Lo/ProxyEvent;->ICustomTabsCallback(Lo/GoogleReferrer$1;)V

    goto/16 :goto_6

    .line 363
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/GoogleReferrer$1;

    invoke-direct {p0, p1}, Lo/ProxyEvent;->onNavigationEvent(Lo/GoogleReferrer$1;)V

    goto/16 :goto_6

    .line 338
    :pswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v4, p1}, Lo/ProxyEvent;->ICustomTabsCallback(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_6

    .line 323
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1}, Lo/ProxyEvent;->extraCallback(Z)V

    goto/16 :goto_6

    .line 320
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lo/ProxyEvent;->ICustomTabsCallback(I)V

    goto/16 :goto_6

    .line 357
    :pswitch_6
    invoke-direct {p0}, Lo/ProxyEvent;->asBinder()V

    goto/16 :goto_6

    .line 354
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/PaymentModeAdapter;

    invoke-direct {p0, p1}, Lo/ProxyEvent;->ICustomTabsCallback(Lo/PaymentModeAdapter;)V

    goto :goto_6

    .line 348
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/PaymentModeAdapter;

    invoke-direct {p0, p1}, Lo/ProxyEvent;->onNavigationEvent(Lo/PaymentModeAdapter;)V

    goto :goto_6

    .line 351
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/ProxyEvent$onMessageChannelReady;

    invoke-direct {p0, p1}, Lo/ProxyEvent;->ICustomTabsCallback(Lo/ProxyEvent$onMessageChannelReady;)V

    goto :goto_6

    .line 369
    :pswitch_a
    invoke-direct {p0}, Lo/ProxyEvent;->onRelationshipValidationResult()V

    return v2

    .line 342
    :pswitch_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, v3, p1, v2}, Lo/ProxyEvent;->onMessageChannelReady(ZZZ)V

    goto :goto_6

    .line 335
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/t$d;

    invoke-direct {p0, p1}, Lo/ProxyEvent;->extraCallback(Lo/t$d;)V

    goto :goto_6

    .line 332
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/r;

    invoke-direct {p0, p1}, Lo/ProxyEvent;->extraCallback(Lo/r;)V

    goto :goto_6

    .line 329
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/ProxyEvent$extraCallback;

    invoke-direct {p0, p1}, Lo/ProxyEvent;->onNavigationEvent(Lo/ProxyEvent$extraCallback;)V

    goto :goto_6

    .line 326
    :pswitch_f
    invoke-direct {p0}, Lo/ProxyEvent;->ICustomTabsCallback$Stub()V

    goto :goto_6

    .line 317
    :pswitch_10
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    invoke-direct {p0, p1}, Lo/ProxyEvent;->ICustomTabsCallback(Z)V

    goto :goto_6

    .line 311
    :pswitch_11
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lo/InstrumentsCompleteJsonAdapter;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    :goto_5
    invoke-direct {p0, v4, v5, p1}, Lo/ProxyEvent;->extraCallback(Lo/InstrumentsCompleteJsonAdapter;ZZ)V

    .line 375
    :goto_6
    invoke-direct {p0}, Lo/ProxyEvent;->onPostMessage()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception p1

    goto :goto_7

    :catch_1
    move-exception p1

    :goto_7
    const-string v4, "Internal runtime error."

    .line 393
    invoke-static {v0, v4, p1}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 394
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/OutOfMemoryError;

    .line 396
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->onMessageChannelReady(Ljava/lang/OutOfMemoryError;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    goto :goto_8

    :cond_6
    check-cast p1, Ljava/lang/RuntimeException;

    .line 397
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->extraCallback(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    .line 398
    :goto_8
    iget-object v0, p0, Lo/ProxyEvent;->asInterface:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 399
    invoke-direct {p0, v2, v3, v3}, Lo/ProxyEvent;->onMessageChannelReady(ZZZ)V

    .line 403
    invoke-direct {p0}, Lo/ProxyEvent;->onPostMessage()V

    goto :goto_9

    :catch_2
    move-exception p1

    const-string v4, "Source error."

    .line 385
    invoke-static {v0, v4, p1}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    iget-object v0, p0, Lo/ProxyEvent;->asInterface:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->onNavigationEvent(Ljava/io/IOException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 387
    invoke-direct {p0, v3, v3, v3}, Lo/ProxyEvent;->onMessageChannelReady(ZZZ)V

    .line 391
    invoke-direct {p0}, Lo/ProxyEvent;->onPostMessage()V

    goto :goto_9

    :catch_3
    move-exception p1

    const-string v4, "Playback error."

    .line 377
    invoke-static {v0, v4, p1}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 378
    iget-object v0, p0, Lo/ProxyEvent;->asInterface:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 379
    invoke-direct {p0, v2, v3, v3}, Lo/ProxyEvent;->onMessageChannelReady(ZZZ)V

    .line 383
    invoke-direct {p0}, Lo/ProxyEvent;->onPostMessage()V

    :goto_9
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized onMessageChannelReady()V
    .locals 2

    monitor-enter p0

    .line 245
    :try_start_0
    iget-boolean v0, p0, Lo/ProxyEvent;->validateRelationship:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 246
    monitor-exit p0

    return-void

    .line 248
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lo/EncoderDecoder$RDSException;->onNavigationEvent(I)Z

    const/4 v0, 0x0

    .line 250
    :goto_0
    iget-boolean v1, p0, Lo/ProxyEvent;->validateRelationship:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 252
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 259
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 261
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic onMessageChannelReady(Lo/GoogleReferrer$1;)V
    .locals 2

    .line 960
    :try_start_0
    invoke-direct {p0, p1}, Lo/ProxyEvent;->ICustomTabsCallback$Stub(Lo/GoogleReferrer$1;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    .line 962
    invoke-static {v0, v1, p1}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 963
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    new-instance v1, Lo/ProxyEvent$onMessageChannelReady;

    invoke-direct {v1, p1, p2, p3}, Lo/ProxyEvent$onMessageChannelReady;-><init>(Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V

    const/16 p1, 0x8

    invoke-interface {v0, p1, v1}, Lo/EncoderDecoder$RDSException;->onMessageChannelReady(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 3

    .line 191
    iget-object v0, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-interface {v0, v2, p1, v1}, Lo/EncoderDecoder$RDSException;->ICustomTabsCallback(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 3

    .line 187
    iget-object v0, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lo/EncoderDecoder$RDSException;->ICustomTabsCallback(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final synthetic onNavigationEvent(Lo/CardBinResponseJsonAdapter;)V
    .locals 0

    .line 50
    check-cast p1, Lo/PaymentModeAdapter;

    invoke-virtual {p0, p1}, Lo/ProxyEvent;->onPostMessage(Lo/PaymentModeAdapter;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter;ZZ)V
    .locals 2

    .line 177
    iget-object v0, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    const/4 v1, 0x0

    .line 178
    invoke-interface {v0, v1, p2, p3, p1}, Lo/EncoderDecoder$RDSException;->onNavigationEvent(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onNavigationEvent(Lo/r;)V
    .locals 2

    .line 298
    iget-object v0, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    const/16 v1, 0x11

    .line 299
    invoke-interface {v0, v1, p1}, Lo/EncoderDecoder$RDSException;->onMessageChannelReady(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 300
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onPostMessage(Lo/PaymentModeAdapter;)V
    .locals 2

    .line 284
    iget-object v0, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1}, Lo/EncoderDecoder$RDSException;->onMessageChannelReady(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onPostMessage(Lo/t;IJ)V
    .locals 2

    .line 195
    iget-object v0, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    new-instance v1, Lo/ProxyEvent$extraCallback;

    invoke-direct {v1, p1, p2, p3, p4}, Lo/ProxyEvent$extraCallback;-><init>(Lo/t;IJ)V

    const/4 p1, 0x3

    invoke-interface {v0, p1, v1}, Lo/EncoderDecoder$RDSException;->onMessageChannelReady(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onPostMessage(Z)V
    .locals 3

    .line 183
    iget-object v0, p0, Lo/ProxyEvent;->asBinder:Lo/EncoderDecoder$RDSException;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, p1, v1}, Lo/EncoderDecoder$RDSException;->ICustomTabsCallback(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
