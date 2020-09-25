.class final Lo/findAnimation$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findAnimation;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field private synthetic extraCallback:Lo/findAnimation;


# direct methods
.method constructor <init>(Lo/findAnimation;)V
    .locals 0

    iput-object p1, p0, Lo/findAnimation$onPostMessage;->extraCallback:Lo/findAnimation;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 43
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1176
    iget-object p1, p0, Lo/findAnimation$onPostMessage;->extraCallback:Lo/findAnimation;

    invoke-static {p1}, Lo/findAnimation;->ICustomTabsCallback(Lo/findAnimation;)Lo/recycleFromEnd;

    move-result-object p1

    .line 1251
    iget-object p1, p1, Lo/recycleFromEnd;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    .line 1176
    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    if-eq p1, v0, :cond_5

    const-string/jumbo p1, "stash_otp_click_resend"

    .line 1177
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1178
    iget-object p1, p0, Lo/findAnimation$onPostMessage;->extraCallback:Lo/findAnimation;

    invoke-static {p1}, Lo/findAnimation;->onRelationshipValidationResult(Lo/findAnimation;)V

    .line 1179
    iget-object p1, p0, Lo/findAnimation$onPostMessage;->extraCallback:Lo/findAnimation;

    invoke-static {p1}, Lo/findAnimation;->ICustomTabsCallback(Lo/findAnimation;)Lo/recycleFromEnd;

    move-result-object p1

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1180
    new-instance p1, Lo/onActivityResult;

    invoke-direct {p1}, Lo/onActivityResult;-><init>()V

    iget-object v0, p0, Lo/findAnimation$onPostMessage;->extraCallback:Lo/findAnimation;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v1, "context!!"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/findAnimation$onPostMessage;->extraCallback:Lo/findAnimation;

    const v2, 0x7f130347

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.otp_resent)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    .line 2027
    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "text"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2028
    sget v2, Lo/preferLastSpan$ICustomTabsCallback$Stub;->success_toast_layout:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1181
    iget-object p1, p0, Lo/findAnimation$onPostMessage;->extraCallback:Lo/findAnimation;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lo/getSpanGroupIndex;

    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/addWrite;

    .line 1182
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "user_consent"

    invoke-direct {v4, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v3

    const/4 v2, 0x1

    .line 1182
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "resend"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x2

    .line 1182
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "reset"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    .line 1182
    invoke-static {v1}, Lo/lambda$onError$1;->onMessageChannelReady([Lo/addWrite;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lo/findAnimation$onPostMessage;->extraCallback:Lo/findAnimation;

    invoke-static {v2}, Lo/findAnimation;->asInterface(Lo/findAnimation;)Lo/onDetach$write;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 4131
    :cond_1
    iget-object v2, v2, Lo/onDetach$write;->ICustomTabsCallback:Ljava/lang/String;

    .line 1182
    iget-object v3, p0, Lo/findAnimation$onPostMessage;->extraCallback:Lo/findAnimation;

    invoke-static {v3}, Lo/findAnimation;->onTransact(Lo/findAnimation;)Lo/setRecycleChildrenOnDetach;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, ""

    .line 1181
    :cond_3
    invoke-direct {v0, v1, v2, v3}, Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/getSpanGroupIndex;->onNavigationEvent(Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;)V

    goto :goto_0

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.lending.LendingWithdrawalFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_5
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
