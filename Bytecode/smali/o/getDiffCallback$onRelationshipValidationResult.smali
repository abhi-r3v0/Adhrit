.class final Lo/getDiffCallback$onRelationshipValidationResult;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getDiffCallback;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getDiffCallback;

.field private synthetic onMessageChannelReady:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/getDiffCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/getDiffCallback$onRelationshipValidationResult;->extraCallback:Lo/getDiffCallback;

    iput-object p2, p0, Lo/getDiffCallback$onRelationshipValidationResult;->onMessageChannelReady:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 29
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v0, p1, [Lo/addWrite;

    .line 2043
    new-instance v1, Lo/addWrite;

    const-string v2, "cta_type"

    const-string v3, "link"

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "pairs"

    .line 1075
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "link_card_init_screen_cta"

    .line 1075
    invoke-static {p1, v1}, Lo/getDiffCallback;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1078
    iget-object p1, p0, Lo/getDiffCallback$onRelationshipValidationResult;->extraCallback:Lo/getDiffCallback;

    .line 3000
    iget-object p1, p1, Lo/getDiffCallback;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lo/getMoveDuration;

    .line 1078
    iget-object v1, p0, Lo/getDiffCallback$onRelationshipValidationResult;->onMessageChannelReady:Ljava/lang/String;

    iget-object p1, p0, Lo/getDiffCallback$onRelationshipValidationResult;->extraCallback:Lo/getDiffCallback;

    invoke-static {p1}, Lo/getDiffCallback;->ICustomTabsCallback(Lo/getDiffCallback;)Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    move-result-object v2

    iget-object p1, p0, Lo/getDiffCallback$onRelationshipValidationResult;->extraCallback:Lo/getDiffCallback;

    invoke-static {p1}, Lo/getDiffCallback;->onMessageChannelReady(Lo/getDiffCallback;)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x4

    invoke-static/range {v0 .. v6}, Lo/getMoveDuration;->onPostMessage(Lo/getMoveDuration;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;Ljava/lang/String;ZZI)V

    .line 1079
    iget-object p1, p0, Lo/getDiffCallback$onRelationshipValidationResult;->extraCallback:Lo/getDiffCallback;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 29
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
