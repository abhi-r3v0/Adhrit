.class final Lo/releaseVelocityTracker$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/releaseVelocityTracker;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;",
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
.field private synthetic extraCallback:Lo/releaseVelocityTracker;


# direct methods
.method constructor <init>(Lo/releaseVelocityTracker;)V
    .locals 0

    iput-object p1, p0, Lo/releaseVelocityTracker$onTransact;->extraCallback:Lo/releaseVelocityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 9

    .line 44
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;

    .line 1145
    iget-object v0, p0, Lo/releaseVelocityTracker$onTransact;->extraCallback:Lo/releaseVelocityTracker;

    invoke-static {v0}, Lo/releaseVelocityTracker;->ICustomTabsCallback(Lo/releaseVelocityTracker;)Lo/prependViewToAllSpans;

    move-result-object v0

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    if-eqz p1, :cond_9

    .line 2013
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 2027
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;

    if-eqz v0, :cond_7

    .line 1148
    iget-object v2, p0, Lo/releaseVelocityTracker$onTransact;->extraCallback:Lo/releaseVelocityTracker;

    invoke-static {v2}, Lo/releaseVelocityTracker;->onPostMessage(Lo/releaseVelocityTracker;)Landroid/widget/TextView;

    move-result-object v2

    .line 2048
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v3, :cond_0

    .line 3000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 1148
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1149
    iget-object v2, p0, Lo/releaseVelocityTracker$onTransact;->extraCallback:Lo/releaseVelocityTracker;

    invoke-static {v2}, Lo/releaseVelocityTracker;->onMessageChannelReady(Lo/releaseVelocityTracker;)Landroid/widget/TextView;

    move-result-object v2

    .line 3049
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz v3, :cond_1

    .line 4000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 1149
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    iget-object v2, p0, Lo/releaseVelocityTracker$onTransact;->extraCallback:Lo/releaseVelocityTracker;

    invoke-static {v2}, Lo/releaseVelocityTracker;->onRelationshipValidationResult(Lo/releaseVelocityTracker;)Landroid/widget/TextView;

    move-result-object v2

    .line 4050
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    if-eqz v3, :cond_2

    .line 4125
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->asInterface:Lo/getTargetScrollPosition;

    if-eqz v3, :cond_2

    .line 5000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    move-object v3, v1

    .line 1150
    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    iget-object v2, p0, Lo/releaseVelocityTracker$onTransact;->extraCallback:Lo/releaseVelocityTracker;

    invoke-static {v2}, Lo/releaseVelocityTracker;->ICustomTabsCallback$Stub(Lo/releaseVelocityTracker;)Landroid/widget/TextView;

    move-result-object v2

    .line 5050
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    if-eqz v3, :cond_3

    .line 5124
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->ICustomTabsCallback$Stub:Lo/getTargetScrollPosition;

    if-eqz v3, :cond_3

    .line 6000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_3
    move-object v3, v1

    .line 1151
    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    iget-object v2, p0, Lo/releaseVelocityTracker$onTransact;->extraCallback:Lo/releaseVelocityTracker;

    invoke-static {v2}, Lo/releaseVelocityTracker;->onTransact(Lo/releaseVelocityTracker;)Landroid/widget/TextView;

    move-result-object v2

    .line 6050
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    if-eqz v3, :cond_4

    .line 6121
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v3, :cond_4

    .line 7000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_4

    :cond_4
    move-object v3, v1

    .line 1152
    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    iget-object v2, p0, Lo/releaseVelocityTracker$onTransact;->extraCallback:Lo/releaseVelocityTracker;

    invoke-static {v2}, Lo/releaseVelocityTracker;->asBinder(Lo/releaseVelocityTracker;)Landroid/widget/TextView;

    move-result-object v2

    .line 7050
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    if-eqz v3, :cond_5

    .line 7122
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->asBinder:Lo/getTargetScrollPosition;

    if-eqz v3, :cond_5

    .line 8000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_5

    :cond_5
    move-object v3, v1

    .line 1153
    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8053
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onTransact:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 1156
    check-cast v0, Ljava/lang/Iterable;

    .line 1240
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;

    .line 1157
    new-instance v4, Lo/setupCallbacks;

    invoke-direct {v4, v3}, Lo/setupCallbacks;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;)V

    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1159
    :cond_6
    iget-object v0, p0, Lo/releaseVelocityTracker$onTransact;->extraCallback:Lo/releaseVelocityTracker;

    invoke-static {v0}, Lo/releaseVelocityTracker;->asInterface(Lo/releaseVelocityTracker;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    check-cast v2, Ljava/util/List;

    const-string/jumbo v3, "value"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 9038
    invoke-virtual {v0, v2}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 1161
    :cond_7
    iget-object v0, p0, Lo/releaseVelocityTracker$onTransact;->extraCallback:Lo/releaseVelocityTracker;

    invoke-static {v0}, Lo/releaseVelocityTracker;->warmup(Lo/releaseVelocityTracker;)Landroid/widget/TextView;

    move-result-object v0

    .line 10013
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;

    if-eqz p1, :cond_8

    .line 10032
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lending/model/NoteDetails;

    if-eqz p1, :cond_8

    .line 10040
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/NoteDetails;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz p1, :cond_8

    .line 11000
    iget-object p1, p1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    .line 1161
    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1164
    :cond_9
    new-instance v2, Lo/setReenterTransition$onPostMessage;

    invoke-direct {v2}, Lo/setReenterTransition$onPostMessage;-><init>()V

    iget-object p1, p0, Lo/releaseVelocityTracker$onTransact;->extraCallback:Lo/releaseVelocityTracker;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string p1, "requireContext()"

    invoke-static {v3, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lo/releaseVelocityTracker$onTransact;->extraCallback:Lo/releaseVelocityTracker;

    const v0, 0x7f130412

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string p1, "getString(R.string.something_went_wrong)"

    invoke-static {v4, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    invoke-static/range {v2 .. v8}, Lo/setReenterTransition$onPostMessage;->onMessageChannelReady(Lo/setReenterTransition$onPostMessage;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Integer;I)V

    .line 1165
    iget-object p1, p0, Lo/releaseVelocityTracker$onTransact;->extraCallback:Lo/releaseVelocityTracker;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    return-void
.end method
