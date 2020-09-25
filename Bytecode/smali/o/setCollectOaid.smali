.class public final Lo/setCollectOaid;
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
        "Lo/getCardBackgroundColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/endConnection;


# direct methods
.method public constructor <init>(Lo/endConnection;ZLo/setDeviceTrackingDisabled;)V
    .locals 2

    const-string v0, "EncodedCacheKeyMultiplexProducer"

    const-string v1, "multiplex_enc_cnt"

    .line 26
    invoke-direct {p0, p3, v0, v1, p2}, Lo/trackAppLaunch;-><init>(Lo/setDeviceTrackingDisabled;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    iput-object p1, p0, Lo/setCollectOaid;->ICustomTabsCallback:Lo/endConnection;

    return-void
.end method


# virtual methods
.method protected final synthetic extraCallback(Lo/setPreinstallAttribution;)Ljava/lang/Object;
    .locals 2

    .line 2035
    iget-object v0, p0, Lo/setCollectOaid;->ICustomTabsCallback:Lo/endConnection;

    .line 2037
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v1

    invoke-interface {p1}, Lo/setPreinstallAttribution;->extraCallback()Ljava/lang/Object;

    .line 2036
    invoke-interface {v0, v1}, Lo/endConnection;->onPostMessage(Lo/getHostPrefix;)Lo/invalidateSpanInfo;

    move-result-object v0

    .line 2038
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onTransact()Lo/getHostPrefix$onMessageChannelReady;

    move-result-object p1

    .line 2035
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onMessageChannelReady(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 0

    .line 17
    check-cast p1, Lo/getCardBackgroundColor;

    if-eqz p1, :cond_0

    .line 1095
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->ICustomTabsCallback()Lo/getCardBackgroundColor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
