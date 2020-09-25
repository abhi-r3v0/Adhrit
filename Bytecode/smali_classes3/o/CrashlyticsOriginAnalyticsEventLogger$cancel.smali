.class final Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;
.super Lo/AnalyticsEventReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "cancel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AnalyticsEventReceiver<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private synthetic onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger;

.field private onPostMessage:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/CrashlyticsOriginAnalyticsEventLogger;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 2639
    iput-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-direct {p0}, Lo/AnalyticsEventReceiver;-><init>()V

    .line 2640
    iput-object p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;->ICustomTabsCallback:Ljava/lang/Object;

    .line 2641
    iput-object p3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;->onPostMessage:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 2657
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2658
    check-cast p1, Ljava/util/Map$Entry;

    .line 2659
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;->onPostMessage:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2646
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;->ICustomTabsCallback:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 2651
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;->onPostMessage:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 2667
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;->onPostMessage:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 2672
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger;

    iget-object v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2673
    iput-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;->onPostMessage:Ljava/lang/Object;

    return-object v0
.end method
