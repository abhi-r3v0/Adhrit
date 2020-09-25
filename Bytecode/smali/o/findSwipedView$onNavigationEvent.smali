.class final Lo/findSwipedView$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findSwipedView;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onNavigationEvent:Lo/findSwipedView;


# direct methods
.method constructor <init>(Lo/findSwipedView;)V
    .locals 0

    iput-object p1, p0, Lo/findSwipedView$onNavigationEvent;->onNavigationEvent:Lo/findSwipedView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 29
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1091
    iget-object p1, p0, Lo/findSwipedView$onNavigationEvent;->onNavigationEvent:Lo/findSwipedView;

    invoke-static {p1}, Lo/findSwipedView;->onNavigationEvent(Lo/findSwipedView;)Lo/onDetach$AudioAttributesCompatParcelizer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1092
    iget-object v0, p0, Lo/findSwipedView$onNavigationEvent;->onNavigationEvent:Lo/findSwipedView;

    invoke-virtual {v0}, Lo/onAudioInfoChanged;->m_()V

    .line 1093
    iget-object v0, p0, Lo/findSwipedView$onNavigationEvent;->onNavigationEvent:Lo/findSwipedView;

    .line 2000
    iget-object v0, v0, Lo/findSwipedView;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 1093
    invoke-static {v0, v1, v2, v3, v4}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 1094
    iget-object v0, p0, Lo/findSwipedView$onNavigationEvent;->onNavigationEvent:Lo/findSwipedView;

    .line 3000
    iget-object v0, v0, Lo/findSwipedView;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    .line 1094
    new-instance v8, Lo/onDetach$AudioAttributesCompatParcelizer;

    .line 3165
    iget-object v2, p1, Lo/onDetach$AudioAttributesCompatParcelizer;->onNavigationEvent:Ljava/lang/String;

    .line 4165
    iget-object v3, p1, Lo/onDetach$AudioAttributesCompatParcelizer;->extraCallback:Ljava/lang/String;

    .line 5165
    iget-wide v4, p1, Lo/onDetach$AudioAttributesCompatParcelizer;->ICustomTabsCallback:D

    .line 6165
    iget-object v6, p1, Lo/onDetach$AudioAttributesCompatParcelizer;->onMessageChannelReady:Ljava/lang/String;

    .line 7165
    iget-object v7, p1, Lo/onDetach$AudioAttributesCompatParcelizer;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;

    move-object v1, v8

    .line 1094
    invoke-direct/range {v1 .. v7}, Lo/onDetach$AudioAttributesCompatParcelizer;-><init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;)V

    const-string p1, "extra"

    invoke-static {v8, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7474
    new-instance p1, Lo/onGetChildDrawingOrder$IconCompatParcelizer;

    invoke-direct {p1, v8}, Lo/onGetChildDrawingOrder$IconCompatParcelizer;-><init>(Lo/onDetach$AudioAttributesCompatParcelizer;)V

    check-cast p1, Lo/getRemoveDuration;

    invoke-virtual {v0, p1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 29
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
