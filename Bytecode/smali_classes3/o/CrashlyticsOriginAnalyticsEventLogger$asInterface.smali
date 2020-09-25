.class final Lo/CrashlyticsOriginAnalyticsEventLogger$asInterface;
.super Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub$Proxy;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "asInterface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub$Proxy<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger;


# direct methods
.method constructor <init>(Lo/CrashlyticsOriginAnalyticsEventLogger;)V
    .locals 0

    .line 2687
    iput-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asInterface;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub$Proxy;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 2716
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asInterface;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 2706
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asInterface;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 2701
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asInterface;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger;

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
            "TK;>;"
        }
    .end annotation

    .line 2691
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger$onTransact;

    iget-object v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asInterface;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-direct {v0, v1}, Lo/CrashlyticsOriginAnalyticsEventLogger$onTransact;-><init>(Lo/CrashlyticsOriginAnalyticsEventLogger;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 2711
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asInterface;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    .line 2696
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asInterface;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    return v0
.end method
