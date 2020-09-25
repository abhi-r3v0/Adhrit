.class public final Lo/releaseVelocityTracker$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/releaseVelocityTracker;-><init>()V
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
        "com/dreamplug/fabrik/ui/lending/dialog/LoanPaymentDialog$clickListener$1",
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
.field final synthetic ICustomTabsCallback:Lo/releaseVelocityTracker;


# direct methods
.method constructor <init>(Lo/releaseVelocityTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lo/releaseVelocityTracker$onMessageChannelReady;->ICustomTabsCallback:Lo/releaseVelocityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "type"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "data"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, -0x5069748f

    const-string v5, "context!!"

    const-string v6, "pairs"

    const-string/jumbo v7, "stash_emi_repayment_option_click"

    const-string v8, "context"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v3, v4, :cond_a

    const v4, 0x1b0a8

    if-eq v3, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v3, "pay"

    .line 190
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 191
    instance-of v1, v2, Lo/setupCallbacks;

    if-eqz v1, :cond_13

    new-array v1, v11, [Lo/addWrite;

    .line 192
    check-cast v2, Lo/setupCallbacks;

    .line 1035
    iget-object v3, v2, Lo/setupCallbacks;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;

    .line 1065
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;->onNavigationEvent:Ljava/lang/String;

    .line 2043
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v8, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v10

    .line 192
    invoke-static {v1, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v11}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 192
    invoke-static {v7, v3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 3035
    iget-object v1, v2, Lo/setupCallbacks;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;

    .line 3071
    iget-object v14, v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;->asInterface:Ljava/lang/String;

    if-eqz v14, :cond_3

    .line 194
    move-object v1, v14

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v10, 0x1

    :cond_1
    if-ne v10, v11, :cond_3

    .line 195
    new-instance v12, Lo/setReenterTransition$onPostMessage;

    invoke-direct {v12}, Lo/setReenterTransition$onPostMessage;-><init>()V

    iget-object v1, v0, Lo/releaseVelocityTracker$onMessageChannelReady;->ICustomTabsCallback:Lo/releaseVelocityTracker;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v13

    if-nez v13, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-static {v13, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x18

    invoke-static/range {v12 .. v18}, Lo/setReenterTransition$onPostMessage;->onMessageChannelReady(Lo/setReenterTransition$onPostMessage;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Integer;I)V

    return-void

    .line 197
    :cond_3
    iget-object v1, v0, Lo/releaseVelocityTracker$onMessageChannelReady;->ICustomTabsCallback:Lo/releaseVelocityTracker;

    .line 4000
    iget-object v1, v1, Lo/releaseVelocityTracker;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lo/getMoveDuration;

    .line 197
    iget-object v1, v0, Lo/releaseVelocityTracker$onMessageChannelReady;->ICustomTabsCallback:Lo/releaseVelocityTracker;

    invoke-static {v1}, Lo/releaseVelocityTracker;->getInterfaceDescriptor(Lo/releaseVelocityTracker;)Lo/onDetach$INotificationSideChannel$Default;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4162
    iget-object v1, v1, Lo/onDetach$INotificationSideChannel$Default;->onMessageChannelReady:Ljava/lang/String;

    move-object v11, v1

    goto :goto_0

    :cond_4
    move-object v11, v9

    :goto_0
    if-nez v11, :cond_5

    .line 197
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    iget-object v1, v0, Lo/releaseVelocityTracker$onMessageChannelReady;->ICustomTabsCallback:Lo/releaseVelocityTracker;

    invoke-static {v1}, Lo/releaseVelocityTracker;->getInterfaceDescriptor(Lo/releaseVelocityTracker;)Lo/onDetach$INotificationSideChannel$Default;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 5162
    iget-object v9, v1, Lo/onDetach$INotificationSideChannel$Default;->ICustomTabsCallback:Ljava/lang/String;

    :cond_6
    move-object v12, v9

    if-nez v12, :cond_7

    .line 197
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 6035
    :cond_7
    iget-object v1, v2, Lo/setupCallbacks;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;

    .line 6067
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;->ICustomTabsCallback:Ljava/lang/Double;

    if-eqz v1, :cond_8

    .line 197
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    goto :goto_1

    :cond_8
    const-wide/16 v3, 0x0

    :goto_1
    move-wide v13, v3

    .line 7035
    iget-object v1, v2, Lo/setupCallbacks;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;

    .line 7065
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;->onNavigationEvent:Ljava/lang/String;

    if-nez v1, :cond_9

    const-string v1, "NA"

    :cond_9
    move-object v15, v1

    .line 8035
    iget-object v1, v2, Lo/setupCallbacks;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;

    .line 8068
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;

    move-object/from16 v16, v1

    .line 197
    invoke-virtual/range {v10 .. v16}, Lo/getMoveDuration;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;)V

    return-void

    :cond_a
    const-string v3, "custom"

    .line 202
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 203
    instance-of v1, v2, Lo/setupCallbacks;

    if-eqz v1, :cond_13

    new-array v1, v11, [Lo/addWrite;

    .line 204
    check-cast v2, Lo/setupCallbacks;

    .line 9035
    iget-object v3, v2, Lo/setupCallbacks;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;

    .line 9065
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;->onNavigationEvent:Ljava/lang/String;

    .line 10043
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v8, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v10

    .line 204
    invoke-static {v1, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v11}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 204
    invoke-static {v7, v3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 11035
    iget-object v1, v2, Lo/setupCallbacks;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;

    .line 11071
    iget-object v14, v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;->asInterface:Ljava/lang/String;

    if-eqz v14, :cond_d

    .line 206
    move-object v1, v14

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_b

    const/4 v10, 0x1

    :cond_b
    if-ne v10, v11, :cond_d

    .line 207
    new-instance v12, Lo/setReenterTransition$onPostMessage;

    invoke-direct {v12}, Lo/setReenterTransition$onPostMessage;-><init>()V

    iget-object v1, v0, Lo/releaseVelocityTracker$onMessageChannelReady;->ICustomTabsCallback:Lo/releaseVelocityTracker;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v13

    if-nez v13, :cond_c

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_c
    invoke-static {v13, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x18

    invoke-static/range {v12 .. v18}, Lo/setReenterTransition$onPostMessage;->onMessageChannelReady(Lo/setReenterTransition$onPostMessage;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Integer;I)V

    return-void

    .line 209
    :cond_d
    iget-object v1, v0, Lo/releaseVelocityTracker$onMessageChannelReady;->ICustomTabsCallback:Lo/releaseVelocityTracker;

    new-instance v3, Lo/endRecoverAnimation;

    invoke-direct {v3}, Lo/endRecoverAnimation;-><init>()V

    invoke-static {v1, v3}, Lo/releaseVelocityTracker;->ICustomTabsCallback(Lo/releaseVelocityTracker;Lo/endRecoverAnimation;)V

    .line 210
    iget-object v1, v0, Lo/releaseVelocityTracker$onMessageChannelReady;->ICustomTabsCallback:Lo/releaseVelocityTracker;

    invoke-static {v1}, Lo/releaseVelocityTracker;->ICustomTabsService(Lo/releaseVelocityTracker;)Lo/endRecoverAnimation;

    move-result-object v1

    if-nez v1, :cond_e

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_e
    new-instance v3, Lo/releaseVelocityTracker$onMessageChannelReady$onNavigationEvent;

    invoke-direct {v3, v0}, Lo/releaseVelocityTracker$onMessageChannelReady$onNavigationEvent;-><init>(Lo/releaseVelocityTracker$onMessageChannelReady;)V

    check-cast v3, Lo/getServerTime;

    .line 12045
    iput-object v3, v1, Lo/endRecoverAnimation;->onNavigationEvent:Lo/getServerTime;

    .line 213
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 214
    iget-object v3, v0, Lo/releaseVelocityTracker$onMessageChannelReady;->ICustomTabsCallback:Lo/releaseVelocityTracker;

    invoke-static {v3}, Lo/releaseVelocityTracker;->getInterfaceDescriptor(Lo/releaseVelocityTracker;)Lo/onDetach$INotificationSideChannel$Default;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 12162
    iget-object v3, v3, Lo/onDetach$INotificationSideChannel$Default;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_2

    :cond_f
    move-object v3, v9

    :goto_2
    const-string/jumbo v4, "source_id"

    .line 214
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v3, v0, Lo/releaseVelocityTracker$onMessageChannelReady;->ICustomTabsCallback:Lo/releaseVelocityTracker;

    invoke-static {v3}, Lo/releaseVelocityTracker;->getInterfaceDescriptor(Lo/releaseVelocityTracker;)Lo/onDetach$INotificationSideChannel$Default;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 13162
    iget-object v9, v3, Lo/onDetach$INotificationSideChannel$Default;->ICustomTabsCallback:Ljava/lang/String;

    :cond_10
    const-string v3, "loan_id"

    .line 215
    invoke-virtual {v1, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14035
    iget-object v2, v2, Lo/setupCallbacks;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;

    .line 14065
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;->onNavigationEvent:Ljava/lang/String;

    .line 216
    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v2, v0, Lo/releaseVelocityTracker$onMessageChannelReady;->ICustomTabsCallback:Lo/releaseVelocityTracker;

    invoke-static {v2}, Lo/releaseVelocityTracker;->ICustomTabsService(Lo/releaseVelocityTracker;)Lo/endRecoverAnimation;

    move-result-object v2

    if-nez v2, :cond_11

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_11
    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 218
    iget-object v1, v0, Lo/releaseVelocityTracker$onMessageChannelReady;->ICustomTabsCallback:Lo/releaseVelocityTracker;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 219
    iget-object v2, v0, Lo/releaseVelocityTracker$onMessageChannelReady;->ICustomTabsCallback:Lo/releaseVelocityTracker;

    invoke-static {v2}, Lo/releaseVelocityTracker;->ICustomTabsService(Lo/releaseVelocityTracker;)Lo/endRecoverAnimation;

    move-result-object v2

    if-nez v2, :cond_12

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_12
    const-string v3, "PaymentCustomAmountDialog"

    invoke-virtual {v2, v1, v3}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    :cond_13
    :goto_3
    return-void
.end method
