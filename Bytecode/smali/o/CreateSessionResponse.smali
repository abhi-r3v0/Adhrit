.class final Lo/CreateSessionResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Status;


# instance fields
.field private final ICustomTabsCallback:I

.field private final onMessageChannelReady:[J

.field private final onNavigationEvent:[J

.field private final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/CheckoutInstrumentJsonAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/CheckoutInstrumentJsonAdapter;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lo/CreateSessionResponse;->onPostMessage:Ljava/util/List;

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lo/CreateSessionResponse;->ICustomTabsCallback:I

    mul-int/lit8 v0, v0, 0x2

    .line 45
    new-array v0, v0, [J

    iput-object v0, p0, Lo/CreateSessionResponse;->onNavigationEvent:[J

    const/4 v0, 0x0

    .line 46
    :goto_0
    iget v1, p0, Lo/CreateSessionResponse;->ICustomTabsCallback:I

    if-ge v0, v1, :cond_0

    .line 47
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CheckoutInstrumentJsonAdapter;

    shl-int/lit8 v2, v0, 0x1

    .line 49
    iget-object v3, p0, Lo/CreateSessionResponse;->onNavigationEvent:[J

    iget-wide v4, v1, Lo/CheckoutInstrumentJsonAdapter;->extraCommand:J

    aput-wide v4, v3, v2

    .line 50
    iget-object v3, p0, Lo/CreateSessionResponse;->onNavigationEvent:[J

    add-int/lit8 v2, v2, 0x1

    iget-wide v4, v1, Lo/CheckoutInstrumentJsonAdapter;->updateVisuals:J

    aput-wide v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lo/CreateSessionResponse;->onNavigationEvent:[J

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lo/CreateSessionResponse;->onMessageChannelReady:[J

    .line 53
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 64
    iget-object v0, p0, Lo/CreateSessionResponse;->onMessageChannelReady:[J

    array-length v0, v0

    return v0
.end method

.method public final ICustomTabsCallback(I)J
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 69
    :goto_0
    invoke-static {v2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 70
    iget-object v2, p0, Lo/CreateSessionResponse;->onMessageChannelReady:[J

    array-length v2, v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 71
    iget-object v0, p0, Lo/CreateSessionResponse;->onMessageChannelReady:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final onMessageChannelReady(J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v1, v0

    move-object v2, v1

    const/4 v3, 0x0

    .line 80
    :goto_0
    iget v4, p0, Lo/CreateSessionResponse;->ICustomTabsCallback:I

    if-ge v3, v4, :cond_5

    .line 81
    iget-object v4, p0, Lo/CreateSessionResponse;->onNavigationEvent:[J

    shl-int/lit8 v5, v3, 0x1

    aget-wide v6, v4, v5

    cmp-long v8, v6, p1

    if-gtz v8, :cond_4

    add-int/lit8 v5, v5, 0x1

    aget-wide v5, v4, v5

    cmp-long v4, p1, v5

    if-gez v4, :cond_4

    if-nez v2, :cond_0

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    :cond_0
    iget-object v4, p0, Lo/CreateSessionResponse;->onPostMessage:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/CheckoutInstrumentJsonAdapter;

    .line 86
    invoke-virtual {v4}, Lo/CheckoutInstrumentJsonAdapter;->onNavigationEvent()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v1, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    const-string v5, "\n"

    if-nez v0, :cond_2

    .line 93
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 94
    iget-object v6, v1, Lo/SimResponseJsonAdapter;->extraCallback:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    iget-object v4, v4, Lo/SimResponseJsonAdapter;->extraCallback:Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    iget-object v4, v4, Lo/SimResponseJsonAdapter;->extraCallback:Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 105
    new-instance p1, Lo/CheckoutInstrumentJsonAdapter;

    invoke-direct {p1, v0}, Lo/CheckoutInstrumentJsonAdapter;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 108
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    return-object v2

    .line 114
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(J)I
    .locals 2

    .line 58
    iget-object v0, p0, Lo/CreateSessionResponse;->onMessageChannelReady:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent([JJZZ)I

    move-result p1

    .line 59
    iget-object p2, p0, Lo/CreateSessionResponse;->onMessageChannelReady:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
