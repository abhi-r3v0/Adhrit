.class final Lo/ItemTouchHelper$Callback$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ItemTouchHelper$Callback;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field private synthetic onNavigationEvent:Lo/ItemTouchHelper$Callback;


# direct methods
.method constructor <init>(Lo/ItemTouchHelper$Callback;)V
    .locals 0

    iput-object p1, p0, Lo/ItemTouchHelper$Callback$asInterface;->onNavigationEvent:Lo/ItemTouchHelper$Callback;

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

    const/4 p1, 0x1

    new-array v0, p1, [Lo/addWrite;

    .line 1078
    iget-object v1, p0, Lo/ItemTouchHelper$Callback$asInterface;->onNavigationEvent:Lo/ItemTouchHelper$Callback;

    invoke-static {v1}, Lo/ItemTouchHelper$Callback;->onPostMessage(Lo/ItemTouchHelper$Callback;)Lo/onDetach$INotificationSideChannel$Default;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1162
    iget-object v1, v1, Lo/onDetach$INotificationSideChannel$Default;->onNavigationEvent:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 2043
    :goto_0
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "source"

    invoke-direct {v3, v4, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const-string v1, "pairs"

    .line 1078
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "stash_label_stash_click_done"

    .line 1078
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1079
    iget-object p1, p0, Lo/ItemTouchHelper$Callback$asInterface;->onNavigationEvent:Lo/ItemTouchHelper$Callback;

    invoke-static {p1}, Lo/ItemTouchHelper$Callback;->onPostMessage(Lo/ItemTouchHelper$Callback;)Lo/onDetach$INotificationSideChannel$Default;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2162
    iget-object p1, p1, Lo/onDetach$INotificationSideChannel$Default;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_7

    .line 1079
    iget-object p1, p0, Lo/ItemTouchHelper$Callback$asInterface;->onNavigationEvent:Lo/ItemTouchHelper$Callback;

    invoke-static {p1}, Lo/ItemTouchHelper$Callback;->onPostMessage(Lo/ItemTouchHelper$Callback;)Lo/onDetach$INotificationSideChannel$Default;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3162
    iget-object p1, p1, Lo/onDetach$INotificationSideChannel$Default;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_7

    .line 1080
    iget-object p1, p0, Lo/ItemTouchHelper$Callback$asInterface;->onNavigationEvent:Lo/ItemTouchHelper$Callback;

    invoke-static {p1}, Lo/ItemTouchHelper$Callback;->ICustomTabsCallback(Lo/ItemTouchHelper$Callback;)Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->onMessageChannelReady(Landroid/view/View;)V

    .line 1081
    iget-object p1, p0, Lo/ItemTouchHelper$Callback$asInterface;->onNavigationEvent:Lo/ItemTouchHelper$Callback;

    invoke-static {p1}, Lo/ItemTouchHelper$Callback;->onNavigationEvent(Lo/ItemTouchHelper$Callback;)Lo/prepareForDrop;

    move-result-object p1

    iget-object v0, p0, Lo/ItemTouchHelper$Callback$asInterface;->onNavigationEvent:Lo/ItemTouchHelper$Callback;

    invoke-static {v0}, Lo/ItemTouchHelper$Callback;->onPostMessage(Lo/ItemTouchHelper$Callback;)Lo/onDetach$INotificationSideChannel$Default;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4162
    iget-object v0, v0, Lo/onDetach$INotificationSideChannel$Default;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    if-nez v0, :cond_4

    .line 1081
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    iget-object v1, p0, Lo/ItemTouchHelper$Callback$asInterface;->onNavigationEvent:Lo/ItemTouchHelper$Callback;

    invoke-static {v1}, Lo/ItemTouchHelper$Callback;->onPostMessage(Lo/ItemTouchHelper$Callback;)Lo/onDetach$INotificationSideChannel$Default;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 5162
    iget-object v2, v1, Lo/onDetach$INotificationSideChannel$Default;->ICustomTabsCallback:Ljava/lang/String;

    :cond_5
    if-nez v2, :cond_6

    .line 1081
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    iget-object v1, p0, Lo/ItemTouchHelper$Callback$asInterface;->onNavigationEvent:Lo/ItemTouchHelper$Callback;

    invoke-static {v1}, Lo/ItemTouchHelper$Callback;->ICustomTabsCallback(Lo/ItemTouchHelper$Callback;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "locId"

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "loanId"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "name"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7000
    iget-object v3, p1, Lo/prepareForDrop;->extraCallback:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/calculateItemBorders;

    .line 6024
    invoke-interface {v3, v0, v2, v1}, Lo/calculateItemBorders;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;

    move-result-object v0

    .line 6025
    new-instance v1, Lo/prepareForDrop$extraCallback;

    invoke-direct {v1, p1}, Lo/prepareForDrop$extraCallback;-><init>(Lo/prepareForDrop;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 38
    :cond_7
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
