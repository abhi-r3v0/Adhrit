.class public final Lo/CreateSessionResponseJsonAdapter;
.super Lo/SimDetailJsonAdapter;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

.field private final extraCallback:Lo/CheckoutInstrument;

.field private final onMessageChannelReady:Lo/DreamAppGlideModule;

.field private final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/CheckoutSessionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/CtaActionJsonAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WebvttDecoder"

    .line 49
    invoke-direct {p0, v0}, Lo/SimDetailJsonAdapter;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v0, Lo/CtaActionJsonAdapter;

    invoke-direct {v0}, Lo/CtaActionJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/CreateSessionResponseJsonAdapter;->onPostMessage:Lo/CtaActionJsonAdapter;

    .line 51
    new-instance v0, Lo/DreamAppGlideModule;

    invoke-direct {v0}, Lo/DreamAppGlideModule;-><init>()V

    iput-object v0, p0, Lo/CreateSessionResponseJsonAdapter;->onMessageChannelReady:Lo/DreamAppGlideModule;

    .line 52
    new-instance v0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    invoke-direct {v0}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;-><init>()V

    iput-object v0, p0, Lo/CreateSessionResponseJsonAdapter;->ICustomTabsCallback:Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    .line 53
    new-instance v0, Lo/CheckoutInstrument;

    invoke-direct {v0}, Lo/CheckoutInstrument;-><init>()V

    iput-object v0, p0, Lo/CreateSessionResponseJsonAdapter;->extraCallback:Lo/CheckoutInstrument;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/CreateSessionResponseJsonAdapter;->onNavigationEvent:Ljava/util/List;

    return-void
.end method

.method private static ICustomTabsCallback(Lo/DreamAppGlideModule;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ne v2, v1, :cond_3

    .line 104
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v3

    .line 105
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsService$Stub()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v4, "STYLE"

    .line 108
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v4, "NOTE"

    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p0, v3}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return v2
.end method

.method private static onMessageChannelReady(Lo/DreamAppGlideModule;)V
    .locals 1

    .line 121
    :cond_0
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsService$Stub()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback([BIZ)Lo/CreateSessionResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 60
    iget-object p3, p0, Lo/CreateSessionResponseJsonAdapter;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-virtual {p3, p1, p2}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    .line 62
    iget-object p1, p0, Lo/CreateSessionResponseJsonAdapter;->ICustomTabsCallback:Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    invoke-virtual {p1}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onNavigationEvent()V

    .line 63
    iget-object p1, p0, Lo/CreateSessionResponseJsonAdapter;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 67
    :try_start_0
    iget-object p1, p0, Lo/CreateSessionResponseJsonAdapter;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-static {p1}, Lo/CtaAction;->ICustomTabsCallback(Lo/DreamAppGlideModule;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    iget-object p1, p0, Lo/CreateSessionResponseJsonAdapter;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-virtual {p1}, Lo/DreamAppGlideModule;->ICustomTabsService$Stub()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    :cond_1
    :goto_0
    iget-object p2, p0, Lo/CreateSessionResponseJsonAdapter;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-static {p2}, Lo/CreateSessionResponseJsonAdapter;->ICustomTabsCallback(Lo/DreamAppGlideModule;)I

    move-result p2

    if-eqz p2, :cond_5

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    .line 77
    iget-object p2, p0, Lo/CreateSessionResponseJsonAdapter;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-static {p2}, Lo/CreateSessionResponseJsonAdapter;->onMessageChannelReady(Lo/DreamAppGlideModule;)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    .line 79
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 82
    iget-object p2, p0, Lo/CreateSessionResponseJsonAdapter;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-virtual {p2}, Lo/DreamAppGlideModule;->ICustomTabsService$Stub()Ljava/lang/String;

    .line 83
    iget-object p2, p0, Lo/CreateSessionResponseJsonAdapter;->onNavigationEvent:Ljava/util/List;

    iget-object p3, p0, Lo/CreateSessionResponseJsonAdapter;->extraCallback:Lo/CheckoutInstrument;

    iget-object v0, p0, Lo/CreateSessionResponseJsonAdapter;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-virtual {p3, v0}, Lo/CheckoutInstrument;->extraCallback(Lo/DreamAppGlideModule;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 80
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string p2, "A style block was found after the first cue."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    .line 85
    iget-object p2, p0, Lo/CreateSessionResponseJsonAdapter;->onPostMessage:Lo/CtaActionJsonAdapter;

    iget-object p3, p0, Lo/CreateSessionResponseJsonAdapter;->onMessageChannelReady:Lo/DreamAppGlideModule;

    iget-object v0, p0, Lo/CreateSessionResponseJsonAdapter;->ICustomTabsCallback:Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    iget-object v1, p0, Lo/CreateSessionResponseJsonAdapter;->onNavigationEvent:Ljava/util/List;

    invoke-virtual {p2, p3, v0, v1}, Lo/CtaActionJsonAdapter;->ICustomTabsCallback(Lo/DreamAppGlideModule;Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 86
    iget-object p2, p0, Lo/CreateSessionResponseJsonAdapter;->ICustomTabsCallback:Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    invoke-virtual {p2}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onPostMessage()Lo/CheckoutInstrumentJsonAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p2, p0, Lo/CreateSessionResponseJsonAdapter;->ICustomTabsCallback:Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    invoke-virtual {p2}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onNavigationEvent()V

    goto :goto_0

    .line 91
    :cond_5
    new-instance p2, Lo/CreateSessionResponse;

    invoke-direct {p2, p1}, Lo/CreateSessionResponse;-><init>(Ljava/util/List;)V

    return-object p2

    :catch_0
    move-exception p1

    .line 69
    new-instance p2, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public final synthetic onNavigationEvent([BIZ)Lo/Status;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lo/CreateSessionResponseJsonAdapter;->ICustomTabsCallback([BIZ)Lo/CreateSessionResponse;

    move-result-object p1

    return-object p1
.end method
