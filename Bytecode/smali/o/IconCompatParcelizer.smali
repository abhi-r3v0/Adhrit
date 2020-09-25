.class public Lo/IconCompatParcelizer;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lo/getExtras$extraCallback;
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# instance fields
.field private ICustomTabsCallback:Landroid/widget/ImageView;

.field private ICustomTabsCallback$Stub:Landroid/widget/ImageView;

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:I

.field private asBinder:Landroid/widget/ImageView;

.field private asInterface:Landroid/widget/TextView;

.field public extraCallback:Lo/MediaBrowserCompat;

.field private getInterfaceDescriptor:Landroid/graphics/drawable/Drawable;

.field private newSession:Landroid/content/Context;

.field private onMessageChannelReady:Landroid/widget/TextView;

.field private onNavigationEvent:Landroid/widget/RadioButton;

.field private onPostMessage:Landroid/widget/CheckBox;

.field private onRelationshipValidationResult:Landroid/widget/LinearLayout;

.field private onTransact:Landroid/graphics/drawable/Drawable;

.field private requestPostMessageChannel:Landroid/view/LayoutInflater;

.field private updateVisuals:Z

.field private warmup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 74
    sget v0, Lo/extraCallback$ICustomTabsCallback;->listMenuViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lo/IconCompatParcelizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo/extraCallback$asInterface;->MenuView:[I

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    .line 83
    sget p3, Lo/extraCallback$asInterface;->MenuView_android_itemBackground:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lo/IconCompatParcelizer;->onTransact:Landroid/graphics/drawable/Drawable;

    .line 84
    sget p3, Lo/extraCallback$asInterface;->MenuView_android_itemTextAppearance:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lo/IconCompatParcelizer;->ICustomTabsService:I

    .line 86
    sget p3, Lo/extraCallback$asInterface;->MenuView_preserveIconSpacing:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lo/IconCompatParcelizer;->warmup:Z

    .line 88
    iput-object p1, p0, Lo/IconCompatParcelizer;->newSession:Landroid/content/Context;

    .line 89
    sget p3, Lo/extraCallback$asInterface;->MenuView_subMenuArrow:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lo/IconCompatParcelizer;->getInterfaceDescriptor:Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 p3, 0x1

    new-array p3, p3, [I

    const v0, 0x1010129

    aput v0, p3, v2

    sget v0, Lo/extraCallback$ICustomTabsCallback;->dropDownListViewStyle:I

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1, v1, p3, v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 94
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, p0, Lo/IconCompatParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    .line 96
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 97
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/MediaBrowserCompat;
    .locals 1

    .line 166
    iget-object v0, p0, Lo/IconCompatParcelizer;->extraCallback:Lo/MediaBrowserCompat;

    return-object v0
.end method

.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 4

    .line 347
    iget-object v0, p0, Lo/IconCompatParcelizer;->asBinder:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lo/IconCompatParcelizer;->asBinder:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 353
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lo/IconCompatParcelizer;->asBinder:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/MediaBrowserCompat;)V
    .locals 4

    .line 124
    iput-object p1, p0, Lo/IconCompatParcelizer;->extraCallback:Lo/MediaBrowserCompat;

    .line 126
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->isVisible()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1446
    invoke-interface {p0}, Lo/getExtras$extraCallback;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1447
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 1448
    :cond_1
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 128
    :goto_1
    invoke-virtual {p0, v0}, Lo/IconCompatParcelizer;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lo/IconCompatParcelizer;->setCheckable(Z)V

    .line 2414
    iget-object v0, p1, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3342
    iget-object v0, p1, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-char v0, p1, Lo/MediaBrowserCompat;->ICustomTabsCallback:C

    goto :goto_2

    :cond_2
    iget-char v0, p1, Lo/MediaBrowserCompat;->onPostMessage:C

    :goto_2
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 4342
    :goto_3
    iget-object v3, p1, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v3}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-char v3, p1, Lo/MediaBrowserCompat;->ICustomTabsCallback:C

    goto :goto_4

    :cond_4
    iget-char v3, p1, Lo/MediaBrowserCompat;->onPostMessage:C

    .line 130
    :goto_4
    invoke-virtual {p0, v0, v3}, Lo/IconCompatParcelizer;->setShortcut(ZC)V

    .line 131
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/IconCompatParcelizer;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 133
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->hasSubMenu()Z

    move-result v0

    .line 5235
    iget-object v3, p0, Lo/IconCompatParcelizer;->ICustomTabsCallback$Stub:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 5236
    :cond_5
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :cond_6
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 102
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 104
    iget-object v0, p0, Lo/IconCompatParcelizer;->onTransact:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 106
    sget v0, Lo/extraCallback$asBinder;->title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/IconCompatParcelizer;->onMessageChannelReady:Landroid/widget/TextView;

    .line 107
    iget v1, p0, Lo/IconCompatParcelizer;->ICustomTabsService:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 108
    iget-object v2, p0, Lo/IconCompatParcelizer;->newSession:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 112
    :cond_0
    sget v0, Lo/extraCallback$asBinder;->shortcut:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/IconCompatParcelizer;->asInterface:Landroid/widget/TextView;

    .line 113
    sget v0, Lo/extraCallback$asBinder;->submenuarrow:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/IconCompatParcelizer;->ICustomTabsCallback$Stub:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 115
    iget-object v1, p0, Lo/IconCompatParcelizer;->getInterfaceDescriptor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_1
    sget v0, Lo/extraCallback$asBinder;->group_divider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/IconCompatParcelizer;->asBinder:Landroid/widget/ImageView;

    .line 119
    sget v0, Lo/extraCallback$asBinder;->content:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lo/IconCompatParcelizer;->onRelationshipValidationResult:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 282
    iget-object v0, p0, Lo/IconCompatParcelizer;->ICustomTabsCallback:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/IconCompatParcelizer;->warmup:Z

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lo/IconCompatParcelizer;->ICustomTabsCallback:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 286
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 287
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 290
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 171
    iget-object v0, p0, Lo/IconCompatParcelizer;->onNavigationEvent:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/IconCompatParcelizer;->onPostMessage:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lo/IconCompatParcelizer;->extraCallback:Lo/MediaBrowserCompat;

    .line 5609
    iget v0, v0, Lo/MediaBrowserCompat;->onTransact:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eqz v0, :cond_5

    .line 181
    iget-object v0, p0, Lo/IconCompatParcelizer;->onNavigationEvent:Landroid/widget/RadioButton;

    if-nez v0, :cond_4

    .line 6327
    iget-object v0, p0, Lo/IconCompatParcelizer;->requestPostMessageChannel:Landroid/view/LayoutInflater;

    if-nez v0, :cond_2

    .line 6328
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lo/IconCompatParcelizer;->requestPostMessageChannel:Landroid/view/LayoutInflater;

    .line 6330
    :cond_2
    iget-object v0, p0, Lo/IconCompatParcelizer;->requestPostMessageChannel:Landroid/view/LayoutInflater;

    .line 6302
    sget v3, Lo/extraCallback$ICustomTabsCallback$Stub;->abc_list_menu_item_radio:I

    .line 6303
    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lo/IconCompatParcelizer;->onNavigationEvent:Landroid/widget/RadioButton;

    .line 7142
    iget-object v3, p0, Lo/IconCompatParcelizer;->onRelationshipValidationResult:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    .line 7143
    invoke-virtual {v3, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 7145
    :cond_3
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 184
    :cond_4
    :goto_1
    iget-object v0, p0, Lo/IconCompatParcelizer;->onNavigationEvent:Landroid/widget/RadioButton;

    .line 185
    iget-object v2, p0, Lo/IconCompatParcelizer;->onPostMessage:Landroid/widget/CheckBox;

    goto :goto_3

    .line 187
    :cond_5
    iget-object v0, p0, Lo/IconCompatParcelizer;->onPostMessage:Landroid/widget/CheckBox;

    if-nez v0, :cond_8

    .line 7327
    iget-object v0, p0, Lo/IconCompatParcelizer;->requestPostMessageChannel:Landroid/view/LayoutInflater;

    if-nez v0, :cond_6

    .line 7328
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lo/IconCompatParcelizer;->requestPostMessageChannel:Landroid/view/LayoutInflater;

    .line 7330
    :cond_6
    iget-object v0, p0, Lo/IconCompatParcelizer;->requestPostMessageChannel:Landroid/view/LayoutInflater;

    .line 7310
    sget v3, Lo/extraCallback$ICustomTabsCallback$Stub;->abc_list_menu_item_checkbox:I

    .line 7311
    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lo/IconCompatParcelizer;->onPostMessage:Landroid/widget/CheckBox;

    .line 8142
    iget-object v3, p0, Lo/IconCompatParcelizer;->onRelationshipValidationResult:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_7

    .line 8143
    invoke-virtual {v3, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 8145
    :cond_7
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 190
    :cond_8
    :goto_2
    iget-object v0, p0, Lo/IconCompatParcelizer;->onPostMessage:Landroid/widget/CheckBox;

    .line 191
    iget-object v2, p0, Lo/IconCompatParcelizer;->onNavigationEvent:Landroid/widget/RadioButton;

    :goto_3
    const/16 v3, 0x8

    if-eqz p1, :cond_a

    .line 195
    iget-object p1, p0, Lo/IconCompatParcelizer;->extraCallback:Lo/MediaBrowserCompat;

    invoke-virtual {p1}, Lo/MediaBrowserCompat;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 197
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_9

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    if-eqz v2, :cond_c

    .line 202
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v3, :cond_c

    .line 203
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 206
    :cond_a
    iget-object p1, p0, Lo/IconCompatParcelizer;->onPostMessage:Landroid/widget/CheckBox;

    if-eqz p1, :cond_b

    .line 207
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :cond_b
    iget-object p1, p0, Lo/IconCompatParcelizer;->onNavigationEvent:Landroid/widget/RadioButton;

    if-eqz p1, :cond_c

    .line 210
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    .line 219
    iget-object v0, p0, Lo/IconCompatParcelizer;->extraCallback:Lo/MediaBrowserCompat;

    .line 8609
    iget v0, v0, Lo/MediaBrowserCompat;->onTransact:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eqz v0, :cond_4

    .line 220
    iget-object v0, p0, Lo/IconCompatParcelizer;->onNavigationEvent:Landroid/widget/RadioButton;

    if-nez v0, :cond_3

    .line 9327
    iget-object v0, p0, Lo/IconCompatParcelizer;->requestPostMessageChannel:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    .line 9328
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lo/IconCompatParcelizer;->requestPostMessageChannel:Landroid/view/LayoutInflater;

    .line 9330
    :cond_1
    iget-object v0, p0, Lo/IconCompatParcelizer;->requestPostMessageChannel:Landroid/view/LayoutInflater;

    .line 9302
    sget v3, Lo/extraCallback$ICustomTabsCallback$Stub;->abc_list_menu_item_radio:I

    .line 9303
    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lo/IconCompatParcelizer;->onNavigationEvent:Landroid/widget/RadioButton;

    .line 10142
    iget-object v1, p0, Lo/IconCompatParcelizer;->onRelationshipValidationResult:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 10143
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 10145
    :cond_2
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 223
    :cond_3
    :goto_1
    iget-object v0, p0, Lo/IconCompatParcelizer;->onNavigationEvent:Landroid/widget/RadioButton;

    goto :goto_3

    .line 225
    :cond_4
    iget-object v0, p0, Lo/IconCompatParcelizer;->onPostMessage:Landroid/widget/CheckBox;

    if-nez v0, :cond_7

    .line 10327
    iget-object v0, p0, Lo/IconCompatParcelizer;->requestPostMessageChannel:Landroid/view/LayoutInflater;

    if-nez v0, :cond_5

    .line 10328
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lo/IconCompatParcelizer;->requestPostMessageChannel:Landroid/view/LayoutInflater;

    .line 10330
    :cond_5
    iget-object v0, p0, Lo/IconCompatParcelizer;->requestPostMessageChannel:Landroid/view/LayoutInflater;

    .line 10310
    sget v3, Lo/extraCallback$ICustomTabsCallback$Stub;->abc_list_menu_item_checkbox:I

    .line 10311
    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lo/IconCompatParcelizer;->onPostMessage:Landroid/widget/CheckBox;

    .line 11142
    iget-object v1, p0, Lo/IconCompatParcelizer;->onRelationshipValidationResult:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    .line 11143
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 11145
    :cond_6
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 228
    :cond_7
    :goto_2
    iget-object v0, p0, Lo/IconCompatParcelizer;->onPostMessage:Landroid/widget/CheckBox;

    .line 231
    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lo/IconCompatParcelizer;->updateVisuals:Z

    iput-boolean p1, p0, Lo/IconCompatParcelizer;->warmup:Z

    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 2

    .line 339
    iget-object v0, p0, Lo/IconCompatParcelizer;->asBinder:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 341
    iget-boolean v1, p0, Lo/IconCompatParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 340
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 256
    iget-boolean v0, p0, Lo/IconCompatParcelizer;->updateVisuals:Z

    if-nez v0, :cond_0

    .line 257
    iget-boolean v1, p0, Lo/IconCompatParcelizer;->warmup:Z

    if-nez v1, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v1, p0, Lo/IconCompatParcelizer;->ICustomTabsCallback:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    iget-boolean v1, p0, Lo/IconCompatParcelizer;->warmup:Z

    if-nez v1, :cond_1

    return-void

    .line 265
    :cond_1
    iget-object v1, p0, Lo/IconCompatParcelizer;->ICustomTabsCallback:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 17327
    iget-object v1, p0, Lo/IconCompatParcelizer;->requestPostMessageChannel:Landroid/view/LayoutInflater;

    if-nez v1, :cond_2

    .line 17328
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lo/IconCompatParcelizer;->requestPostMessageChannel:Landroid/view/LayoutInflater;

    .line 17330
    :cond_2
    iget-object v1, p0, Lo/IconCompatParcelizer;->requestPostMessageChannel:Landroid/view/LayoutInflater;

    .line 17295
    sget v3, Lo/extraCallback$ICustomTabsCallback$Stub;->abc_list_menu_item_icon:I

    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lo/IconCompatParcelizer;->ICustomTabsCallback:Landroid/widget/ImageView;

    .line 18142
    iget-object v3, p0, Lo/IconCompatParcelizer;->onRelationshipValidationResult:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    .line 18143
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 18145
    :cond_3
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_4
    :goto_0
    if-nez p1, :cond_6

    .line 269
    iget-boolean v1, p0, Lo/IconCompatParcelizer;->warmup:Z

    if-eqz v1, :cond_5

    goto :goto_1

    .line 276
    :cond_5
    iget-object p1, p0, Lo/IconCompatParcelizer;->ICustomTabsCallback:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 270
    :cond_6
    :goto_1
    iget-object v1, p0, Lo/IconCompatParcelizer;->ICustomTabsCallback:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object p1, p0, Lo/IconCompatParcelizer;->ICustomTabsCallback:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_8

    .line 273
    iget-object p1, p0, Lo/IconCompatParcelizer;->ICustomTabsCallback:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 8

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    .line 242
    iget-object p1, p0, Lo/IconCompatParcelizer;->extraCallback:Lo/MediaBrowserCompat;

    .line 11414
    iget-object v2, p1, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v2}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12342
    iget-object v2, p1, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v2}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-char p1, p1, Lo/MediaBrowserCompat;->ICustomTabsCallback:C

    goto :goto_0

    :cond_0
    iget-char p1, p1, Lo/MediaBrowserCompat;->onPostMessage:C

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    :goto_2
    if-nez v0, :cond_a

    .line 246
    iget-object p1, p0, Lo/IconCompatParcelizer;->asInterface:Landroid/widget/TextView;

    iget-object v2, p0, Lo/IconCompatParcelizer;->extraCallback:Lo/MediaBrowserCompat;

    .line 13342
    iget-object v3, v2, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v3}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-char v3, v2, Lo/MediaBrowserCompat;->ICustomTabsCallback:C

    goto :goto_3

    :cond_3
    iget-char v3, v2, Lo/MediaBrowserCompat;->onPostMessage:C

    :goto_3
    if-nez v3, :cond_4

    const-string p2, ""

    goto/16 :goto_6

    .line 12357
    :cond_4
    iget-object v4, v2, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    .line 13830
    iget-object v4, v4, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage:Landroid/content/Context;

    .line 12357
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 12359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 12360
    iget-object v6, v2, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    .line 14830
    iget-object v6, v6, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage:Landroid/content/Context;

    .line 12360
    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 12361
    sget v6, Lo/extraCallback$onRelationshipValidationResult;->abc_prepend_shortcut_label:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12365
    :cond_5
    iget-object v6, v2, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v6}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback()Z

    move-result v6

    if-eqz v6, :cond_6

    iget v2, v2, Lo/MediaBrowserCompat;->extraCallback:I

    goto :goto_4

    :cond_6
    iget v2, v2, Lo/MediaBrowserCompat;->onMessageChannelReady:I

    :goto_4
    const/high16 v6, 0x10000

    .line 12366
    sget v7, Lo/extraCallback$onRelationshipValidationResult;->abc_menu_meta_shortcut_label:I

    .line 12367
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 12366
    invoke-static {v5, v2, v6, v7}, Lo/MediaBrowserCompat;->onPostMessage(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const/16 v6, 0x1000

    .line 12368
    sget v7, Lo/extraCallback$onRelationshipValidationResult;->abc_menu_ctrl_shortcut_label:I

    .line 12369
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 12368
    invoke-static {v5, v2, v6, v7}, Lo/MediaBrowserCompat;->onPostMessage(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const/4 v6, 0x2

    .line 12370
    sget v7, Lo/extraCallback$onRelationshipValidationResult;->abc_menu_alt_shortcut_label:I

    .line 12371
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 12370
    invoke-static {v5, v2, v6, v7}, Lo/MediaBrowserCompat;->onPostMessage(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 12372
    sget v6, Lo/extraCallback$onRelationshipValidationResult;->abc_menu_shift_shortcut_label:I

    .line 12373
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 12372
    invoke-static {v5, v2, p2, v6}, Lo/MediaBrowserCompat;->onPostMessage(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const/4 p2, 0x4

    .line 12374
    sget v6, Lo/extraCallback$onRelationshipValidationResult;->abc_menu_sym_shortcut_label:I

    .line 12375
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 12374
    invoke-static {v5, v2, p2, v6}, Lo/MediaBrowserCompat;->onPostMessage(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 12376
    sget p2, Lo/extraCallback$onRelationshipValidationResult;->abc_menu_function_shortcut_label:I

    .line 12377
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 12376
    invoke-static {v5, v2, v1, p2}, Lo/MediaBrowserCompat;->onPostMessage(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    if-eq v3, v1, :cond_9

    const/16 p2, 0xa

    if-eq v3, p2, :cond_8

    const/16 p2, 0x20

    if-eq v3, p2, :cond_7

    .line 12394
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 12390
    :cond_7
    sget p2, Lo/extraCallback$onRelationshipValidationResult;->abc_menu_space_shortcut_label:I

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 12382
    :cond_8
    sget p2, Lo/extraCallback$onRelationshipValidationResult;->abc_menu_enter_shortcut_label:I

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 12386
    :cond_9
    sget p2, Lo/extraCallback$onRelationshipValidationResult;->abc_menu_delete_shortcut_label:I

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12398
    :goto_5
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 246
    :goto_6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_a
    iget-object p1, p0, Lo/IconCompatParcelizer;->asInterface:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_b

    .line 250
    iget-object p1, p0, Lo/IconCompatParcelizer;->asInterface:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lo/IconCompatParcelizer;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object p1, p0, Lo/IconCompatParcelizer;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/IconCompatParcelizer;->onMessageChannelReady:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 160
    :cond_0
    iget-object p1, p0, Lo/IconCompatParcelizer;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lo/IconCompatParcelizer;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
