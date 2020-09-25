.class final Lo/scrollVerticallyBy$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/scrollVerticallyBy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/util/List<",
        "+",
        "Lo/StaggeredGridLayoutManager;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/scrollVerticallyBy;


# direct methods
.method constructor <init>(Lo/scrollVerticallyBy;)V
    .locals 0

    iput-object p1, p0, Lo/scrollVerticallyBy$extraCallback;->extraCallback:Lo/scrollVerticallyBy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 10

    .line 46
    check-cast p1, Ljava/util/List;

    .line 1101
    iget-object v0, p0, Lo/scrollVerticallyBy$extraCallback;->extraCallback:Lo/scrollVerticallyBy;

    invoke-static {v0}, Lo/scrollVerticallyBy;->onNavigationEvent(Lo/scrollVerticallyBy;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 1102
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_e

    .line 1103
    iget-object v1, p0, Lo/scrollVerticallyBy$extraCallback;->extraCallback:Lo/scrollVerticallyBy;

    invoke-static {v1}, Lo/scrollVerticallyBy;->onMessageChannelReady(Lo/scrollVerticallyBy;)Lo/ensureAnchorIsInCorrectSpan;

    move-result-object v1

    .line 2030
    iget-object v1, v1, Lo/ensureAnchorIsInCorrectSpan;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3026
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_6

    .line 3212
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;->asInterface:Lcom/dreamplug/fabrik/ui/lending/model/EmiSchedule;

    if-eqz v4, :cond_6

    .line 3232
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lending/model/EmiSchedule;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiSchedule$Details;

    if-eqz v4, :cond_6

    .line 3238
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lending/model/EmiSchedule$Details;->onMessageChannelReady:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 1104
    check-cast v4, Ljava/lang/Iterable;

    .line 1245
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_3

    .line 1247
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dreamplug/fabrik/ui/lending/model/EmiSchedule$EmiCard;

    .line 3253
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lending/model/EmiSchedule$EmiCard;->asBinder:Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    .line 1105
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    if-ltz v5, :cond_4

    goto :goto_1

    .line 3445
    :cond_4
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Count overflow has happened."

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1248
    :cond_5
    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_4

    :cond_6
    move-object v4, v3

    :goto_4
    const/16 v5, 0x9

    new-array v6, v5, [Lo/addWrite;

    .line 1108
    iget-object v7, p0, Lo/scrollVerticallyBy$extraCallback;->extraCallback:Lo/scrollVerticallyBy;

    invoke-static {v7}, Lo/scrollVerticallyBy;->onPostMessage(Lo/scrollVerticallyBy;)Ljava/lang/String;

    move-result-object v7

    .line 4043
    new-instance v8, Lo/addWrite;

    const-string v9, "loan_id"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v0

    .line 1109
    iget-object v7, p0, Lo/scrollVerticallyBy$extraCallback;->extraCallback:Lo/scrollVerticallyBy;

    invoke-static {v7}, Lo/scrollVerticallyBy;->ICustomTabsCallback$Stub(Lo/scrollVerticallyBy;)Lo/onDetach$validateRelationship;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 4045
    iget-object v7, v7, Lo/onDetach$validateRelationship;->onPostMessage:Ljava/lang/String;

    goto :goto_5

    :cond_7
    move-object v7, v3

    .line 5043
    :goto_5
    new-instance v8, Lo/addWrite;

    const-string/jumbo v9, "source"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v2

    const/4 v2, 0x2

    if-eqz v1, :cond_8

    .line 5212
    iget-object v7, v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;->asInterface:Lcom/dreamplug/fabrik/ui/lending/model/EmiSchedule;

    if-eqz v7, :cond_8

    .line 5232
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lending/model/EmiSchedule;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiSchedule$Details;

    if-eqz v7, :cond_8

    .line 5238
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lending/model/EmiSchedule$Details;->onMessageChannelReady:Ljava/util/List;

    if-eqz v7, :cond_8

    .line 1110
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_6

    :cond_8
    move-object v7, v3

    .line 6043
    :goto_6
    new-instance v8, Lo/addWrite;

    const-string/jumbo v9, "total_emi_count"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v2

    const/4 v2, 0x3

    .line 7043
    new-instance v7, Lo/addWrite;

    const-string/jumbo v8, "upcoming_emi_count"

    invoke-direct {v7, v8, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v2

    const/4 v2, 0x4

    if-eqz v1, :cond_9

    .line 7217
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsX;

    if-eqz v4, :cond_9

    .line 7291
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsX;->ICustomTabsCallback$Stub:Ljava/lang/Double;

    goto :goto_7

    :cond_9
    move-object v4, v3

    .line 8043
    :goto_7
    new-instance v7, Lo/addWrite;

    const-string v8, "principal_paid"

    invoke-direct {v7, v8, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v2

    const/4 v2, 0x5

    if-eqz v1, :cond_a

    .line 8217
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsX;

    if-eqz v4, :cond_a

    .line 8292
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsX;->asBinder:Lo/getTargetScrollPosition;

    if-eqz v4, :cond_a

    .line 9000
    iget-object v4, v4, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_8

    :cond_a
    move-object v4, v3

    .line 1113
    :goto_8
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 9043
    new-instance v7, Lo/addWrite;

    const-string v8, "remaining_months"

    invoke-direct {v7, v8, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v2

    const/4 v2, 0x6

    if-eqz v1, :cond_b

    .line 9217
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsX;

    if-eqz v4, :cond_b

    .line 9296
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsX;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Double;

    goto :goto_9

    :cond_b
    move-object v4, v3

    .line 10043
    :goto_9
    new-instance v7, Lo/addWrite;

    const-string v8, "principal_remaining"

    invoke-direct {v7, v8, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v2

    const/4 v2, 0x7

    if-eqz v1, :cond_c

    .line 10217
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsX;

    if-eqz v1, :cond_c

    .line 10288
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsX;->onMessageChannelReady:Ljava/lang/Double;

    goto :goto_a

    :cond_c
    move-object v1, v3

    .line 11043
    :goto_a
    new-instance v4, Lo/addWrite;

    const-string v7, "amount_paid"

    invoke-direct {v4, v7, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v6, v2

    const/16 v1, 0x8

    .line 1116
    iget-object v2, p0, Lo/scrollVerticallyBy$extraCallback;->extraCallback:Lo/scrollVerticallyBy;

    invoke-static {v2}, Lo/scrollVerticallyBy;->onMessageChannelReady(Lo/scrollVerticallyBy;)Lo/ensureAnchorIsInCorrectSpan;

    move-result-object v2

    .line 12030
    iget-object v2, v2, Lo/ensureAnchorIsInCorrectSpan;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;

    if-eqz v2, :cond_d

    .line 13028
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onTransact:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    if-eqz v2, :cond_d

    .line 13130
    iget-object v3, v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->warmup:Ljava/lang/Double;

    .line 14043
    :cond_d
    new-instance v2, Lo/addWrite;

    const-string v4, "loan_amount"

    invoke-direct {v2, v4, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v6, v1

    const-string v1, "pairs"

    .line 1107
    invoke-static {v6, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v6}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v2, "stash_loan_management_screen_load"

    .line 1107
    invoke-static {v2, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1118
    iget-object v1, p0, Lo/scrollVerticallyBy$extraCallback;->extraCallback:Lo/scrollVerticallyBy;

    invoke-static {v1}, Lo/scrollVerticallyBy;->asInterface(Lo/scrollVerticallyBy;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16000
    iget-object v1, v1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/checkSpanForGap;

    .line 15038
    invoke-virtual {v1, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 1119
    iget-object p1, p0, Lo/scrollVerticallyBy$extraCallback;->extraCallback:Lo/scrollVerticallyBy;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p1, v1}, Lo/scrollVerticallyBy;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_b

    .line 1121
    :cond_e
    iget-object p1, p0, Lo/scrollVerticallyBy$extraCallback;->extraCallback:Lo/scrollVerticallyBy;

    invoke-static {p1}, Lo/scrollVerticallyBy;->asBinder(Lo/scrollVerticallyBy;)Lo/onActivityResult;

    move-result-object p1

    iget-object v1, p0, Lo/scrollVerticallyBy$extraCallback;->extraCallback:Lo/scrollVerticallyBy;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/scrollVerticallyBy$extraCallback;->extraCallback:Lo/scrollVerticallyBy;

    const v3, 0x7f130412

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.something_went_wrong)"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "text"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16032
    sget v3, Lo/preferLastSpan$ICustomTabsCallback$Stub;->error_toast_layout:I

    invoke-virtual {p1, v1, v2, v0, v3}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1122
    iget-object p1, p0, Lo/scrollVerticallyBy$extraCallback;->extraCallback:Lo/scrollVerticallyBy;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Lo/onSessionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    .line 1124
    :goto_b
    iget-object p1, p0, Lo/scrollVerticallyBy$extraCallback;->extraCallback:Lo/scrollVerticallyBy;

    invoke-static {p1}, Lo/scrollVerticallyBy;->onMessageChannelReady(Lo/scrollVerticallyBy;)Lo/ensureAnchorIsInCorrectSpan;

    move-result-object p1

    .line 17030
    iget-object p1, p1, Lo/ensureAnchorIsInCorrectSpan;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;

    if-eqz p1, :cond_10

    .line 18024
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz p1, :cond_10

    .line 1125
    iget-object v1, p0, Lo/scrollVerticallyBy$extraCallback;->extraCallback:Lo/scrollVerticallyBy;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->bottomLayer:I

    invoke-virtual {v1, v2}, Lo/scrollVerticallyBy;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    const-string v2, "bottomLayer"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    const-string v3, "$this$visible"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19009
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    iget-object v1, p0, Lo/scrollVerticallyBy$extraCallback;->extraCallback:Lo/scrollVerticallyBy;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->payNow:I

    invoke-virtual {v1, v4}, Lo/scrollVerticallyBy;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/saveOldPosition;

    const-string v4, "payNow"

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20009
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    iget-object v0, p0, Lo/scrollVerticallyBy$extraCallback;->extraCallback:Lo/scrollVerticallyBy;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bottomLayer:I

    invoke-virtual {v0, v1}, Lo/scrollVerticallyBy;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20020
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onRelationshipValidationResult:Ljava/lang/Boolean;

    .line 1127
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_f
    const v1, 0x3f19999a    # 0.6f

    :goto_c
    invoke-virtual {v0, v1}, Lo/onChildrenLoaded;->setAlpha(F)V

    .line 1128
    iget-object v0, p0, Lo/scrollVerticallyBy$extraCallback;->extraCallback:Lo/scrollVerticallyBy;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->payNow:I

    invoke-virtual {v0, v1}, Lo/scrollVerticallyBy;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/saveOldPosition;

    new-instance v1, Lo/scrollVerticallyBy$extraCallback$onMessageChannelReady;

    invoke-direct {v1, p1, p0}, Lo/scrollVerticallyBy$extraCallback$onMessageChannelReady;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/Cta;Lo/scrollVerticallyBy$extraCallback;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    return-void
.end method
