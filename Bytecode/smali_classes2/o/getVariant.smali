.class final Lo/getVariant;
.super Lo/setVariant;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setVariant<",
        "Lo/MarketingMessageStatus$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/setVariant;-><init>()V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/setLaunchDeeplinkFromNotification;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setLaunchDeeplinkFromNotification;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MarketingMessageStatus$onNavigationEvent;

    .line 18
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final extraCallback(Ljava/lang/Object;)Lo/setDisplayCode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/setDisplayCode<",
            "Lo/MarketingMessageStatus$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .line 4
    check-cast p1, Lo/MarketingMessageStatus$ICustomTabsCallback;

    .line 5
    iget-object v0, p1, Lo/MarketingMessageStatus$ICustomTabsCallback;->zzc:Lo/setDisplayCode;

    invoke-virtual {v0}, Lo/setDisplayCode;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p1, Lo/MarketingMessageStatus$ICustomTabsCallback;->zzc:Lo/setDisplayCode;

    invoke-virtual {v0}, Lo/setDisplayCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setDisplayCode;

    iput-object v0, p1, Lo/MarketingMessageStatus$ICustomTabsCallback;->zzc:Lo/setDisplayCode;

    .line 7
    :cond_0
    iget-object p1, p1, Lo/MarketingMessageStatus$ICustomTabsCallback;->zzc:Lo/setDisplayCode;

    return-object p1
.end method

.method final onMessageChannelReady(Ljava/lang/Object;)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lo/setVariant;->onNavigationEvent(Ljava/lang/Object;)Lo/setDisplayCode;

    move-result-object p1

    invoke-virtual {p1}, Lo/setDisplayCode;->extraCallback()V

    return-void
.end method

.method final onMessageChannelReady(Lo/access$502;)Z
    .locals 0

    .line 2
    instance-of p1, p1, Lo/MarketingMessageStatus$ICustomTabsCallback;

    return p1
.end method

.method final onNavigationEvent(Ljava/lang/Object;)Lo/setDisplayCode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/setDisplayCode<",
            "Lo/MarketingMessageStatus$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .line 3
    check-cast p1, Lo/MarketingMessageStatus$ICustomTabsCallback;

    iget-object p1, p1, Lo/MarketingMessageStatus$ICustomTabsCallback;->zzc:Lo/setDisplayCode;

    return-object p1
.end method

.method final onPostMessage(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 14
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MarketingMessageStatus$onNavigationEvent;

    .line 15
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method
