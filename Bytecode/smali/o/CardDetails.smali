.class final Lo/CardDetails;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Status;


# instance fields
.field private final ICustomTabsCallback:Lo/UpiSuccessResponse;

.field private final extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/VpaAccountsJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/UpiLinkAccountResponseJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:[J


# direct methods
.method public constructor <init>(Lo/UpiSuccessResponse;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UpiSuccessResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/VpaAccountsJsonAdapter;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/UpiLinkAccountResponseJsonAdapter;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lo/CardDetails;->ICustomTabsCallback:Lo/UpiSuccessResponse;

    .line 44
    iput-object p3, p0, Lo/CardDetails;->onMessageChannelReady:Ljava/util/Map;

    .line 45
    iput-object p4, p0, Lo/CardDetails;->onNavigationEvent:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 47
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lo/CardDetails;->extraCallback:Ljava/util/Map;

    .line 48
    invoke-virtual {p1}, Lo/UpiSuccessResponse;->ICustomTabsCallback()[J

    move-result-object p1

    iput-object p1, p0, Lo/CardDetails;->onPostMessage:[J

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 59
    iget-object v0, p0, Lo/CardDetails;->onPostMessage:[J

    array-length v0, v0

    return v0
.end method

.method public final ICustomTabsCallback(I)J
    .locals 3

    .line 64
    iget-object v0, p0, Lo/CardDetails;->onPostMessage:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final onMessageChannelReady(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lo/CardDetails;->ICustomTabsCallback:Lo/UpiSuccessResponse;

    iget-object v3, p0, Lo/CardDetails;->extraCallback:Ljava/util/Map;

    iget-object v4, p0, Lo/CardDetails;->onMessageChannelReady:Ljava/util/Map;

    iget-object v5, p0, Lo/CardDetails;->onNavigationEvent:Ljava/util/Map;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lo/UpiSuccessResponse;->extraCallback(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(J)I
    .locals 2

    .line 53
    iget-object v0, p0, Lo/CardDetails;->onPostMessage:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent([JJZZ)I

    move-result p1

    .line 54
    iget-object p2, p0, Lo/CardDetails;->onPostMessage:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
