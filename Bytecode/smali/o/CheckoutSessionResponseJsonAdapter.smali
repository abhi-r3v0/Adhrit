.class public final Lo/CheckoutSessionResponseJsonAdapter;
.super Lo/SimDetailJsonAdapter;
.source ""


# static fields
.field private static final extraCallback:I

.field private static final onMessageChannelReady:I

.field private static final onPostMessage:I


# instance fields
.field private final ICustomTabsCallback:Lo/DreamAppGlideModule;

.field private final onNavigationEvent:Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "payl"

    .line 34
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/CheckoutSessionResponseJsonAdapter;->extraCallback:I

    const-string/jumbo v0, "sttg"

    .line 35
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/CheckoutSessionResponseJsonAdapter;->onMessageChannelReady:I

    const-string/jumbo v0, "vttc"

    .line 36
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/CheckoutSessionResponseJsonAdapter;->onPostMessage:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "Mp4WebvttDecoder"

    .line 42
    invoke-direct {p0, v0}, Lo/SimDetailJsonAdapter;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lo/DreamAppGlideModule;

    invoke-direct {v0}, Lo/DreamAppGlideModule;-><init>()V

    iput-object v0, p0, Lo/CheckoutSessionResponseJsonAdapter;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    .line 44
    new-instance v0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    invoke-direct {v0}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;-><init>()V

    iput-object v0, p0, Lo/CheckoutSessionResponseJsonAdapter;->onNavigationEvent:Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    return-void
.end method

.method private static extraCallback(Lo/DreamAppGlideModule;Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;I)Lo/SimResponseJsonAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onNavigationEvent()V

    :cond_0
    :goto_0
    if-lez p2, :cond_3

    const/16 v0, 0x8

    if-lt p2, v0, :cond_2

    .line 77
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    .line 78
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v2

    add-int/lit8 p2, p2, -0x8

    sub-int/2addr v1, v0

    .line 81
    iget-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 82
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v3

    invoke-static {v0, v3, v1}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage([BII)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p0, v1}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    sub-int/2addr p2, v1

    .line 85
    sget v1, Lo/CheckoutSessionResponseJsonAdapter;->onMessageChannelReady:I

    if-ne v2, v1, :cond_1

    .line 86
    invoke-static {v0, p1}, Lo/CtaActionJsonAdapter;->extraCallback(Ljava/lang/String;Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;)V

    goto :goto_0

    .line 87
    :cond_1
    sget v1, Lo/CheckoutSessionResponseJsonAdapter;->extraCallback:I

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, p1, v2}, Lo/CtaActionJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;Ljava/util/List;)V

    goto :goto_0

    .line 75
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string p1, "Incomplete vtt cue box header found."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_3
    invoke-virtual {p1}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onPostMessage()Lo/CheckoutInstrumentJsonAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected final onMessageChannelReady([BIZ)Lo/CardDetailsJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 52
    iget-object p3, p0, Lo/CheckoutSessionResponseJsonAdapter;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {p3, p1, p2}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    :goto_0
    iget-object p2, p0, Lo/CheckoutSessionResponseJsonAdapter;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {p2}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result p2

    if-lez p2, :cond_2

    .line 55
    iget-object p2, p0, Lo/CheckoutSessionResponseJsonAdapter;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {p2}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result p2

    const/16 p3, 0x8

    if-lt p2, p3, :cond_1

    .line 58
    iget-object p2, p0, Lo/CheckoutSessionResponseJsonAdapter;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {p2}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result p2

    .line 59
    iget-object p3, p0, Lo/CheckoutSessionResponseJsonAdapter;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {p3}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result p3

    .line 60
    sget v0, Lo/CheckoutSessionResponseJsonAdapter;->onPostMessage:I

    if-ne p3, v0, :cond_0

    .line 61
    iget-object p3, p0, Lo/CheckoutSessionResponseJsonAdapter;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    iget-object v0, p0, Lo/CheckoutSessionResponseJsonAdapter;->onNavigationEvent:Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    add-int/lit8 p2, p2, -0x8

    invoke-static {p3, v0, p2}, Lo/CheckoutSessionResponseJsonAdapter;->extraCallback(Lo/DreamAppGlideModule;Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;I)Lo/SimResponseJsonAdapter;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_0
    iget-object p3, p0, Lo/CheckoutSessionResponseJsonAdapter;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    add-int/lit8 p2, p2, -0x8

    invoke-virtual {p3, p2}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    goto :goto_0

    .line 56
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string p2, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_2
    new-instance p2, Lo/CardDetailsJsonAdapter;

    invoke-direct {p2, p1}, Lo/CardDetailsJsonAdapter;-><init>(Ljava/util/List;)V

    return-object p2
.end method

.method public final synthetic onNavigationEvent([BIZ)Lo/Status;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lo/CheckoutSessionResponseJsonAdapter;->onMessageChannelReady([BIZ)Lo/CardDetailsJsonAdapter;

    move-result-object p1

    return-object p1
.end method
