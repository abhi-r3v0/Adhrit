.class final Lo/Settings$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SettingsV3JsonTransform$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Settings;-><init>(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;Lo/SessionSettingsData;ZLorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/Settings;


# direct methods
.method constructor <init>(Lo/Settings;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lo/Settings$3;->onMessageChannelReady:Lo/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 4

    .line 453
    iget-object v0, p0, Lo/Settings$3;->onMessageChannelReady:Lo/Settings;

    invoke-static {v0}, Lo/Settings;->extraCallback(Lo/Settings;)Lo/buildInstanceIdentifierChanged;

    move-result-object v0

    new-instance v1, Lo/buildInstanceIdentifierChanged$ICustomTabsCallback$Stub;

    iget-object v2, p0, Lo/Settings$3;->onMessageChannelReady:Lo/Settings;

    invoke-static {v2}, Lo/Settings;->ICustomTabsCallback(Lo/Settings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/Settings$3;->onMessageChannelReady:Lo/Settings;

    invoke-static {v3}, Lo/Settings;->onMessageChannelReady(Lo/Settings;)Lo/AppSpiCall;

    move-result-object v3

    invoke-virtual {v3}, Lo/AppSpiCall;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lo/buildInstanceIdentifierChanged$ICustomTabsCallback$Stub;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 1145
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x8

    .line 1146
    iput v3, v2, Landroid/os/Message;->what:I

    .line 1147
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1149
    iget-object v0, v0, Lo/buildInstanceIdentifierChanged;->extraCallback:Lo/buildInstanceIdentifierChanged$onTransact;

    invoke-virtual {v0, v2}, Lo/buildInstanceIdentifierChanged$onTransact;->ICustomTabsCallback(Landroid/os/Message;)V

    return-void
.end method
