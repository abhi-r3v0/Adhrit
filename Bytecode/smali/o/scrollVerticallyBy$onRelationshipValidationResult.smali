.class public final Lo/scrollVerticallyBy$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/scrollVerticallyBy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lending/LoanManagementFragment$onItemClickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/scrollVerticallyBy;


# direct methods
.method constructor <init>(Lo/scrollVerticallyBy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lo/scrollVerticallyBy$onRelationshipValidationResult;->onNavigationEvent:Lo/scrollVerticallyBy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 5

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const-string v0, "loan_details"

    const/4 v1, 0x0

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p2, "back"

    .line 152
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 153
    iget-object p1, p0, Lo/scrollVerticallyBy$onRelationshipValidationResult;->onNavigationEvent:Lo/scrollVerticallyBy;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Lo/onSessionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    goto/16 :goto_2

    :sswitch_1
    const-string p3, "cta"

    .line 142
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 143
    instance-of p1, p2, Lo/ensureAnchorIsInCorrectSpan$onMessageChannelReady;

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    check-cast p1, Lo/ensureAnchorIsInCorrectSpan$onMessageChannelReady;

    if-eqz p1, :cond_5

    .line 144
    check-cast p2, Lo/ensureAnchorIsInCorrectSpan$onMessageChannelReady;

    .line 3091
    iget-object p1, p2, Lo/ensureAnchorIsInCorrectSpan$onMessageChannelReady;->onPostMessage:Lo/StaggeredGridLayoutManager;

    if-eqz p1, :cond_4

    .line 144
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    .line 4015
    iget-object p2, p1, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz p2, :cond_1

    .line 5000
    iget-object p2, p2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object p2, v1

    .line 145
    :goto_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string v0, "java.util.Locale.getDefault()"

    invoke-static {p3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-virtual {p2, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    new-array v0, p3, [Lo/addWrite;

    const/4 v2, 0x0

    .line 5043
    new-instance v3, Lo/addWrite;

    const-string v4, "cta_title"

    invoke-direct {v3, v4, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v2

    const-string p2, "pairs"

    .line 146
    invoke-static {v0, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    new-instance p2, Ljava/util/HashMap;

    invoke-static {p3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p3, "stash_loan_management_action_item_click"

    .line 146
    invoke-static {p3, p2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 148
    sget-object p2, Lo/getMovementFlags;->ICustomTabsCallback:Lo/getMovementFlags;

    iget-object p2, p0, Lo/scrollVerticallyBy$onRelationshipValidationResult;->onNavigationEvent:Lo/scrollVerticallyBy;

    check-cast p2, Landroidx/fragment/app/Fragment;

    new-instance p3, Lo/getMovementFlags$onMessageChannelReady;

    new-instance v0, Lo/onDetach$INotificationSideChannel$Stub$Proxy;

    iget-object v2, p0, Lo/scrollVerticallyBy$onRelationshipValidationResult;->onNavigationEvent:Lo/scrollVerticallyBy;

    invoke-static {v2}, Lo/scrollVerticallyBy;->onMessageChannelReady(Lo/scrollVerticallyBy;)Lo/ensureAnchorIsInCorrectSpan;

    move-result-object v2

    .line 6030
    iget-object v2, v2, Lo/ensureAnchorIsInCorrectSpan;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;

    if-eqz v2, :cond_2

    .line 6031
    iget-object v1, v2, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;

    .line 148
    :cond_2
    invoke-direct {v0, v1}, Lo/onDetach$INotificationSideChannel$Stub$Proxy;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;)V

    check-cast v0, Lo/StaggeredGridLayoutManager;

    invoke-direct {p3, p1, v0}, Lo/getMovementFlags$onMessageChannelReady;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/Cta;Lo/StaggeredGridLayoutManager;)V

    invoke-static {p2, p3}, Lo/getMovementFlags;->onNavigationEvent(Landroidx/fragment/app/Fragment;Lo/getMovementFlags$onMessageChannelReady;)V

    return-void

    .line 145
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.lending.model.Cta"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void

    .line 137
    :sswitch_2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lo/scrollVerticallyBy$onRelationshipValidationResult;->onNavigationEvent:Lo/scrollVerticallyBy;

    invoke-static {p1, p2}, Lo/scrollVerticallyBy;->onMessageChannelReady(Lo/scrollVerticallyBy;Lo/StaggeredGridLayoutManager;)V

    return-void

    :sswitch_3
    const-string p3, "repayment_schedule"

    .line 138
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lo/scrollVerticallyBy$onRelationshipValidationResult;->onNavigationEvent:Lo/scrollVerticallyBy;

    invoke-static {p1, p2}, Lo/scrollVerticallyBy;->onPostMessage(Lo/scrollVerticallyBy;Lo/StaggeredGridLayoutManager;)V

    return-void

    :sswitch_4
    const-string/jumbo p3, "update_name"

    .line 139
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 140
    iget-object p1, p0, Lo/scrollVerticallyBy$onRelationshipValidationResult;->onNavigationEvent:Lo/scrollVerticallyBy;

    .line 1000
    iget-object p1, p1, Lo/scrollVerticallyBy;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    .line 140
    iget-object p3, p0, Lo/scrollVerticallyBy$onRelationshipValidationResult;->onNavigationEvent:Lo/scrollVerticallyBy;

    invoke-static {p3}, Lo/scrollVerticallyBy;->ICustomTabsCallback(Lo/scrollVerticallyBy;)Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lo/scrollVerticallyBy$onRelationshipValidationResult;->onNavigationEvent:Lo/scrollVerticallyBy;

    invoke-static {v2}, Lo/scrollVerticallyBy;->onPostMessage(Lo/scrollVerticallyBy;)Ljava/lang/String;

    move-result-object v2

    instance-of v3, p2, Lo/startLoading$onNavigationEvent;

    if-nez v3, :cond_6

    move-object p2, v1

    :cond_6
    check-cast p2, Lo/startLoading$onNavigationEvent;

    if-eqz p2, :cond_7

    .line 1037
    iget-object p2, p2, Lo/startLoading$onNavigationEvent;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz p2, :cond_7

    .line 2000
    iget-object p2, p2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    .line 140
    :cond_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "source"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "locId"

    invoke-static {p3, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loanId"

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {p2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2484
    new-instance v1, Lo/onGetChildDrawingOrder$onProgressUpdate;

    new-instance v3, Lo/onDetach$INotificationSideChannel$Default;

    invoke-direct {v3, p3, v2, p2, v0}, Lo/onDetach$INotificationSideChannel$Default;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lo/onGetChildDrawingOrder$onProgressUpdate;-><init>(Lo/onDetach$INotificationSideChannel$Default;)V

    check-cast v1, Lo/getRemoveDuration;

    invoke-virtual {p1, v1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_8
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2230efbf -> :sswitch_4
        -0x8043f1d -> :sswitch_3
        -0x340920d -> :sswitch_2
        0x18210 -> :sswitch_1
        0x2e04e7 -> :sswitch_0
    .end sparse-switch
.end method
