.class Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;
.super Landroidx/appcompat/widget/ListPopupWindow;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/AppCompatSpinner$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/graphics/Rect;

.field private extraCallback:I

.field final synthetic onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

.field onNavigationEvent:Landroid/widget/ListAdapter;

.field private onPostMessage:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 968
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 969
    invoke-direct {p0, p2, p3, p4}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 965
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->ICustomTabsCallback:Landroid/graphics/Rect;

    .line 971
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    const/4 p2, 0x1

    .line 972
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    const/4 p2, 0x0

    .line 973
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 975
    new-instance p2, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$4;

    invoke-direct {p2, p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$4;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;Landroidx/appcompat/widget/AppCompatSpinner;)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;)V
    .locals 0

    .line 962
    invoke-super {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method ICustomTabsCallback()V
    .locals 7

    .line 1006
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1009
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1010
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1011
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    :goto_0
    move v1, v0

    goto :goto_1

    .line 1013
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1016
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 1017
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 1018
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1019
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    iget v4, v4, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_3

    .line 1020
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onNavigationEvent:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    .line 1021
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1020
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v4

    .line 1022
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1023
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move v4, v5

    :cond_2
    sub-int v5, v3, v0

    sub-int/2addr v5, v2

    .line 1027
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    goto :goto_2

    .line 1029
    :cond_3
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    iget v4, v4, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    sub-int v4, v3, v0

    sub-int/2addr v4, v2

    .line 1030
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    goto :goto_2

    .line 1032
    :cond_4
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    iget v4, v4, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 1034
    :goto_2
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v4}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    sub-int/2addr v3, v2

    .line 1035
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getWidth()I

    move-result v0

    sub-int/2addr v3, v0

    .line 1036
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onNavigationEvent()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/2addr v1, v3

    goto :goto_3

    .line 1038
    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onNavigationEvent()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 1040
    :goto_3
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setHorizontalOffset(I)V

    return-void
.end method

.method extraCallback(Landroid/view/View;)Z
    .locals 1

    .line 1102
    invoke-static {p1}, Lo/unregisterCallbackListener;->INotificationSideChannel$Stub(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMessageChannelReady()Ljava/lang/CharSequence;
    .locals 1

    .line 996
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onPostMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onMessageChannelReady(I)V
    .locals 0

    .line 1107
    iput p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->extraCallback:I

    return-void
.end method

.method public onNavigationEvent()I
    .locals 1

    .line 1112
    iget v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->extraCallback:I

    return v0
.end method

.method public onNavigationEvent(II)V
    .locals 4

    .line 1045
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 1047
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->ICustomTabsCallback()V

    const/4 v1, 0x2

    .line 1049
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1050
    invoke-super {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 1051
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    .line 1052
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1053
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 1054
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 1055
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 1057
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setSelection(I)V

    if-eqz v0, :cond_1

    return-void

    .line 1068
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1070
    new-instance p2, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$5;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$5;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;)V

    .line 1085
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1086
    new-instance p1, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$1;

    invoke-direct {p1, p0, p2}, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent$1;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public onNavigationEvent(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1002
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onPostMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 990
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 991
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onNavigationEvent;->onNavigationEvent:Landroid/widget/ListAdapter;

    return-void
.end method
