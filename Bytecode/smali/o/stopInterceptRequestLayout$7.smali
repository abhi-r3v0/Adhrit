.class final Lo/stopInterceptRequestLayout$7;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopInterceptRequestLayout;-><init>(Lo/releaseGlows;Lo/hasGapsToFix$onMessageChannelReady;Lo/pullGlows;Lo/getServerTime;)V
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
.field private synthetic onNavigationEvent:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$7;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 36
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1327
    iget-object p1, p0, Lo/stopInterceptRequestLayout$7;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 2037
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 1327
    invoke-virtual {p1}, Lo/releaseGlows;->onNavigationEvent()V

    .line 1328
    iget-object p1, p0, Lo/stopInterceptRequestLayout$7;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 3037
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 4000
    iget-object p1, p1, Lo/releaseGlows;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    if-eqz p1, :cond_0

    .line 4222
    new-instance v0, Lo/onGetChildDrawingOrder$AudioAttributesImplBaseParcelizer;

    new-instance v1, Lo/onDetach$warmup;

    const/4 v2, 0x2

    const-string v3, "redeem"

    invoke-direct {v1, v3, v2}, Lo/onDetach$warmup;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lo/onGetChildDrawingOrder$AudioAttributesImplBaseParcelizer;-><init>(Lo/onDetach$warmup;)V

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {p1, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 36
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
