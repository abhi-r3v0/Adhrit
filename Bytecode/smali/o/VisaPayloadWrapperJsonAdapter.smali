.class public final Lo/VisaPayloadWrapperJsonAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InstrumentAttribute;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/InstrumentAttribute;",
        "Ljava/util/Comparator<",
        "Lo/JustPaySafePayloadJsonAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:J

.field private final onMessageChannelReady:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lo/JustPaySafePayloadJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lo/VisaPayloadWrapperJsonAdapter;->onPostMessage:J

    .line 35
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lo/VisaPayloadWrapperJsonAdapter;->onMessageChannelReady:Ljava/util/TreeSet;

    return-void
.end method

.method private extraCallback(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V
    .locals 5

    .line 85
    :goto_0
    iget-wide v0, p0, Lo/VisaPayloadWrapperJsonAdapter;->ICustomTabsCallback:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Lo/VisaPayloadWrapperJsonAdapter;->onPostMessage:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lo/VisaPayloadWrapperJsonAdapter;->onMessageChannelReady:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    :try_start_0
    iget-object v0, p0, Lo/VisaPayloadWrapperJsonAdapter;->onMessageChannelReady:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/JustPaySafePayloadJsonAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->onNavigationEvent(Lo/JustPaySafePayloadJsonAdapter;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/JustPaySafePayloadJsonAdapter;Lo/JustPaySafePayloadJsonAdapter;)V
    .locals 0

    .line 70
    invoke-virtual {p0, p1, p2}, Lo/VisaPayloadWrapperJsonAdapter;->onNavigationEvent(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/JustPaySafePayloadJsonAdapter;)V

    .line 71
    invoke-virtual {p0, p1, p3}, Lo/VisaPayloadWrapperJsonAdapter;->extraCallback(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/JustPaySafePayloadJsonAdapter;)V

    return-void
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lo/JustPaySafePayloadJsonAdapter;

    check-cast p2, Lo/JustPaySafePayloadJsonAdapter;

    invoke-virtual {p0, p1, p2}, Lo/VisaPayloadWrapperJsonAdapter;->onMessageChannelReady(Lo/JustPaySafePayloadJsonAdapter;Lo/JustPaySafePayloadJsonAdapter;)I

    move-result p1

    return p1
.end method

.method public final extraCallback(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/JustPaySafePayloadJsonAdapter;)V
    .locals 4

    .line 57
    iget-object v0, p0, Lo/VisaPayloadWrapperJsonAdapter;->onMessageChannelReady:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 58
    iget-wide v0, p0, Lo/VisaPayloadWrapperJsonAdapter;->ICustomTabsCallback:J

    iget-wide v2, p2, Lo/JustPaySafePayloadJsonAdapter;->onNavigationEvent:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/VisaPayloadWrapperJsonAdapter;->ICustomTabsCallback:J

    const-wide/16 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0, v1}, Lo/VisaPayloadWrapperJsonAdapter;->extraCallback(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/JustPaySafePayloadJsonAdapter;Lo/JustPaySafePayloadJsonAdapter;)I
    .locals 5

    .line 76
    iget-wide v0, p1, Lo/JustPaySafePayloadJsonAdapter;->onTransact:J

    iget-wide v2, p2, Lo/JustPaySafePayloadJsonAdapter;->onTransact:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 79
    invoke-virtual {p1, p2}, Lo/JustPaySafePayloadJsonAdapter;->onNavigationEvent(Lo/JustPaySafePayloadJsonAdapter;)I

    move-result p1

    return p1

    .line 81
    :cond_0
    iget-wide v0, p1, Lo/JustPaySafePayloadJsonAdapter;->onTransact:J

    iget-wide p1, p2, Lo/JustPaySafePayloadJsonAdapter;->onTransact:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final onNavigationEvent()V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/JustPaySafePayloadJsonAdapter;)V
    .locals 2

    .line 64
    iget-object p1, p0, Lo/VisaPayloadWrapperJsonAdapter;->onMessageChannelReady:Ljava/util/TreeSet;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 65
    iget-wide v0, p0, Lo/VisaPayloadWrapperJsonAdapter;->ICustomTabsCallback:J

    iget-wide p1, p2, Lo/JustPaySafePayloadJsonAdapter;->onNavigationEvent:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lo/VisaPayloadWrapperJsonAdapter;->ICustomTabsCallback:J

    return-void
.end method

.method public final onPostMessage(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V
    .locals 0

    const-wide/16 p2, -0x1

    cmp-long p4, p5, p2

    if-eqz p4, :cond_0

    .line 51
    invoke-direct {p0, p1, p5, p6}, Lo/VisaPayloadWrapperJsonAdapter;->extraCallback(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    :cond_0
    return-void
.end method

.method public final onPostMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
