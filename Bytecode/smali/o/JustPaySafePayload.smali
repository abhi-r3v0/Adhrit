.class public final Lo/JustPaySafePayload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ResultJsonAdapter$onNavigationEvent;


# instance fields
.field private final ICustomTabsCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final asInterface:Lo/EligibilityPayload$Card$extraCallback;

.field private final extraCallback:I

.field private final onMessageChannelReady:Lo/PaymentSliderJsonAdapter$onNavigationEvent;

.field private final onNavigationEvent:Lo/ResultJsonAdapter$onNavigationEvent;

.field private final onPostMessage:Lo/ResultJsonAdapter$onNavigationEvent;

.field private final onTransact:Lo/InstrumentAttributeUpdateRequest;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/ResultJsonAdapter$onNavigationEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lo/JustPaySafePayload;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/ResultJsonAdapter$onNavigationEvent;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/ResultJsonAdapter$onNavigationEvent;I)V
    .locals 7

    .line 49
    new-instance v3, Lo/SuggestedPiJsonAdapter;

    invoke-direct {v3}, Lo/SuggestedPiJsonAdapter;-><init>()V

    new-instance v4, Lo/InitPayload;

    const-wide/32 v0, 0x500000

    invoke-direct {v4, p1, v0, v1}, Lo/InitPayload;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lo/JustPaySafePayload;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/ResultJsonAdapter$onNavigationEvent;Lo/ResultJsonAdapter$onNavigationEvent;Lo/PaymentSliderJsonAdapter$onNavigationEvent;ILo/EligibilityPayload$Card$extraCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/ResultJsonAdapter$onNavigationEvent;Lo/ResultJsonAdapter$onNavigationEvent;Lo/PaymentSliderJsonAdapter$onNavigationEvent;ILo/EligibilityPayload$Card$extraCallback;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 69
    invoke-direct/range {v0 .. v7}, Lo/JustPaySafePayload;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/ResultJsonAdapter$onNavigationEvent;Lo/ResultJsonAdapter$onNavigationEvent;Lo/PaymentSliderJsonAdapter$onNavigationEvent;ILo/EligibilityPayload$Card$extraCallback;Lo/InstrumentAttributeUpdateRequest;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/ResultJsonAdapter$onNavigationEvent;Lo/ResultJsonAdapter$onNavigationEvent;Lo/PaymentSliderJsonAdapter$onNavigationEvent;ILo/EligibilityPayload$Card$extraCallback;Lo/InstrumentAttributeUpdateRequest;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lo/JustPaySafePayload;->ICustomTabsCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 92
    iput-object p2, p0, Lo/JustPaySafePayload;->onPostMessage:Lo/ResultJsonAdapter$onNavigationEvent;

    .line 93
    iput-object p3, p0, Lo/JustPaySafePayload;->onNavigationEvent:Lo/ResultJsonAdapter$onNavigationEvent;

    .line 94
    iput-object p4, p0, Lo/JustPaySafePayload;->onMessageChannelReady:Lo/PaymentSliderJsonAdapter$onNavigationEvent;

    .line 95
    iput p5, p0, Lo/JustPaySafePayload;->extraCallback:I

    .line 96
    iput-object p6, p0, Lo/JustPaySafePayload;->asInterface:Lo/EligibilityPayload$Card$extraCallback;

    .line 97
    iput-object p7, p0, Lo/JustPaySafePayload;->onTransact:Lo/InstrumentAttributeUpdateRequest;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Lo/ResultJsonAdapter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lo/JustPaySafePayload;->onNavigationEvent()Lo/EligibilityPayload$Card;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent()Lo/EligibilityPayload$Card;
    .locals 9

    .line 102
    new-instance v8, Lo/EligibilityPayload$Card;

    iget-object v1, p0, Lo/JustPaySafePayload;->ICustomTabsCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v0, p0, Lo/JustPaySafePayload;->onPostMessage:Lo/ResultJsonAdapter$onNavigationEvent;

    .line 104
    invoke-interface {v0}, Lo/ResultJsonAdapter$onNavigationEvent;->ICustomTabsCallback()Lo/ResultJsonAdapter;

    move-result-object v2

    iget-object v0, p0, Lo/JustPaySafePayload;->onNavigationEvent:Lo/ResultJsonAdapter$onNavigationEvent;

    .line 105
    invoke-interface {v0}, Lo/ResultJsonAdapter$onNavigationEvent;->ICustomTabsCallback()Lo/ResultJsonAdapter;

    move-result-object v3

    iget-object v0, p0, Lo/JustPaySafePayload;->onMessageChannelReady:Lo/PaymentSliderJsonAdapter$onNavigationEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {v0}, Lo/PaymentSliderJsonAdapter$onNavigationEvent;->ICustomTabsCallback()Lo/PaymentSliderJsonAdapter;

    move-result-object v0

    :goto_0
    move-object v4, v0

    iget v5, p0, Lo/JustPaySafePayload;->extraCallback:I

    iget-object v6, p0, Lo/JustPaySafePayload;->asInterface:Lo/EligibilityPayload$Card$extraCallback;

    iget-object v7, p0, Lo/JustPaySafePayload;->onTransact:Lo/InstrumentAttributeUpdateRequest;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/EligibilityPayload$Card;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/ResultJsonAdapter;Lo/ResultJsonAdapter;Lo/PaymentSliderJsonAdapter;ILo/EligibilityPayload$Card$extraCallback;Lo/InstrumentAttributeUpdateRequest;)V

    return-object v8
.end method
