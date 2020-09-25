.class public final Lo/setOaidData;
.super Lo/trackAppLaunch;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/trackAppLaunch<",
        "Landroid/util/Pair<",
        "Lo/invalidateSpanInfo;",
        "Lo/getHostPrefix$onMessageChannelReady;",
        ">;",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/endConnection;


# direct methods
.method public constructor <init>(Lo/endConnection;Lo/setDeviceTrackingDisabled;)V
    .locals 2

    const-string v0, "BitmapMemoryCacheKeyMultiplexProducer"

    const-string v1, "multiplex_bmp_cnt"

    .line 26
    invoke-direct {p0, p2, v0, v1}, Lo/trackAppLaunch;-><init>(Lo/setDeviceTrackingDisabled;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lo/setOaidData;->ICustomTabsCallback:Lo/endConnection;

    return-void
.end method


# virtual methods
.method protected final synthetic extraCallback(Lo/setPreinstallAttribution;)Ljava/lang/Object;
    .locals 3

    .line 2034
    iget-object v0, p0, Lo/setOaidData;->ICustomTabsCallback:Lo/endConnection;

    .line 2036
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v1

    invoke-interface {p1}, Lo/setPreinstallAttribution;->extraCallback()Ljava/lang/Object;

    move-result-object v2

    .line 2035
    invoke-interface {v0, v1, v2}, Lo/endConnection;->extraCallback(Lo/getHostPrefix;Ljava/lang/Object;)Lo/invalidateSpanInfo;

    move-result-object v0

    .line 2037
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onTransact()Lo/getHostPrefix$onMessageChannelReady;

    move-result-object p1

    .line 2034
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onMessageChannelReady(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 0

    .line 18
    check-cast p1, Lo/getRootAlpha;

    .line 1042
    invoke-static {p1}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object p1

    return-object p1
.end method
