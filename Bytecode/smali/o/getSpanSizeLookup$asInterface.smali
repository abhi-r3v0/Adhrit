.class final Lo/getSpanSizeLookup$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSpanSizeLookup;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic onNavigationEvent:Lo/getSpanSizeLookup;


# direct methods
.method constructor <init>(Lo/getSpanSizeLookup;)V
    .locals 0

    iput-object p1, p0, Lo/getSpanSizeLookup$asInterface;->onNavigationEvent:Lo/getSpanSizeLookup;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 46
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "stash_accept_autopay_setup_click_proceed"

    .line 1199
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1200
    iget-object p1, p0, Lo/getSpanSizeLookup$asInterface;->onNavigationEvent:Lo/getSpanSizeLookup;

    invoke-static {p1}, Lo/getSpanSizeLookup;->onPostMessage(Lo/getSpanSizeLookup;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 1201
    iget-object p1, p0, Lo/getSpanSizeLookup$asInterface;->onNavigationEvent:Lo/getSpanSizeLookup;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lo/cachePreLayoutSpanMapping;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lo/cachePreLayoutSpanMapping;

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    new-array v1, v0, [Lo/addWrite;

    iget-object v2, p0, Lo/getSpanSizeLookup$asInterface;->onNavigationEvent:Lo/getSpanSizeLookup;

    invoke-static {v2}, Lo/getSpanSizeLookup;->ICustomTabsCallback(Lo/getSpanSizeLookup;)Lo/setSpanSizeLookup;

    move-result-object v2

    .line 2012
    iget-object v2, v2, Lo/setSpanSizeLookup;->onMessageChannelReady:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 1201
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2043
    new-instance v5, Lo/addWrite;

    const-string v6, "disclaimer_shown"

    invoke-direct {v5, v6, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v3

    .line 1202
    iget-object v2, p0, Lo/getSpanSizeLookup$asInterface;->onNavigationEvent:Lo/getSpanSizeLookup;

    invoke-static {v2}, Lo/getSpanSizeLookup;->ICustomTabsCallback(Lo/getSpanSizeLookup;)Lo/setSpanSizeLookup;

    move-result-object v2

    .line 3011
    iget-object v2, v2, Lo/setSpanSizeLookup;->ICustomTabsCallback:Ljava/lang/String;

    .line 3043
    new-instance v3, Lo/addWrite;

    const-string v5, "bank"

    invoke-direct {v3, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v4

    const-string v2, "pairs"

    .line 1201
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "stash_confirm_mandate_details_screen_load"

    .line 1201
    invoke-interface {p1, v0, v2}, Lo/cachePreLayoutSpanMapping;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 1203
    :cond_3
    iget-object p1, p0, Lo/getSpanSizeLookup$asInterface;->onNavigationEvent:Lo/getSpanSizeLookup;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->autoDebitPitch:I

    invoke-virtual {p1, v0}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance v0, Lo/getSpanSizeLookup$asInterface$3;

    invoke-direct {v0, p0}, Lo/getSpanSizeLookup$asInterface$3;-><init>(Lo/getSpanSizeLookup$asInterface;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
