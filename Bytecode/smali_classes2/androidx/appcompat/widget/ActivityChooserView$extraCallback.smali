.class Landroidx/appcompat/widget/ActivityChooserView$extraCallback;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:Z

.field final synthetic ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActivityChooserView;

.field extraCallback:Z

.field onMessageChannelReady:I

.field onNavigationEvent:Landroidx/appcompat/widget/ActivityChooserModel;

.field onPostMessage:Z


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0

    .line 688
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x4

    .line 680
    iput p1, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 9

    .line 793
    iget v0, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->onMessageChannelReady:I

    const v1, 0x7fffffff

    .line 794
    iput v1, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->onMessageChannelReady:I

    const/4 v1, 0x0

    .line 799
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 800
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 801
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->getCount()I

    move-result v4

    const/4 v5, 0x0

    move-object v7, v5

    const/4 v6, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 804
    invoke-virtual {p0, v1, v7, v5}, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 805
    invoke-virtual {v7, v2, v3}, Landroid/view/View;->measure(II)V

    .line 806
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 809
    :cond_0
    iput v0, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->onMessageChannelReady:I

    return v6
.end method

.method public getCount()I
    .locals 2

    .line 719
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->onNavigationEvent:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserModel;->onPostMessage()I

    move-result v0

    .line 720
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->extraCallback:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->onNavigationEvent:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 723
    :cond_0
    iget v1, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->onMessageChannelReady:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 724
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->onPostMessage:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 732
    invoke-virtual {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 742
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 737
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->extraCallback:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->onNavigationEvent:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 740
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->onNavigationEvent:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActivityChooserModel;->onPostMessage(I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 705
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->onPostMessage:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 753
    invoke-virtual {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_2

    if-eqz p2, :cond_0

    .line 756
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    if-eq p1, v2, :cond_1

    .line 757
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lo/extraCallback$ICustomTabsCallback$Stub;->abc_activity_chooser_view_list_item:I

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 759
    invoke-virtual {p2, v2}, Landroid/view/View;->setId(I)V

    .line 760
    sget p1, Lo/extraCallback$asBinder;->title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 761
    iget-object p3, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lo/extraCallback$onRelationshipValidationResult;->abc_activity_chooser_view_see_all:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2

    .line 786
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_3
    if-eqz p2, :cond_4

    .line 766
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v3, Lo/extraCallback$asBinder;->list_item:I

    if-eq v0, v3, :cond_5

    .line 767
    :cond_4
    iget-object p2, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lo/extraCallback$ICustomTabsCallback$Stub;->abc_activity_chooser_view_list_item:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 770
    :cond_5
    iget-object p3, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    .line 772
    sget v0, Lo/extraCallback$asBinder;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 773
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 774
    invoke-virtual {v3, p3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 776
    sget v0, Lo/extraCallback$asBinder;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 777
    invoke-virtual {v3, p3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    iget-boolean p3, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->extraCallback:Z

    if-eqz p3, :cond_6

    if-nez p1, :cond_6

    iget-boolean p1, p0, Landroidx/appcompat/widget/ActivityChooserView$extraCallback;->ICustomTabsCallback:Z

    if-eqz p1, :cond_6

    .line 780
    invoke-virtual {p2, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 782
    :cond_6
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
