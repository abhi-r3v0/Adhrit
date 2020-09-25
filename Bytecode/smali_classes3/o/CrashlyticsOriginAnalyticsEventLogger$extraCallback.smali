.class final Lo/CrashlyticsOriginAnalyticsEventLogger$extraCallback;
.super Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub$Proxy;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub$Proxy<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger;


# direct methods
.method constructor <init>(Lo/CrashlyticsOriginAnalyticsEventLogger;)V
    .locals 0

    .line 2763
    iput-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCallback;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub$Proxy;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 2807
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCallback;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 2772
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2775
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 2776
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 2780
    :cond_1
    iget-object v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCallback;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-virtual {v2, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2782
    iget-object v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCallback;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger;

    .line 3293
    iget-object v2, v2, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;

    invoke-interface {v2}, Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;->onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->onPostMessage()Lo/performCreateApp;

    move-result-object v2

    .line 2782
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Lo/performCreateApp;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 2802
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCallback;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2767
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback;

    iget-object v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCallback;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-direct {v0, v1}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback;-><init>(Lo/CrashlyticsOriginAnalyticsEventLogger;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    .line 2787
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2790
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 2791
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2792
    iget-object v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCallback;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lo/CrashlyticsOriginAnalyticsEventLogger;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final size()I
    .locals 1

    .line 2797
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCallback;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    return v0
.end method
