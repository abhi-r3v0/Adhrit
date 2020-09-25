.class final Lo/setExitSharedElementCallback$newSession;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setExitSharedElementCallback;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onPostMessage:Lo/setExitSharedElementCallback;


# direct methods
.method constructor <init>(Lo/setExitSharedElementCallback;)V
    .locals 0

    iput-object p1, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 57
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1295
    iget-object p1, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    .line 2251
    iget-object p1, p1, Lo/recycleFromEnd;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    .line 1295
    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    if-ne p1, v0, :cond_e

    .line 1296
    iget-object p1, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->onNavigationEvent(Lo/setExitSharedElementCallback;)Ljava/lang/String;

    move-result-object p1

    .line 1297
    iget-object v0, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object v0

    .line 3040
    iget-object v0, v0, Lo/getSharedElementEnterTransition;->asInterface:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 3320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1297
    :goto_0
    check-cast v0, Lo/getSharedElementEnterTransition$onNavigationEvent;

    if-eqz v0, :cond_1

    .line 4026
    iget-object v0, v0, Lo/getSharedElementEnterTransition$onNavigationEvent;->onMessageChannelReady:Lo/onPrepareOptionsMenu;

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 1298
    :goto_1
    sget-object v1, Lo/onPrepareOptionsMenu$onMessageChannelReady;->onNavigationEvent:Lo/onPrepareOptionsMenu$onMessageChannelReady;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "null cannot be cast to non-null type kotlin.CharSequence"

    if-eqz v1, :cond_5

    .line 1299
    iget-object v0, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    const-string v1, "ad_setup_add_bank_actn_proceed_click"

    invoke-static {v0, v1}, Lo/setExitSharedElementCallback;->onNavigationEvent(Lo/setExitSharedElementCallback;Ljava/lang/String;)V

    .line 1300
    iget-object v0, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object v0

    .line 4031
    iget-object v0, v0, Lo/getSharedElementEnterTransition;->onMessageChannelReady:Lo/onDetach$asInterface;

    if-eqz v0, :cond_4

    .line 1301
    iget-object v0, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->onMessageChannelReady(Lo/setExitSharedElementCallback;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1302
    iget-object v0, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object v0

    sget-object v1, Lo/findLastCompletelyVisibleItemPositions;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1303
    iget-object v0, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object v0

    iget-object v1, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    invoke-static {v1}, Lo/setExitSharedElementCallback;->asInterface(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lo/getSharedElementEnterTransition;->onNavigationEvent(Lo/getSharedElementEnterTransition;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1305
    :cond_3
    sget-object v4, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const p1, 0x7f130023

    invoke-static {p1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1e

    invoke-static/range {v4 .. v10}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    goto/16 :goto_2

    .line 1308
    :cond_4
    iget-object p1, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object p1

    .line 4038
    iget-object p1, p1, Lo/getSharedElementEnterTransition;->asInterface:Lo/setActive;

    .line 1308
    new-instance v0, Lo/getSharedElementEnterTransition$onNavigationEvent;

    sget-object v1, Lo/onPrepareOptionsMenu$extraCallback;->ICustomTabsCallback:Lo/onPrepareOptionsMenu$extraCallback;

    check-cast v1, Lo/onPrepareOptionsMenu;

    invoke-direct {v0, v1}, Lo/getSharedElementEnterTransition$onNavigationEvent;-><init>(Lo/onPrepareOptionsMenu;)V

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1312
    :cond_5
    sget-object v1, Lo/onPrepareOptionsMenu$extraCallback;->ICustomTabsCallback:Lo/onPrepareOptionsMenu$extraCallback;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1313
    iget-object v0, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    const-string v1, "ad_setup_add_bank_re_actn_proceed_click"

    invoke-static {v0, v1}, Lo/setExitSharedElementCallback;->onNavigationEvent(Lo/setExitSharedElementCallback;Ljava/lang/String;)V

    .line 1314
    iget-object v0, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->onRelationshipValidationResult(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    invoke-static {v1}, Lo/setExitSharedElementCallback;->asInterface(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1315
    iget-object v0, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object v0

    sget-object v1, Lo/findLastCompletelyVisibleItemPositions;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1316
    iget-object v0, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object v0

    iget-object v1, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    invoke-static {v1}, Lo/setExitSharedElementCallback;->onRelationshipValidationResult(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lo/getSharedElementEnterTransition;->onNavigationEvent(Lo/getSharedElementEnterTransition;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1318
    :cond_7
    sget-object v4, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1e

    const-string v5, "account number does not match with the previously entered number"

    invoke-static/range {v4 .. v10}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_2

    .line 1314
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1322
    :cond_a
    sget-object v1, Lo/onPrepareOptionsMenu$onNavigationEvent;->onPostMessage:Lo/onPrepareOptionsMenu$onNavigationEvent;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1323
    iget-object v0, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    const-string v1, "ad_setup_add_bank_ifsc_proceed_click"

    invoke-static {v0, v1}, Lo/setExitSharedElementCallback;->onNavigationEvent(Lo/setExitSharedElementCallback;Ljava/lang/String;)V

    .line 1324
    sget-object v0, Lo/requireContext;->onMessageChannelReady:Lo/requireContext;

    const-string v0, "ifsc"

    invoke-static {v0, p1}, Lo/requireContext;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1325
    iget-object p1, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object p1

    .line 5038
    iget-object p1, p1, Lo/getSharedElementEnterTransition;->asInterface:Lo/setActive;

    .line 1325
    new-instance v0, Lo/getSharedElementEnterTransition$onNavigationEvent;

    sget-object v1, Lo/onPrepareOptionsMenu$onMessageChannelReady;->onNavigationEvent:Lo/onPrepareOptionsMenu$onMessageChannelReady;

    check-cast v1, Lo/onPrepareOptionsMenu;

    invoke-direct {v0, v1}, Lo/getSharedElementEnterTransition$onNavigationEvent;-><init>(Lo/onPrepareOptionsMenu;)V

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    goto :goto_2

    .line 1327
    :cond_b
    sget-object v3, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1e

    const-string v4, "please enter correct IFSC code"

    invoke-static/range {v3 .. v9}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 1331
    :cond_c
    :goto_2
    iget-object p1, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object p1

    .line 5042
    iget-object p1, p1, Lo/getSharedElementEnterTransition;->onTransact:Lo/setActive;

    .line 1331
    iget-object v0, p0, Lo/setExitSharedElementCallback$newSession;->onPostMessage:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object v0

    .line 6038
    iget-object v0, v0, Lo/getSharedElementEnterTransition;->asInterface:Lo/setActive;

    .line 6320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 6321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_d

    move-object v2, v0

    .line 1331
    :cond_d
    invoke-virtual {p1, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 57
    :cond_e
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
