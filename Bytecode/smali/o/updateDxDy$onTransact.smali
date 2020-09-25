.class final Lo/updateDxDy$onTransact;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateDxDy;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onNavigationEvent:Lo/updateDxDy;


# direct methods
.method constructor <init>(Lo/updateDxDy;)V
    .locals 0

    iput-object p1, p0, Lo/updateDxDy$onTransact;->onNavigationEvent:Lo/updateDxDy;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 43
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v0, p1, [Lo/addWrite;

    .line 2043
    new-instance v1, Lo/addWrite;

    const-string v2, "change_account_screen"

    const-string/jumbo v3, "source"

    invoke-direct {v1, v3, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "pairs"

    .line 1100
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "stash_credit_account_click_add_account"

    .line 1100
    invoke-static {v0, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1101
    iget-object v0, p0, Lo/updateDxDy$onTransact;->onNavigationEvent:Lo/updateDxDy;

    invoke-static {v0}, Lo/updateDxDy;->onNavigationEvent(Lo/updateDxDy;)Lo/onDetach$requestPostMessageChannel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2141
    iget-boolean v0, v0, Lo/onDetach$requestPostMessageChannel;->onNavigationEvent:Z

    if-ne v0, p1, :cond_1

    .line 1102
    iget-object p1, p0, Lo/updateDxDy$onTransact;->onNavigationEvent:Lo/updateDxDy;

    invoke-static {p1}, Lo/updateDxDy;->extraCallback(Lo/updateDxDy;)Lo/getMoveDuration;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    iget-object p1, p0, Lo/updateDxDy$onTransact;->onNavigationEvent:Lo/updateDxDy;

    invoke-static {p1}, Lo/updateDxDy;->onNavigationEvent(Lo/updateDxDy;)Lo/onDetach$requestPostMessageChannel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3141
    iget-object v1, p1, Lo/onDetach$requestPostMessageChannel;->extraCallback:Ljava/util/List;

    :cond_0
    move-object v4, v1

    const/16 p1, 0x66

    .line 1102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    const-string v5, "LENDING"

    const-string/jumbo v7, "stash"

    invoke-static/range {v2 .. v8}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Lo/onDetach$asInterface;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    goto :goto_1

    .line 1104
    :cond_1
    iget-object p1, p0, Lo/updateDxDy$onTransact;->onNavigationEvent:Lo/updateDxDy;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lo/getSpanGroupIndex;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    check-cast v1, Lo/getSpanGroupIndex;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Lo/getSpanGroupIndex;->onNavigationEvent(Ljava/lang/String;)V

    .line 1106
    :cond_3
    :goto_1
    iget-object p1, p0, Lo/updateDxDy$onTransact;->onNavigationEvent:Lo/updateDxDy;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 43
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
