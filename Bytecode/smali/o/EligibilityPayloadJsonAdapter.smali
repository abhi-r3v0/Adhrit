.class public final Lo/EligibilityPayloadJsonAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ResultJsonAdapter;


# instance fields
.field private final extraCallback:Lo/ResultJsonAdapter;

.field private onMessageChannelReady:Landroid/net/Uri;

.field private onNavigationEvent:J

.field private onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ResultJsonAdapter;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ResultJsonAdapter;

    iput-object p1, p0, Lo/EligibilityPayloadJsonAdapter;->extraCallback:Lo/ResultJsonAdapter;

    .line 46
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lo/EligibilityPayloadJsonAdapter;->onMessageChannelReady:Landroid/net/Uri;

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/EligibilityPayloadJsonAdapter;->onPostMessage:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p1, Lo/PaymentRequestJsonAdapter;->onPostMessage:Landroid/net/Uri;

    iput-object v0, p0, Lo/EligibilityPayloadJsonAdapter;->onMessageChannelReady:Landroid/net/Uri;

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lo/EligibilityPayloadJsonAdapter;->onPostMessage:Ljava/util/Map;

    .line 83
    iget-object v0, p0, Lo/EligibilityPayloadJsonAdapter;->extraCallback:Lo/ResultJsonAdapter;

    invoke-interface {v0, p1}, Lo/ResultJsonAdapter;->ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;)J

    move-result-wide v0

    .line 84
    invoke-virtual {p0}, Lo/EligibilityPayloadJsonAdapter;->extraCallback()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lo/EligibilityPayloadJsonAdapter;->onMessageChannelReady:Landroid/net/Uri;

    .line 85
    invoke-virtual {p0}, Lo/EligibilityPayloadJsonAdapter;->onPostMessage()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/EligibilityPayloadJsonAdapter;->onPostMessage:Ljava/util/Map;

    return-wide v0
.end method

.method public final ICustomTabsCallback()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lo/EligibilityPayloadJsonAdapter;->onNavigationEvent:J

    return-void
.end method

.method public final ICustomTabsCallback$Stub()Landroid/net/Uri;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/EligibilityPayloadJsonAdapter;->onMessageChannelReady:Landroid/net/Uri;

    return-object v0
.end method

.method public final extraCallback()Landroid/net/Uri;
    .locals 1

    .line 100
    iget-object v0, p0, Lo/EligibilityPayloadJsonAdapter;->extraCallback:Lo/ResultJsonAdapter;

    invoke-interface {v0}, Lo/ResultJsonAdapter;->extraCallback()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lo/EligibilityPayloadJsonAdapter;->extraCallback:Lo/ResultJsonAdapter;

    invoke-interface {v0, p1, p2, p3}, Lo/ResultJsonAdapter;->onMessageChannelReady([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 93
    iget-wide p2, p0, Lo/EligibilityPayloadJsonAdapter;->onNavigationEvent:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lo/EligibilityPayloadJsonAdapter;->onNavigationEvent:J

    :cond_0
    return p1
.end method

.method public final onMessageChannelReady()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lo/EligibilityPayloadJsonAdapter;->extraCallback:Lo/ResultJsonAdapter;

    invoke-interface {v0}, Lo/ResultJsonAdapter;->onMessageChannelReady()V

    return-void
.end method

.method public final onNavigationEvent()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lo/EligibilityPayloadJsonAdapter;->onNavigationEvent:J

    return-wide v0
.end method

.method public final onNavigationEvent(Lo/InitPayloadJsonAdapter;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lo/EligibilityPayloadJsonAdapter;->extraCallback:Lo/ResultJsonAdapter;

    invoke-interface {v0, p1}, Lo/ResultJsonAdapter;->onNavigationEvent(Lo/InitPayloadJsonAdapter;)V

    return-void
.end method

.method public final onPostMessage()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lo/EligibilityPayloadJsonAdapter;->extraCallback:Lo/ResultJsonAdapter;

    invoke-interface {v0}, Lo/ResultJsonAdapter;->onPostMessage()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final onRelationshipValidationResult()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lo/EligibilityPayloadJsonAdapter;->onPostMessage:Ljava/util/Map;

    return-object v0
.end method
