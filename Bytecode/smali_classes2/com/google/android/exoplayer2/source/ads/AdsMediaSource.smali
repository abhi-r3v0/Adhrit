.class public final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.super Lo/logDecode;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/logDecode<",
        "Lo/InstrumentsCompleteJsonAdapter$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;


# instance fields
.field private final ICustomTabsCallback:Lo/CredUpiInstrumentBankStatusJsonAdapter$onPostMessage;

.field private final ICustomTabsCallback$Stub:Landroid/os/Handler;

.field private ICustomTabsService:[[Lo/InstrumentsCompleteJsonAdapter;

.field private final asBinder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/InstrumentsCompleteJsonAdapter;",
            "Ljava/util/List<",
            "Lo/getDefaultOptions;",
            ">;>;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/t$onPostMessage;

.field private final extraCallback:Lo/CredUpiInstrumentBankStatusJsonAdapter;

.field private getInterfaceDescriptor:Ljava/lang/Object;

.field private newSession:[[Lo/t;

.field private final onMessageChannelReady:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$onPostMessage;

.field private final onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter;

.field private onRelationshipValidationResult:Lo/t;

.field private onTransact:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;

.field private warmup:Lo/CredUpiInstrumentBankStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 142
    new-instance v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lo/CredUpiInstrumentBankStatusJsonAdapter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->extraCallback:Lo/CredUpiInstrumentBankStatusJsonAdapter;

    return-object p0
.end method

.method private static ICustomTabsCallback([[Lo/t;Lo/t$onPostMessage;)[[J
    .locals 7

    .line 364
    array-length v0, p0

    new-array v0, v0, [[J

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 365
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 366
    aget-object v3, p0, v2

    array-length v3, v3

    new-array v3, v3, [J

    aput-object v3, v0, v2

    const/4 v3, 0x0

    .line 367
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 368
    aget-object v4, v0, v2

    aget-object v5, p0, v2

    aget-object v5, v5, v3

    if-nez v5, :cond_0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_0
    aget-object v5, p0, v2

    aget-object v5, v5, v3

    .line 371
    invoke-virtual {v5, v1, p1}, Lo/t;->ICustomTabsCallback(ILo/t$onPostMessage;)Lo/t$onPostMessage;

    move-result-object v5

    invoke-virtual {v5}, Lo/t$onPostMessage;->ICustomTabsCallback()J

    move-result-wide v5

    :goto_2
    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private extraCallback(Lo/InstrumentsCompleteJsonAdapter;IILo/t;)V
    .locals 4

    .line 337
    invoke-virtual {p4}, Lo/t;->onPostMessage()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 338
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->newSession:[[Lo/t;

    aget-object p2, v0, p2

    aput-object p4, p2, p3

    .line 339
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->asBinder:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 341
    invoke-virtual {p4, v1}, Lo/t;->ICustomTabsCallback(I)Ljava/lang/Object;

    move-result-object p2

    .line 342
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_1

    .line 343
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/getDefaultOptions;

    .line 344
    new-instance p4, Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object v0, p3, Lo/getDefaultOptions;->extraCallback:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v2, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    invoke-direct {p4, p2, v2, v3}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;-><init>(Ljava/lang/Object;J)V

    .line 346
    invoke-virtual {p3, p4}, Lo/getDefaultOptions;->ICustomTabsCallback(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 349
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onNavigationEvent()V

    return-void
.end method

.method private onNavigationEvent()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->warmup:Lo/CredUpiInstrumentBankStatus;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onRelationshipValidationResult:Lo/t;

    if-eqz v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->newSession:[[Lo/t;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->asInterface:Lo/t$onPostMessage;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->ICustomTabsCallback([[Lo/t;Lo/t$onPostMessage;)[[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CredUpiInstrumentBankStatus;->onNavigationEvent([[J)Lo/CredUpiInstrumentBankStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->warmup:Lo/CredUpiInstrumentBankStatus;

    .line 355
    iget v0, v0, Lo/CredUpiInstrumentBankStatus;->extraCallback:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onRelationshipValidationResult:Lo/t;

    goto :goto_0

    :cond_0
    new-instance v0, Lo/JuspaySessionToken$JuspayUpi;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onRelationshipValidationResult:Lo/t;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->warmup:Lo/CredUpiInstrumentBankStatus;

    invoke-direct {v0, v1, v2}, Lo/JuspaySessionToken$JuspayUpi;-><init>(Lo/t;Lo/CredUpiInstrumentBankStatus;)V

    .line 359
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->getInterfaceDescriptor:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->ICustomTabsCallback(Lo/t;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private onNavigationEvent(Lo/t;Ljava/lang/Object;)V
    .locals 2

    .line 329
    invoke-virtual {p1}, Lo/t;->onPostMessage()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 330
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onRelationshipValidationResult:Lo/t;

    .line 331
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->getInterfaceDescriptor:Ljava/lang/Object;

    .line 332
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onNavigationEvent()V

    return-void
.end method

.method static synthetic onPostMessage(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->ICustomTabsCallback$Stub:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic onPostMessage(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/Account$extraCallback;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lo/newIoExceptionForInBitmapAssertion;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/Account$extraCallback;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/PaymentModeAdapter;)V
    .locals 2

    .line 269
    check-cast p1, Lo/getDefaultOptions;

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->asBinder:Ljava/util/Map;

    iget-object v1, p1, Lo/getDefaultOptions;->ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter;

    .line 271
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 275
    :cond_0
    invoke-virtual {p1}, Lo/getDefaultOptions;->asInterface()V

    return-void
.end method

.method public final synthetic extraCallback(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->extraCallback:Lo/CredUpiInstrumentBankStatusJsonAdapter;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->ICustomTabsCallback:Lo/CredUpiInstrumentBankStatusJsonAdapter$onPostMessage;

    invoke-interface {v0, p1, v1}, Lo/CredUpiInstrumentBankStatusJsonAdapter;->onMessageChannelReady(Lo/CredUpiInstrumentBankStatusJsonAdapter$ICustomTabsCallback;Lo/CredUpiInstrumentBankStatusJsonAdapter$onPostMessage;)V

    return-void
.end method

.method public final extraCallback(Lo/InitPayloadJsonAdapter;)V
    .locals 2

    .line 216
    invoke-super {p0, p1}, Lo/logDecode;->extraCallback(Lo/InitPayloadJsonAdapter;)V

    .line 217
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V

    .line 218
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onTransact:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;

    .line 219
    sget-object v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onPostMessage(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->ICustomTabsCallback$Stub:Landroid/os/Handler;

    new-instance v1, Lo/component1;

    invoke-direct {v1, p0, p1}, Lo/component1;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 3

    .line 280
    invoke-super {p0}, Lo/logDecode;->onMessageChannelReady()V

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onTransact:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;->onMessageChannelReady()V

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onTransact:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;

    .line 283
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->asBinder:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 284
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onRelationshipValidationResult:Lo/t;

    .line 285
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->getInterfaceDescriptor:Ljava/lang/Object;

    .line 286
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->warmup:Lo/CredUpiInstrumentBankStatus;

    const/4 v0, 0x0

    new-array v1, v0, [[Lo/InstrumentsCompleteJsonAdapter;

    .line 287
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->ICustomTabsService:[[Lo/InstrumentsCompleteJsonAdapter;

    new-array v0, v0, [[Lo/t;

    .line 288
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->newSession:[[Lo/t;

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->ICustomTabsCallback$Stub:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->extraCallback:Lo/CredUpiInstrumentBankStatusJsonAdapter;

    new-instance v2, Lo/copy$default;

    invoke-direct {v2, v1}, Lo/copy$default;-><init>(Lo/CredUpiInstrumentBankStatusJsonAdapter;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final bridge synthetic onMessageChannelReady(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V

    return-void
.end method

.method protected final onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V
    .locals 1

    .line 298
    invoke-virtual {p1}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget p4, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback:I

    .line 300
    iget p1, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onNavigationEvent:I

    .line 301
    invoke-direct {p0, p2, p4, p1, p3}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->extraCallback(Lo/InstrumentsCompleteJsonAdapter;IILo/t;)V

    return-void

    .line 303
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onNavigationEvent(Lo/t;Ljava/lang/Object;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/PaymentRequest;J)Lo/PaymentModeAdapter;
    .locals 11

    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->warmup:Lo/CredUpiInstrumentBankStatus;

    iget v0, v0, Lo/CredUpiInstrumentBankStatus;->extraCallback:I

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    iget v0, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback:I

    .line 227
    iget v1, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onNavigationEvent:I

    .line 228
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->warmup:Lo/CredUpiInstrumentBankStatus;

    iget-object v2, v2, Lo/CredUpiInstrumentBankStatus;->onPostMessage:[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    aget-object v2, v2, v0

    iget-object v2, v2, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onMessageChannelReady:[Landroid/net/Uri;

    aget-object v2, v2, v1

    .line 229
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->ICustomTabsService:[[Lo/InstrumentsCompleteJsonAdapter;

    aget-object v3, v3, v0

    array-length v3, v3

    if-gt v3, v1, :cond_1

    .line 230
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onMessageChannelReady:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$onPostMessage;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$onPostMessage;->onMessageChannelReady(Landroid/net/Uri;)Lo/InstrumentsCompleteJsonAdapter;

    move-result-object v3

    .line 231
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->ICustomTabsService:[[Lo/InstrumentsCompleteJsonAdapter;

    aget-object v5, v4, v0

    array-length v5, v5

    if-lt v1, v5, :cond_0

    add-int/lit8 v5, v1, 0x1

    .line 234
    aget-object v6, v4, v0

    .line 235
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lo/InstrumentsCompleteJsonAdapter;

    aput-object v6, v4, v0

    .line 236
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->newSession:[[Lo/t;

    aget-object v6, v4, v0

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lo/t;

    aput-object v5, v4, v0

    .line 238
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->ICustomTabsService:[[Lo/InstrumentsCompleteJsonAdapter;

    aget-object v4, v4, v0

    aput-object v3, v4, v1

    .line 239
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->asBinder:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onPostMessage(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter;)V

    .line 242
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->ICustomTabsService:[[Lo/InstrumentsCompleteJsonAdapter;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    .line 243
    new-instance v10, Lo/getDefaultOptions;

    move-object v4, v10

    move-object v5, v3

    move-object v6, p1

    move-object v7, p2

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Lo/getDefaultOptions;-><init>(Lo/InstrumentsCompleteJsonAdapter;Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/PaymentRequest;J)V

    .line 245
    new-instance p2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;

    invoke-direct {p2, p0, v2, v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Landroid/net/Uri;II)V

    invoke-virtual {v10, p2}, Lo/getDefaultOptions;->onMessageChannelReady(Lo/getDefaultOptions$ICustomTabsCallback;)V

    .line 247
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->asBinder:Ljava/util/Map;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_2

    .line 249
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->newSession:[[Lo/t;

    aget-object p2, p2, v0

    aget-object p2, p2, v1

    const/4 p3, 0x0

    .line 250
    invoke-virtual {p2, p3}, Lo/t;->ICustomTabsCallback(I)Ljava/lang/Object;

    move-result-object p2

    .line 251
    new-instance p3, Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v0, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onMessageChannelReady:J

    invoke-direct {p3, p2, v0, v1}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;-><init>(Ljava/lang/Object;J)V

    .line 252
    invoke-virtual {v10, p3}, Lo/getDefaultOptions;->ICustomTabsCallback(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)V

    goto :goto_0

    .line 256
    :cond_2
    invoke-interface {p2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v10

    .line 260
    :cond_3
    new-instance v0, Lo/getDefaultOptions;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter;

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lo/getDefaultOptions;-><init>(Lo/InstrumentsCompleteJsonAdapter;Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/PaymentRequest;J)V

    .line 262
    invoke-virtual {v0, p1}, Lo/getDefaultOptions;->ICustomTabsCallback(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)V

    return-object v0
.end method

.method public final bridge synthetic onPostMessage(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/InstrumentsCompleteJsonAdapter$extraCallback;
    .locals 0

    .line 55
    check-cast p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onPostMessage(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-result-object p1

    return-object p1
.end method

.method protected final onPostMessage(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/InstrumentsCompleteJsonAdapter$extraCallback;
    .locals 1

    .line 312
    invoke-virtual {p1}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method
