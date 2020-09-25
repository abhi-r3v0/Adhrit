.class final Lo/getViewPosition$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getViewPosition;->onMessageChannelReady(Lo/getFont;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic extraCallback:Lo/getViewPosition;

.field private synthetic onMessageChannelReady:Lo/getFont;


# direct methods
.method constructor <init>(Lo/getViewPosition;Lo/getFont;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/getViewPosition$onMessageChannelReady;->extraCallback:Lo/getViewPosition;

    iput-object p2, p0, Lo/getViewPosition$onMessageChannelReady;->onMessageChannelReady:Lo/getFont;

    iput-object p3, p0, Lo/getViewPosition$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 1414
    iget-object p1, p0, Lo/getViewPosition$onMessageChannelReady;->onMessageChannelReady:Lo/getFont;

    .line 2183
    iget-object p1, p1, Lo/getFont;->onRelationshipValidationResult:Ljava/lang/String;

    const-string/jumbo v0, "source"

    if-eqz p1, :cond_0

    .line 1414
    iget-object p1, p0, Lo/getViewPosition$onMessageChannelReady;->onMessageChannelReady:Lo/getFont;

    .line 3183
    iget-object p1, p1, Lo/getFont;->onRelationshipValidationResult:Ljava/lang/String;

    const-string/jumbo v1, "whatsapp"

    .line 1414
    invoke-static {p1, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1415
    iget-object p1, p0, Lo/getViewPosition$onMessageChannelReady;->extraCallback:Lo/getViewPosition;

    .line 4000
    iget-object p1, p1, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    .line 1415
    iget-object v1, p0, Lo/getViewPosition$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/getViewPosition$onMessageChannelReady;->onMessageChannelReady:Lo/getFont;

    .line 4200
    iget-object v2, v2, Lo/getFont;->IPostMessageService$Stub:Ljava/lang/String;

    .line 1415
    invoke-static {v1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4343
    new-instance v0, Lo/onGetChildDrawingOrder$getNotifyChildrenChangedOptions;

    new-instance v3, Lo/ensureLeftGlow$extraCallback;

    invoke-direct {v3, v1, v2}, Lo/ensureLeftGlow$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lo/onGetChildDrawingOrder$getNotifyChildrenChangedOptions;-><init>(Lo/ensureLeftGlow$extraCallback;)V

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {p1, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    .line 1417
    :cond_0
    iget-object p1, p0, Lo/getViewPosition$onMessageChannelReady;->extraCallback:Lo/getViewPosition;

    .line 5000
    iget-object p1, p1, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    .line 1417
    iget-object v1, p0, Lo/getViewPosition$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/getViewPosition$onMessageChannelReady;->onMessageChannelReady:Lo/getFont;

    .line 5200
    iget-object v2, v2, Lo/getFont;->IPostMessageService$Stub:Ljava/lang/String;

    .line 1417
    invoke-static {v1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5339
    new-instance v0, Lo/onGetChildDrawingOrder$cancel;

    new-instance v3, Lo/absorbGlows$onNavigationEvent;

    invoke-direct {v3, v1, v2}, Lo/absorbGlows$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lo/onGetChildDrawingOrder$cancel;-><init>(Lo/absorbGlows$onNavigationEvent;)V

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {p1, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void
.end method
