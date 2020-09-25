.class final Lo/getSpanSizeLookup$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSpanSizeLookup;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/getSpanSizeLookup;


# direct methods
.method constructor <init>(Lo/getSpanSizeLookup;)V
    .locals 0

    iput-object p1, p0, Lo/getSpanSizeLookup$onRelationshipValidationResult;->onPostMessage:Lo/getSpanSizeLookup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 161
    iget-object v0, p0, Lo/getSpanSizeLookup$onRelationshipValidationResult;->onPostMessage:Lo/getSpanSizeLookup;

    invoke-static {v0}, Lo/getSpanSizeLookup;->extraCallback(Lo/getSpanSizeLookup;)Lo/onDetach$write;

    move-result-object v0

    .line 1131
    iget-object v0, v0, Lo/onDetach$write;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2130
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->newSession:Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;

    if-eqz v0, :cond_0

    .line 3016
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->extraCallback:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 161
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lo/getSpanSizeLookup$onRelationshipValidationResult;->onPostMessage:Lo/getSpanSizeLookup;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v3, v0, Lo/cachePreLayoutSpanMapping;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    check-cast v1, Lo/cachePreLayoutSpanMapping;

    if-eqz v1, :cond_2

    .line 4006
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v3, "stash_accept_autopay_setup_screen_load"

    invoke-interface {v1, v3, v0}, Lo/cachePreLayoutSpanMapping;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 163
    :cond_2
    iget-object v0, p0, Lo/getSpanSizeLookup$onRelationshipValidationResult;->onPostMessage:Lo/getSpanSizeLookup;

    invoke-static {v0}, Lo/getSpanSizeLookup;->onNavigationEvent(Lo/getSpanSizeLookup;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    goto :goto_5

    .line 165
    :cond_3
    iget-object v0, p0, Lo/getSpanSizeLookup$onRelationshipValidationResult;->onPostMessage:Lo/getSpanSizeLookup;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v3, v0, Lo/cachePreLayoutSpanMapping;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    check-cast v1, Lo/cachePreLayoutSpanMapping;

    if-eqz v1, :cond_7

    const/4 v0, 0x2

    new-array v3, v0, [Lo/addWrite;

    iget-object v4, p0, Lo/getSpanSizeLookup$onRelationshipValidationResult;->onPostMessage:Lo/getSpanSizeLookup;

    invoke-static {v4}, Lo/getSpanSizeLookup;->ICustomTabsCallback(Lo/getSpanSizeLookup;)Lo/setSpanSizeLookup;

    move-result-object v4

    .line 4012
    iget-object v4, v4, Lo/setSpanSizeLookup;->onMessageChannelReady:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_6

    .line 165
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-ne v4, v6, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 4043
    new-instance v7, Lo/addWrite;

    const-string v8, "disclaimer_shown"

    invoke-direct {v7, v8, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v3, v5

    .line 166
    iget-object v4, p0, Lo/getSpanSizeLookup$onRelationshipValidationResult;->onPostMessage:Lo/getSpanSizeLookup;

    invoke-static {v4}, Lo/getSpanSizeLookup;->ICustomTabsCallback(Lo/getSpanSizeLookup;)Lo/setSpanSizeLookup;

    move-result-object v4

    .line 5011
    iget-object v4, v4, Lo/setSpanSizeLookup;->ICustomTabsCallback:Ljava/lang/String;

    .line 5043
    new-instance v5, Lo/addWrite;

    const-string v7, "bank"

    invoke-direct {v5, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v6

    const-string v4, "pairs"

    .line 165
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    new-instance v4, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "stash_confirm_mandate_details_screen_load"

    .line 165
    invoke-interface {v1, v0, v4}, Lo/cachePreLayoutSpanMapping;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 167
    :cond_7
    iget-object v0, p0, Lo/getSpanSizeLookup$onRelationshipValidationResult;->onPostMessage:Lo/getSpanSizeLookup;

    invoke-static {v0}, Lo/getSpanSizeLookup;->onPostMessage(Lo/getSpanSizeLookup;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 170
    :goto_5
    iget-object v0, p0, Lo/getSpanSizeLookup$onRelationshipValidationResult;->onPostMessage:Lo/getSpanSizeLookup;

    invoke-static {v0}, Lo/getSpanSizeLookup;->onPostMessage(Lo/getSpanSizeLookup;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    new-instance v1, Lo/getSpanSizeLookup$onRelationshipValidationResult$1;

    invoke-direct {v1, p0}, Lo/getSpanSizeLookup$onRelationshipValidationResult$1;-><init>(Lo/getSpanSizeLookup$onRelationshipValidationResult;)V

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;

    const-string v2, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks."

    const-string v3, "BottomSheetBehavior"

    .line 5884
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5891
    iget-object v4, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->clear()V

    .line 5893
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lo/getSpanSizeLookup$onRelationshipValidationResult;->onPostMessage:Lo/getSpanSizeLookup;

    invoke-static {v0}, Lo/getSpanSizeLookup;->onNavigationEvent(Lo/getSpanSizeLookup;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    new-instance v1, Lo/getSpanSizeLookup$onRelationshipValidationResult$4;

    invoke-direct {v1, p0}, Lo/getSpanSizeLookup$onRelationshipValidationResult$4;-><init>(Lo/getSpanSizeLookup$onRelationshipValidationResult;)V

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;

    .line 6884
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6891
    iget-object v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->clear()V

    .line 6893
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
