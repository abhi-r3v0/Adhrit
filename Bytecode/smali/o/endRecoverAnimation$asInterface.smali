.class final Lo/endRecoverAnimation$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/endRecoverAnimation;
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
.field private synthetic onPostMessage:Lo/endRecoverAnimation;


# direct methods
.method constructor <init>(Lo/endRecoverAnimation;)V
    .locals 0

    iput-object p1, p0, Lo/endRecoverAnimation$asInterface;->onPostMessage:Lo/endRecoverAnimation;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 38
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1129
    iget-object p1, p0, Lo/endRecoverAnimation$asInterface;->onPostMessage:Lo/endRecoverAnimation;

    invoke-static {p1}, Lo/endRecoverAnimation;->onNavigationEvent(Lo/endRecoverAnimation;)Lo/recycleFromEnd;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1130
    iget-object p1, p0, Lo/endRecoverAnimation$asInterface;->onPostMessage:Lo/endRecoverAnimation;

    invoke-static {p1}, Lo/endRecoverAnimation;->onPostMessage(Lo/endRecoverAnimation;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/endRecoverAnimation;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v1, v3

    if-ltz p1, :cond_5

    .line 1132
    iget-object p1, p0, Lo/endRecoverAnimation$asInterface;->onPostMessage:Lo/endRecoverAnimation;

    invoke-static {p1}, Lo/endRecoverAnimation;->onPostMessage(Lo/endRecoverAnimation;)Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->onMessageChannelReady(Landroid/view/View;)V

    .line 1133
    iget-object p1, p0, Lo/endRecoverAnimation$asInterface;->onPostMessage:Lo/endRecoverAnimation;

    invoke-static {p1}, Lo/endRecoverAnimation;->ICustomTabsCallback(Lo/endRecoverAnimation;)Lo/canScrollHorizontally;

    move-result-object p1

    iget-object v1, p0, Lo/endRecoverAnimation$asInterface;->onPostMessage:Lo/endRecoverAnimation;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    const-string v2, "NA"

    const-string/jumbo v3, "source_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "arguments!!.getString(SOURCE_ID, \"NA\")"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lo/endRecoverAnimation$asInterface;->onPostMessage:Lo/endRecoverAnimation;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    const-string v4, "loan_id"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arguments!!.getString(LOAN_ID, \"NA\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lo/endRecoverAnimation$asInterface;->onPostMessage:Lo/endRecoverAnimation;

    invoke-static {v3}, Lo/endRecoverAnimation;->onPostMessage(Lo/endRecoverAnimation;)Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/endRecoverAnimation;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string v0, "locId"

    invoke-static {v1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loanId"

    invoke-static {v2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object v0, p1, Lo/canScrollHorizontally;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/calculateItemBorders;

    .line 2072
    invoke-interface {v0, v1, v2, v3, v4}, Lo/calculateItemBorders;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;D)Lo/clearScrap;

    move-result-object v0

    .line 2073
    new-instance v1, Lo/canScrollHorizontally$onNavigationEvent;

    invoke-direct {v1, p1}, Lo/canScrollHorizontally$onNavigationEvent;-><init>(Lo/canScrollHorizontally;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 1134
    iget-object p1, p0, Lo/endRecoverAnimation$asInterface;->onPostMessage:Lo/endRecoverAnimation;

    invoke-static {p1}, Lo/endRecoverAnimation;->onNavigationEvent(Lo/endRecoverAnimation;)Lo/recycleFromEnd;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    goto :goto_1

    .line 1136
    :cond_5
    iget-object p1, p0, Lo/endRecoverAnimation$asInterface;->onPostMessage:Lo/endRecoverAnimation;

    invoke-static {p1}, Lo/endRecoverAnimation;->onMessageChannelReady(Lo/endRecoverAnimation;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :cond_6
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
