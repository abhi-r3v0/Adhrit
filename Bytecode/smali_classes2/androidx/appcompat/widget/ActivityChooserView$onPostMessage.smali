.class Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0

    .line 578
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 616
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_1

    .line 617
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    .line 618
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$extraCallback;

    .line 4822
    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->onNavigationEvent:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 619
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$extraCallback;

    .line 4841
    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->onNavigationEvent:Landroidx/appcompat/widget/ActivityChooserModel;

    .line 619
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActivityChooserModel;->onNavigationEvent(Landroid/content/pm/ResolveInfo;)I

    move-result p1

    .line 620
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$extraCallback;

    .line 5841
    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->onNavigationEvent:Landroidx/appcompat/widget/ActivityChooserModel;

    .line 620
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 v0, 0x80000

    .line 622
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 623
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    .line 625
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_2

    .line 626
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 627
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    iget v0, p1, Landroidx/appcompat/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActivityChooserView;->showPopupUnchecked(I)V

    return-void

    .line 629
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public onDismiss()V
    .locals 2

    .line 6657
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 6658
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 651
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mProvider:Lo/IMediaControllerCallback;

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mProvider:Lo/IMediaControllerCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/IMediaControllerCallback;->subUiVisibilityChanged(Z)V

    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 584
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;

    .line 585
    invoke-virtual {p1, p3}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 588
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ActivityChooserView;->showPopupUnchecked(I)V

    return-void

    .line 609
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 591
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    .line 592
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    iget-boolean p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-eqz p1, :cond_5

    if-lez p3, :cond_4

    .line 595
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$extraCallback;

    .line 1841
    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->onNavigationEvent:Landroidx/appcompat/widget/ActivityChooserModel;

    .line 2532
    iget-object p2, p1, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter p2

    .line 2654
    :try_start_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady()Z

    move-result p4

    .line 2655
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserModel;->asBinder()Z

    move-result p5

    or-int/2addr p4, p5

    .line 2656
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserModel;->asInterface()V

    if-eqz p4, :cond_2

    .line 2658
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback()Z

    .line 2659
    invoke-virtual {p1}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 2535
    :cond_2
    iget-object p4, p1, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 2536
    iget-object p4, p1, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback:Ljava/util/List;

    const/4 p5, 0x0

    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    if-eqz p4, :cond_3

    .line 2541
    iget p4, p4, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget p5, p3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    sub-float/2addr p4, p5

    const/high16 p5, 0x40a00000    # 5.0f

    add-float/2addr p4, p5

    goto :goto_0

    :cond_3
    const/high16 p4, 0x3f800000    # 1.0f

    .line 2547
    :goto_0
    new-instance p5, Landroid/content/ComponentName;

    iget-object v0, p3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object p3, p3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {p5, v0, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2550
    new-instance p3, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    .line 2551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p3, p5, v0, v1, p4}, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 2552
    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback(Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;)Z

    .line 2553
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_4
    return-void

    .line 600
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$extraCallback;

    .line 2855
    iget-boolean p1, p1, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->extraCallback:Z

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 p3, p3, 0x1

    .line 601
    :goto_1
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$extraCallback;

    .line 3841
    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->onNavigationEvent:Landroidx/appcompat/widget/ActivityChooserModel;

    .line 601
    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    const/high16 p2, 0x80000

    .line 603
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 604
    iget-object p2, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 636
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_1

    .line 637
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$extraCallback;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->getCount()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_0

    .line 638
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    iput-boolean v0, p1, Landroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 639
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/ActivityChooserView;

    iget v1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActivityChooserView;->showPopupUnchecked(I)V

    :cond_0
    return v0

    .line 642
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
