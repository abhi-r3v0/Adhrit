.class final Lo/ReflectedParcelable;
.super Lo/getMinApkVersion;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getMinApkVersion<",
        "Lo/getUseDynamicLookup;",
        "Lo/getUseDynamicLookup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getMinApkVersion;-><init>()V

    return-void
.end method

.method private static extraCallback(Ljava/lang/Object;Lo/getUseDynamicLookup;)V
    .locals 0

    .line 3
    check-cast p0, Lo/isPlayServicesPossiblyUpdating;

    iput-object p1, p0, Lo/isPlayServicesPossiblyUpdating;->zzxz:Lo/getUseDynamicLookup;

    return-void
.end method


# virtual methods
.method final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-static {}, Lo/getUseDynamicLookup;->onPostMessage()Lo/getUseDynamicLookup;

    move-result-object v0

    return-object v0
.end method

.method final synthetic ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 31
    move-object v0, p1

    check-cast v0, Lo/isPlayServicesPossiblyUpdating;

    iget-object v0, v0, Lo/isPlayServicesPossiblyUpdating;->zzxz:Lo/getUseDynamicLookup;

    .line 33
    invoke-static {}, Lo/getUseDynamicLookup;->ICustomTabsCallback()Lo/getUseDynamicLookup;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 34
    invoke-static {}, Lo/getUseDynamicLookup;->onPostMessage()Lo/getUseDynamicLookup;

    move-result-object v0

    .line 35
    invoke-static {p1, v0}, Lo/ReflectedParcelable;->extraCallback(Ljava/lang/Object;Lo/getUseDynamicLookup;)V

    :cond_0
    return-object v0
.end method

.method final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    check-cast p1, Lo/getUseDynamicLookup;

    check-cast p2, Lo/getUseDynamicLookup;

    .line 16
    invoke-static {}, Lo/getUseDynamicLookup;->ICustomTabsCallback()Lo/getUseDynamicLookup;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/getUseDynamicLookup;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 18
    :cond_0
    invoke-static {p1, p2}, Lo/getUseDynamicLookup;->onMessageChannelReady(Lo/getUseDynamicLookup;Lo/getUseDynamicLookup;)Lo/getUseDynamicLookup;

    move-result-object p1

    return-object p1
.end method

.method final extraCallback(Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p1, Lo/isPlayServicesPossiblyUpdating;

    iget-object p1, p1, Lo/isPlayServicesPossiblyUpdating;->zzxz:Lo/getUseDynamicLookup;

    .line 7
    invoke-virtual {p1}, Lo/getUseDynamicLookup;->extraCallback()V

    return-void
.end method

.method final synthetic extraCallback(Ljava/lang/Object;Lo/checkNotNull;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    check-cast p1, Lo/getUseDynamicLookup;

    .line 21
    invoke-virtual {p1, p2}, Lo/getUseDynamicLookup;->onPostMessage(Lo/checkNotNull;)V

    return-void
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lo/isPlayServicesPossiblyUpdating;

    iget-object p1, p1, Lo/isPlayServicesPossiblyUpdating;->zzxz:Lo/getUseDynamicLookup;

    return-object p1
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;IJ)V
    .locals 0

    .line 56
    check-cast p1, Lo/getUseDynamicLookup;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x1

    .line 58
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo/getUseDynamicLookup;->ICustomTabsCallback(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lo/getUseDynamicLookup;

    check-cast p3, Lo/getUseDynamicLookup;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x3

    .line 50
    invoke-virtual {p1, p2, p3}, Lo/getUseDynamicLookup;->ICustomTabsCallback(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;ILo/getMobileAdsSettingsManager;)V
    .locals 0

    .line 52
    check-cast p1, Lo/getUseDynamicLookup;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 54
    invoke-virtual {p1, p2, p3}, Lo/getUseDynamicLookup;->ICustomTabsCallback(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;Lo/checkNotNull;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    check-cast p1, Lo/getUseDynamicLookup;

    .line 24
    invoke-virtual {p1, p2}, Lo/getUseDynamicLookup;->onMessageChannelReady(Lo/checkNotNull;)V

    return-void
.end method

.method final synthetic onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lo/getUseDynamicLookup;

    .line 43
    invoke-virtual {p1}, Lo/getUseDynamicLookup;->extraCallback()V

    return-object p1
.end method

.method final synthetic onNavigationEvent(Ljava/lang/Object;II)V
    .locals 0

    .line 60
    check-cast p1, Lo/getUseDynamicLookup;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x5

    .line 62
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo/getUseDynamicLookup;->ICustomTabsCallback(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lo/getUseDynamicLookup;

    invoke-static {p1, p2}, Lo/ReflectedParcelable;->extraCallback(Ljava/lang/Object;Lo/getUseDynamicLookup;)V

    return-void
.end method

.method final onNavigationEvent(Lo/getApiFeatures;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method final synthetic onPostMessage(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lo/getUseDynamicLookup;

    .line 13
    invoke-virtual {p1}, Lo/getUseDynamicLookup;->onNavigationEvent()I

    move-result p1

    return p1
.end method

.method final synthetic onPostMessage(Ljava/lang/Object;IJ)V
    .locals 0

    .line 64
    check-cast p1, Lo/getUseDynamicLookup;

    shl-int/lit8 p2, p2, 0x3

    .line 66
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo/getUseDynamicLookup;->ICustomTabsCallback(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lo/getUseDynamicLookup;

    .line 27
    invoke-static {p1, p2}, Lo/ReflectedParcelable;->extraCallback(Ljava/lang/Object;Lo/getUseDynamicLookup;)V

    return-void
.end method

.method final synthetic onRelationshipValidationResult(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lo/getUseDynamicLookup;

    .line 10
    invoke-virtual {p1}, Lo/getUseDynamicLookup;->onMessageChannelReady()I

    move-result p1

    return p1
.end method
