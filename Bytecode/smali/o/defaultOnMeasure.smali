.class public Lo/defaultOnMeasure;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/defaultOnMeasure$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u0019*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\u0019B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u001b\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\n\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000c0\u000bj\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000c`\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\u0008\u0012\u0004\u0012\u00028\u0000`\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/util/SkelatalExoPlayerPool;",
        "T",
        "",
        "context",
        "Landroid/content/Context;",
        "limit",
        "",
        "handleAudioFocus",
        "",
        "(Landroid/content/Context;IZ)V",
        "map",
        "Ljava/util/HashMap;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/util/ExoPlayerWrapper;",
        "Lkotlin/collections/HashMap;",
        "queue",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "pull",
        "id",
        "url",
        "",
        "(Ljava/lang/Object;Ljava/lang/String;)Lcom/dreamplug/fabrik/ui/lifestyle/util/ExoPlayerWrapper;",
        "trim",
        "",
        "itemsRemaining",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static ICustomTabsCallback$Stub:Lo/defaultOnMeasure$extraCallback;

.field private static final asBinder:Lo/isSameListener;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lo/SearchView$OnSuggestionListener$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Landroid/content/Context;

.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/defaultOnMeasure$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/defaultOnMeasure$extraCallback;-><init>(B)V

    sput-object v0, Lo/defaultOnMeasure;->ICustomTabsCallback$Stub:Lo/defaultOnMeasure$extraCallback;

    .line 88
    sget-object v0, Lo/defaultOnMeasure$ICustomTabsCallback;->onPostMessage:Lo/defaultOnMeasure$ICustomTabsCallback;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 88
    sput-object v1, Lo/defaultOnMeasure;->asBinder:Lo/isSameListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lo/defaultOnMeasure;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/defaultOnMeasure;->extraCallback:Landroid/content/Context;

    iput p2, p0, Lo/defaultOnMeasure;->onPostMessage:I

    iput-boolean p3, p0, Lo/defaultOnMeasure;->onMessageChannelReady:Z

    .line 28
    new-instance p1, Ljava/util/HashMap;

    iget p2, p0, Lo/defaultOnMeasure;->onPostMessage:I

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lo/defaultOnMeasure;->ICustomTabsCallback:Ljava/util/HashMap;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    iget p2, p0, Lo/defaultOnMeasure;->onPostMessage:I

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/defaultOnMeasure;->onNavigationEvent:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/String;)Lo/SearchView$OnSuggestionListener$onMessageChannelReady;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")",
            "Lo/SearchView$OnSuggestionListener$onMessageChannelReady;"
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lo/defaultOnMeasure;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SearchView$OnSuggestionListener$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 34
    iget-object p2, p0, Lo/defaultOnMeasure;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 35
    iget-object p2, p0, Lo/defaultOnMeasure;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 42
    :cond_0
    new-instance v0, Lo/JustPaySafePayload;

    .line 2026
    sget-object v1, Lo/defaultOnMeasure;->asBinder:Lo/isSameListener;

    .line 2000
    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;

    .line 42
    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/Cache;

    new-instance v2, Lo/VerifyPaymentResponse;

    iget-object v3, p0, Lo/defaultOnMeasure;->extraCallback:Landroid/content/Context;

    const-string v4, "com.dreamplug.androidapp"

    invoke-direct {v2, v3, v4}, Lo/VerifyPaymentResponse;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    check-cast v2, Lo/ResultJsonAdapter$onNavigationEvent;

    invoke-direct {v0, v1, v2}, Lo/JustPaySafePayload;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/ResultJsonAdapter$onNavigationEvent;)V

    .line 44
    new-instance v1, Lo/g$d;

    iget-object v2, p0, Lo/defaultOnMeasure;->extraCallback:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/g$d;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v2, Lo/Header;

    invoke-direct {v2}, Lo/Header;-><init>()V

    .line 47
    new-instance v3, Lo/g$b$onNavigationEvent;

    invoke-direct {v3}, Lo/g$b$onNavigationEvent;-><init>()V

    const/16 v4, 0x3a98

    const/16 v5, 0x1388

    .line 48
    invoke-virtual {v3, v5, v4, v5, v5}, Lo/g$b$onNavigationEvent;->onPostMessage(IIII)Lo/g$b$onNavigationEvent;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lo/g$b$onNavigationEvent;->onNavigationEvent()Lo/g$b;

    move-result-object v3

    .line 51
    iget-object v4, p0, Lo/defaultOnMeasure;->extraCallback:Landroid/content/Context;

    check-cast v1, Lo/s;

    check-cast v2, Lo/InstrumentViewMapping;

    check-cast v3, Lo/Validate;

    invoke-static {v4, v1, v2, v3}, Lo/AFInstantApps;->onMessageChannelReady(Landroid/content/Context;Lo/s;Lo/InstrumentViewMapping;Lo/Validate;)Lo/s$d;

    move-result-object v1

    .line 53
    new-instance v2, Lo/SearchView$OnSuggestionListener$onMessageChannelReady;

    const-string v3, "player"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Lo/SearchView$OnSuggestionListener$onMessageChannelReady;-><init>(Lo/s$d;)V

    .line 55
    new-instance v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    check-cast v0, Lo/ResultJsonAdapter$onNavigationEvent;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lo/ResultJsonAdapter$onNavigationEvent;)V

    const/4 v0, 0x1

    .line 56
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->extraCallback(Z)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object v1

    .line 57
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p2

    .line 58
    new-instance v1, Lo/InstrumentsComplete;

    check-cast p2, Lo/InstrumentsCompleteJsonAdapter;

    invoke-direct {v1, p2}, Lo/InstrumentsComplete;-><init>(Lo/InstrumentsCompleteJsonAdapter;)V

    .line 59
    new-instance p2, Lo/u$b$onMessageChannelReady;

    invoke-direct {p2}, Lo/u$b$onMessageChannelReady;-><init>()V

    .line 60
    invoke-virtual {p2, v0}, Lo/u$b$onMessageChannelReady;->extraCallback(I)Lo/u$b$onMessageChannelReady;

    move-result-object p2

    const/4 v0, 0x3

    .line 61
    invoke-virtual {p2, v0}, Lo/u$b$onMessageChannelReady;->onMessageChannelReady(I)Lo/u$b$onMessageChannelReady;

    move-result-object p2

    .line 62
    invoke-virtual {p2}, Lo/u$b$onMessageChannelReady;->ICustomTabsCallback()Lo/u$b;

    move-result-object p2

    .line 2102
    iget-object v0, v2, Lo/SearchView$OnSuggestionListener$onMessageChannelReady;->onMessageChannelReady:Lo/s$d;

    .line 63
    iget-boolean v3, p0, Lo/defaultOnMeasure;->onMessageChannelReady:Z

    invoke-virtual {v0, p2, v3}, Lo/s$d;->onPostMessage(Lo/u$b;Z)V

    .line 3102
    iget-object p2, v2, Lo/SearchView$OnSuggestionListener$onMessageChannelReady;->onMessageChannelReady:Lo/s$d;

    .line 64
    check-cast v1, Lo/InstrumentsCompleteJsonAdapter;

    invoke-virtual {p2, v1}, Lo/s$d;->onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter;)V

    .line 65
    iget-object p2, p0, Lo/defaultOnMeasure;->ICustomTabsCallback:Ljava/util/HashMap;

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object p2, p0, Lo/defaultOnMeasure;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object p1, p0, Lo/defaultOnMeasure;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    iget p2, p0, Lo/defaultOnMeasure;->onPostMessage:I

    if-le p1, p2, :cond_2

    .line 68
    iget-object p1, p0, Lo/defaultOnMeasure;->onNavigationEvent:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lo/defaultOnMeasure;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SearchView$OnSuggestionListener$onMessageChannelReady;

    if-eqz v0, :cond_1

    .line 4102
    iget-object v0, v0, Lo/SearchView$OnSuggestionListener$onMessageChannelReady;->onMessageChannelReady:Lo/s$d;

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Lo/s$d;->mayLaunchUrl()V

    .line 70
    :cond_1
    iget-object v0, p0, Lo/defaultOnMeasure;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lo/defaultOnMeasure;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    :cond_2
    return-object v2
.end method

.method public final onMessageChannelReady(I)V
    .locals 5

    .line 78
    iget-object v0, p0, Lo/defaultOnMeasure;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 79
    iget-object v1, p0, Lo/defaultOnMeasure;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 80
    iget-object v3, p0, Lo/defaultOnMeasure;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 81
    iget-object v4, p0, Lo/defaultOnMeasure;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/SearchView$OnSuggestionListener$onMessageChannelReady;

    if-eqz v4, :cond_0

    .line 5102
    iget-object v4, v4, Lo/SearchView$OnSuggestionListener$onMessageChannelReady;->onMessageChannelReady:Lo/s$d;

    if-eqz v4, :cond_0

    .line 81
    invoke-virtual {v4}, Lo/s$d;->mayLaunchUrl()V

    .line 82
    :cond_0
    iget-object v4, p0, Lo/defaultOnMeasure;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_1
    iget-object v1, p0, Lo/defaultOnMeasure;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
