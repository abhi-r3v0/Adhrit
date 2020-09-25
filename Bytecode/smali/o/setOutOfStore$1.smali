.class final Lo/setOutOfStore$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setOutOfStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getDelegate<",
        "Lo/getCardBackgroundColor;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/unregisterConversionListener;

.field private synthetic onMessageChannelReady:Lo/waitForCustomerUserId;

.field private synthetic onNavigationEvent:Lo/setPreinstallAttribution;

.field private synthetic onPostMessage:Lo/setOutOfStore;


# direct methods
.method constructor <init>(Lo/setOutOfStore;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Lo/waitForCustomerUserId;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lo/setOutOfStore$1;->onPostMessage:Lo/setOutOfStore;

    iput-object p2, p0, Lo/setOutOfStore$1;->extraCallback:Lo/unregisterConversionListener;

    iput-object p3, p0, Lo/setOutOfStore$1;->onNavigationEvent:Lo/setPreinstallAttribution;

    iput-object p4, p0, Lo/setOutOfStore$1;->onMessageChannelReady:Lo/waitForCustomerUserId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Lo/getDrawerToggleDelegate;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2119
    invoke-virtual {p1}, Lo/getDrawerToggleDelegate;->onMessageChannelReady()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2120
    invoke-virtual {p1}, Lo/getDrawerToggleDelegate;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/getDrawerToggleDelegate;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v3, 0x0

    const-string v4, "DiskCacheProducer"

    if-eqz v0, :cond_2

    .line 1089
    iget-object p1, p0, Lo/setOutOfStore$1;->extraCallback:Lo/unregisterConversionListener;

    iget-object v0, p0, Lo/setOutOfStore$1;->onNavigationEvent:Lo/setPreinstallAttribution;

    invoke-interface {p1, v0, v4, v3}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 1090
    iget-object p1, p0, Lo/setOutOfStore$1;->onMessageChannelReady:Lo/waitForCustomerUserId;

    invoke-interface {p1}, Lo/waitForCustomerUserId;->ICustomTabsCallback()V

    goto :goto_2

    .line 1091
    :cond_2
    invoke-virtual {p1}, Lo/getDrawerToggleDelegate;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1092
    iget-object v0, p0, Lo/setOutOfStore$1;->extraCallback:Lo/unregisterConversionListener;

    iget-object v1, p0, Lo/setOutOfStore$1;->onNavigationEvent:Lo/setPreinstallAttribution;

    .line 1093
    invoke-virtual {p1}, Lo/getDrawerToggleDelegate;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object p1

    .line 1092
    invoke-interface {v0, v1, v4, p1, v3}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 1094
    iget-object p1, p0, Lo/setOutOfStore$1;->onPostMessage:Lo/setOutOfStore;

    .line 3037
    iget-object p1, p1, Lo/setOutOfStore;->onNavigationEvent:Lo/setDeviceTrackingDisabled;

    .line 1094
    iget-object v0, p0, Lo/setOutOfStore$1;->onMessageChannelReady:Lo/waitForCustomerUserId;

    iget-object v1, p0, Lo/setOutOfStore$1;->onNavigationEvent:Lo/setPreinstallAttribution;

    invoke-interface {p1, v0, v1}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    goto :goto_2

    .line 1096
    :cond_3
    invoke-virtual {p1}, Lo/getDrawerToggleDelegate;->onPostMessage()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getCardBackgroundColor;

    if-eqz p1, :cond_4

    .line 1098
    iget-object v0, p0, Lo/setOutOfStore$1;->extraCallback:Lo/unregisterConversionListener;

    iget-object v1, p0, Lo/setOutOfStore$1;->onNavigationEvent:Lo/setPreinstallAttribution;

    .line 1101
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onMessageChannelReady()I

    move-result v5

    invoke-static {v0, v1, v2, v5}, Lo/setOutOfStore;->extraCallback(Lo/unregisterConversionListener;Lo/setPreinstallAttribution;ZI)Ljava/util/Map;

    move-result-object v5

    .line 1098
    invoke-interface {v0, v1, v4, v5}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 1102
    iget-object v0, p0, Lo/setOutOfStore$1;->extraCallback:Lo/unregisterConversionListener;

    iget-object v1, p0, Lo/setOutOfStore$1;->onNavigationEvent:Lo/setPreinstallAttribution;

    invoke-interface {v0, v1, v4, v2}, Lo/unregisterConversionListener;->onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/String;Z)V

    .line 1103
    iget-object v0, p0, Lo/setOutOfStore$1;->onNavigationEvent:Lo/setPreinstallAttribution;

    const-string v1, "disk"

    invoke-interface {v0, v1}, Lo/setPreinstallAttribution;->onPostMessage(Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lo/setOutOfStore$1;->onMessageChannelReady:Lo/waitForCustomerUserId;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lo/waitForCustomerUserId;->extraCallback(F)V

    .line 1105
    iget-object v0, p0, Lo/setOutOfStore$1;->onMessageChannelReady:Lo/waitForCustomerUserId;

    invoke-interface {v0, p1, v2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    .line 1106
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->close()V

    goto :goto_2

    .line 1108
    :cond_4
    iget-object p1, p0, Lo/setOutOfStore$1;->extraCallback:Lo/unregisterConversionListener;

    iget-object v0, p0, Lo/setOutOfStore$1;->onNavigationEvent:Lo/setPreinstallAttribution;

    .line 1109
    invoke-static {p1, v0, v1, v1}, Lo/setOutOfStore;->extraCallback(Lo/unregisterConversionListener;Lo/setPreinstallAttribution;ZI)Ljava/util/Map;

    move-result-object v1

    .line 1108
    invoke-interface {p1, v0, v4, v1}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 1110
    iget-object p1, p0, Lo/setOutOfStore$1;->onPostMessage:Lo/setOutOfStore;

    .line 4037
    iget-object p1, p1, Lo/setOutOfStore;->onNavigationEvent:Lo/setDeviceTrackingDisabled;

    .line 1110
    iget-object v0, p0, Lo/setOutOfStore$1;->onMessageChannelReady:Lo/waitForCustomerUserId;

    iget-object v1, p0, Lo/setOutOfStore$1;->onNavigationEvent:Lo/setPreinstallAttribution;

    invoke-interface {p1, v0, v1}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    :goto_2
    return-object v3
.end method
