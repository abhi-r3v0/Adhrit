.class public final Lo/OfferJsonAdapter;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final extraCallback:Lo/InstrumentDataJsonAdapter;

.field public final onMessageChannelReady:[Lo/Payload;

.field public final onNavigationEvent:Ljava/lang/Object;

.field public final onPostMessage:I


# direct methods
.method public constructor <init>([Lo/Payload;[Lo/InstrumentView;Ljava/lang/Object;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lo/OfferJsonAdapter;->onMessageChannelReady:[Lo/Payload;

    .line 57
    new-instance v0, Lo/InstrumentDataJsonAdapter;

    invoke-direct {v0, p2}, Lo/InstrumentDataJsonAdapter;-><init>([Lo/InstrumentView;)V

    iput-object v0, p0, Lo/OfferJsonAdapter;->extraCallback:Lo/InstrumentDataJsonAdapter;

    .line 58
    iput-object p3, p0, Lo/OfferJsonAdapter;->onNavigationEvent:Ljava/lang/Object;

    .line 59
    array-length p1, p1

    iput p1, p0, Lo/OfferJsonAdapter;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(I)Z
    .locals 1

    .line 64
    iget-object v0, p0, Lo/OfferJsonAdapter;->onMessageChannelReady:[Lo/Payload;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onNavigationEvent(Lo/OfferJsonAdapter;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 101
    :cond_0
    iget-object v1, p0, Lo/OfferJsonAdapter;->onMessageChannelReady:[Lo/Payload;

    aget-object v1, v1, p2

    iget-object v2, p1, Lo/OfferJsonAdapter;->onMessageChannelReady:[Lo/Payload;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/OfferJsonAdapter;->extraCallback:Lo/InstrumentDataJsonAdapter;

    .line 102
    invoke-virtual {v1, p2}, Lo/InstrumentDataJsonAdapter;->onNavigationEvent(I)Lo/InstrumentView;

    move-result-object v1

    iget-object p1, p1, Lo/OfferJsonAdapter;->extraCallback:Lo/InstrumentDataJsonAdapter;

    invoke-virtual {p1, p2}, Lo/InstrumentDataJsonAdapter;->onNavigationEvent(I)Lo/InstrumentView;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final onPostMessage(Lo/OfferJsonAdapter;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 75
    iget-object v1, p1, Lo/OfferJsonAdapter;->extraCallback:Lo/InstrumentDataJsonAdapter;

    iget v1, v1, Lo/InstrumentDataJsonAdapter;->ICustomTabsCallback:I

    iget-object v2, p0, Lo/OfferJsonAdapter;->extraCallback:Lo/InstrumentDataJsonAdapter;

    iget v2, v2, Lo/InstrumentDataJsonAdapter;->ICustomTabsCallback:I

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 78
    :goto_0
    iget-object v2, p0, Lo/OfferJsonAdapter;->extraCallback:Lo/InstrumentDataJsonAdapter;

    iget v2, v2, Lo/InstrumentDataJsonAdapter;->ICustomTabsCallback:I

    if-ge v1, v2, :cond_2

    .line 79
    invoke-virtual {p0, p1, v1}, Lo/OfferJsonAdapter;->onNavigationEvent(Lo/OfferJsonAdapter;I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method
