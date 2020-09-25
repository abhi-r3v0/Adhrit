.class final Lo/setStackFromEnd;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/animation/Animation;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/animation/Animation;",
        "invoke",
        "com/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onTemplateDismissComplete$1$onAnimationEnd$1$1$1",
        "com/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onTemplateDismissComplete$1$$special$$inlined$setListener$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getItemOffsets;


# direct methods
.method constructor <init>(Lo/getItemOffsets;)V
    .locals 0

    iput-object p1, p0, Lo/setStackFromEnd;->extraCallback:Lo/getItemOffsets;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1128
    iget-object p1, p0, Lo/setStackFromEnd;->extraCallback:Lo/getItemOffsets;

    .line 2026
    iget-object p1, p1, Lo/getItemOffsets;->onPostMessage:Landroid/view/View;

    .line 1128
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->animationContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const-string/jumbo v0, "view.animationContainer"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 3017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    iget-object p1, p0, Lo/setStackFromEnd;->extraCallback:Lo/getItemOffsets;

    .line 3031
    iget-object p1, p1, Lo/getItemOffsets;->extraCallback:Lo/getServerTime;

    .line 1129
    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    .line 118
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
