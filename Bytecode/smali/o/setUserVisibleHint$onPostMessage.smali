.class public Lo/setUserVisibleHint$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/unregisterConversionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserVisibleHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/sms/ServiceSmsHelper$Companion;",
        "",
        "()V",
        "INVALID_COUNT",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/registerConversionListener;

.field private final onPostMessage:Lo/unregisterConversionListener;


# direct methods
.method public constructor <init>(Lo/registerConversionListener;Lo/unregisterConversionListener;)V
    .locals 0

    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1020
    iput-object p1, p0, Lo/setUserVisibleHint$onPostMessage;->onNavigationEvent:Lo/registerConversionListener;

    .line 1021
    iput-object p2, p0, Lo/setUserVisibleHint$onPostMessage;->onPostMessage:Lo/unregisterConversionListener;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1045
    iget-object v0, p0, Lo/setUserVisibleHint$onPostMessage;->onNavigationEvent:Lo/registerConversionListener;

    if-eqz v0, :cond_0

    .line 1046
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lo/registerConversionListener;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :cond_0
    iget-object v0, p0, Lo/setUserVisibleHint$onPostMessage;->onPostMessage:Lo/unregisterConversionListener;

    if-eqz v0, :cond_1

    .line 1049
    invoke-interface {v0, p1, p2, p3}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPreinstallAttribution;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1056
    iget-object v0, p0, Lo/setUserVisibleHint$onPostMessage;->onNavigationEvent:Lo/registerConversionListener;

    if-eqz v0, :cond_0

    .line 1057
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lo/registerConversionListener;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1059
    :cond_0
    iget-object v0, p0, Lo/setUserVisibleHint$onPostMessage;->onPostMessage:Lo/unregisterConversionListener;

    if-eqz v0, :cond_1

    .line 1060
    invoke-interface {v0, p1, p2, p3}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPreinstallAttribution;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1070
    iget-object v0, p0, Lo/setUserVisibleHint$onPostMessage;->onNavigationEvent:Lo/registerConversionListener;

    if-eqz v0, :cond_0

    .line 1071
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lo/registerConversionListener;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 1073
    :cond_0
    iget-object v0, p0, Lo/setUserVisibleHint$onPostMessage;->onPostMessage:Lo/unregisterConversionListener;

    if-eqz v0, :cond_1

    .line 1074
    invoke-interface {v0, p1, p2, p3, p4}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPreinstallAttribution;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1081
    iget-object v0, p0, Lo/setUserVisibleHint$onPostMessage;->onNavigationEvent:Lo/registerConversionListener;

    if-eqz v0, :cond_0

    .line 1082
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lo/registerConversionListener;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1084
    :cond_0
    iget-object v0, p0, Lo/setUserVisibleHint$onPostMessage;->onPostMessage:Lo/unregisterConversionListener;

    if-eqz v0, :cond_1

    .line 1085
    invoke-interface {v0, p1, p2, p3}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z
    .locals 2

    .line 1103
    iget-object v0, p0, Lo/setUserVisibleHint$onPostMessage;->onNavigationEvent:Lo/registerConversionListener;

    if-eqz v0, :cond_0

    .line 1104
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/registerConversionListener;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1106
    iget-object v1, p0, Lo/setUserVisibleHint$onPostMessage;->onPostMessage:Lo/unregisterConversionListener;

    if-eqz v1, :cond_1

    .line 1107
    invoke-interface {v1, p1, p2}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public final onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V
    .locals 2

    .line 1035
    iget-object v0, p0, Lo/setUserVisibleHint$onPostMessage;->onNavigationEvent:Lo/registerConversionListener;

    if-eqz v0, :cond_0

    .line 1036
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lo/registerConversionListener;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    :cond_0
    iget-object v0, p0, Lo/setUserVisibleHint$onPostMessage;->onPostMessage:Lo/unregisterConversionListener;

    if-eqz v0, :cond_1

    .line 1039
    invoke-interface {v0, p1, p2}, Lo/unregisterConversionListener;->onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/String;Z)V
    .locals 2

    .line 1092
    iget-object v0, p0, Lo/setUserVisibleHint$onPostMessage;->onNavigationEvent:Lo/registerConversionListener;

    if-eqz v0, :cond_0

    .line 1093
    invoke-interface {p1}, Lo/setPreinstallAttribution;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lo/registerConversionListener;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1095
    :cond_0
    iget-object v0, p0, Lo/setUserVisibleHint$onPostMessage;->onPostMessage:Lo/unregisterConversionListener;

    if-eqz v0, :cond_1

    .line 1096
    invoke-interface {v0, p1, p2, p3}, Lo/unregisterConversionListener;->onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
