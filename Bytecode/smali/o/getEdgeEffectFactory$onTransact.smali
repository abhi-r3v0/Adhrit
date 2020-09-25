.class final Lo/getEdgeEffectFactory$onTransact;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getEdgeEffectFactory;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/referal/ReferralBottomSheet$onViewCreated$1$6"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getEdgeEffectFactory;

.field private synthetic onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;Lo/getEdgeEffectFactory;)V
    .locals 0

    iput-object p1, p0, Lo/getEdgeEffectFactory$onTransact;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;

    iput-object p2, p0, Lo/getEdgeEffectFactory$onTransact;->extraCallback:Lo/getEdgeEffectFactory;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 39
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1086
    iget-object p1, p0, Lo/getEdgeEffectFactory$onTransact;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;

    .line 1204
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    if-eqz p1, :cond_0

    .line 2061
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->extraCallback:Ljava/lang/String;

    const-string v1, "deeplink"

    .line 1087
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lo/getEdgeEffectFactory$onTransact;->extraCallback:Lo/getEdgeEffectFactory;

    invoke-static {v0}, Lo/getEdgeEffectFactory;->onMessageChannelReady(Lo/getEdgeEffectFactory;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "redeem_referral_bottom_sheet_secondary_cta"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1089
    sget-object v0, Lo/length;->extraCallback:Lo/length;

    .line 2065
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onNavigationEvent:Ljava/lang/String;

    .line 1089
    invoke-virtual {v0, p1}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    .line 1090
    iget-object p1, p0, Lo/getEdgeEffectFactory$onTransact;->extraCallback:Lo/getEdgeEffectFactory;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 39
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
