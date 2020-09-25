.class public Lo/removeAuthStateListener;
.super Lo/addAuthStateListener;
.source ""

# interfaces
.implements Lo/getExtras$extraCallback;


# static fields
.field private static final ICustomTabsCallback:[I


# instance fields
.field private ICustomTabsCallback$Stub:Landroid/graphics/drawable/Drawable;

.field private asBinder:Lo/MediaBrowserCompat;

.field private final extraCallback:Landroid/widget/CheckedTextView;

.field private onMessageChannelReady:I

.field private onNavigationEvent:Z

.field onPostMessage:Z

.field private onRelationshipValidationResult:Landroid/widget/FrameLayout;

.field private final onTransact:Lo/onSessionDestroyed;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 55
    sput-object v0, Lo/removeAuthStateListener;->ICustomTabsCallback:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Lo/removeAuthStateListener;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lo/removeAuthStateListener;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lo/addAuthStateListener;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance p2, Lo/removeAuthStateListener$2;

    invoke-direct {p2, p0}, Lo/removeAuthStateListener$2;-><init>(Lo/removeAuthStateListener;)V

    iput-object p2, p0, Lo/removeAuthStateListener;->onTransact:Lo/onSessionDestroyed;

    const/4 p2, 0x0

    .line 97
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 98
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lo/toStringMap$asBinder;->design_navigation_menu_item:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lo/toStringMap$onMessageChannelReady;->design_navigation_icon_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lo/removeAuthStateListener;->setIconSize(I)V

    .line 100
    sget p1, Lo/toStringMap$asInterface;->design_menu_item_text:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lo/removeAuthStateListener;->extraCallback:Landroid/widget/CheckedTextView;

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 102
    iget-object p1, p0, Lo/removeAuthStateListener;->extraCallback:Landroid/widget/CheckedTextView;

    iget-object p2, p0, Lo/removeAuthStateListener;->onTransact:Lo/onSessionDestroyed;

    invoke-static {p1, p2}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Lo/onSessionDestroyed;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/MediaBrowserCompat;
    .locals 1

    .line 186
    iget-object v0, p0, Lo/removeAuthStateListener;->asBinder:Lo/MediaBrowserCompat;

    return-object v0
.end method

.method public final extraCallback(Lo/MediaBrowserCompat;)V
    .locals 7

    .line 107
    iput-object p1, p0, Lo/removeAuthStateListener;->asBinder:Lo/MediaBrowserCompat;

    .line 109
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

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 1172
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1173
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1174
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Lo/extraCallback$ICustomTabsCallback;->colorControlHighlight:I

    .line 1175
    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1176
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1177
    sget-object v5, Lo/removeAuthStateListener;->ICustomTabsCallback:[I

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v6, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1178
    sget-object v0, Lo/removeAuthStateListener;->EMPTY_STATE_SET:[I

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v0, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 112
    :goto_1
    invoke-static {p0, v4}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_2
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lo/removeAuthStateListener;->setCheckable(Z)V

    .line 116
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lo/removeAuthStateListener;->setChecked(Z)V

    .line 117
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 118
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/removeAuthStateListener;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/removeAuthStateListener;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2160
    iget-object v4, p0, Lo/removeAuthStateListener;->onRelationshipValidationResult:Landroid/widget/FrameLayout;

    if-nez v4, :cond_3

    .line 2161
    sget v4, Lo/toStringMap$asInterface;->design_menu_item_action_area_stub:I

    .line 2163
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lo/removeAuthStateListener;->onRelationshipValidationResult:Landroid/widget/FrameLayout;

    .line 2165
    :cond_3
    iget-object v4, p0, Lo/removeAuthStateListener;->onRelationshipValidationResult:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2166
    iget-object v4, p0, Lo/removeAuthStateListener;->onRelationshipValidationResult:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 121
    :cond_4
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 4127
    iget-object p1, p0, Lo/removeAuthStateListener;->asBinder:Lo/MediaBrowserCompat;

    invoke-virtual {p1}, Lo/MediaBrowserCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lo/removeAuthStateListener;->asBinder:Lo/MediaBrowserCompat;

    .line 4128
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lo/removeAuthStateListener;->asBinder:Lo/MediaBrowserCompat;

    .line 4129
    invoke-virtual {p1}, Lo/MediaBrowserCompat;->getActionView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 3135
    iget-object p1, p0, Lo/removeAuthStateListener;->extraCallback:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 3136
    iget-object p1, p0, Lo/removeAuthStateListener;->onRelationshipValidationResult:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    .line 3137
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v0, -0x1

    .line 3138
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3139
    iget-object v0, p0, Lo/removeAuthStateListener;->onRelationshipValidationResult:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 3142
    :cond_6
    iget-object p1, p0, Lo/removeAuthStateListener;->extraCallback:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 3143
    iget-object p1, p0, Lo/removeAuthStateListener;->onRelationshipValidationResult:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    .line 3144
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v0, -0x2

    .line 3145
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3146
    iget-object v0, p0, Lo/removeAuthStateListener;->onRelationshipValidationResult:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 252
    invoke-super {p0, p1}, Lo/addAuthStateListener;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 253
    iget-object v0, p0, Lo/removeAuthStateListener;->asBinder:Lo/MediaBrowserCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/MediaBrowserCompat;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/removeAuthStateListener;->asBinder:Lo/MediaBrowserCompat;

    invoke-virtual {v0}, Lo/MediaBrowserCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lo/removeAuthStateListener;->ICustomTabsCallback:[I

    invoke-static {p1, v0}, Lo/removeAuthStateListener;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 2

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 197
    iget-boolean v0, p0, Lo/removeAuthStateListener;->onPostMessage:Z

    if-eq v0, p1, :cond_0

    .line 198
    iput-boolean p1, p0, Lo/removeAuthStateListener;->onPostMessage:Z

    .line 199
    iget-object p1, p0, Lo/removeAuthStateListener;->onTransact:Lo/onSessionDestroyed;

    iget-object v0, p0, Lo/removeAuthStateListener;->extraCallback:Landroid/widget/CheckedTextView;

    const/16 v1, 0x800

    invoke-virtual {p1, v0, v1}, Lo/onSessionDestroyed;->sendAccessibilityEvent(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 207
    iget-object v0, p0, Lo/removeAuthStateListener;->extraCallback:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method

.method public setHorizontalPadding(I)V
    .locals 1

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 221
    iget v1, p0, Lo/removeAuthStateListener;->onMessageChannelReady:I

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 222
    :cond_0
    iget-boolean v1, p0, Lo/removeAuthStateListener;->onNavigationEvent:Z

    if-eqz v1, :cond_2

    .line 223
    iget-object p1, p0, Lo/removeAuthStateListener;->ICustomTabsCallback$Stub:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lo/toStringMap$onNavigationEvent;->navigation_empty_icon:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 225
    invoke-static {p1, v1, v2}, Lo/containsKey;->extraCallback(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/removeAuthStateListener;->ICustomTabsCallback$Stub:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 228
    iget v1, p0, Lo/removeAuthStateListener;->onMessageChannelReady:I

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 231
    :cond_1
    iget-object p1, p0, Lo/removeAuthStateListener;->ICustomTabsCallback$Stub:Landroid/graphics/drawable/Drawable;

    .line 233
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/removeAuthStateListener;->extraCallback:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1, v1}, Lo/prepareFromSearch;->onMessageChannelReady(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconPadding(I)V
    .locals 1

    .line 285
    iget-object v0, p0, Lo/removeAuthStateListener;->extraCallback:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 0

    .line 237
    iput p1, p0, Lo/removeAuthStateListener;->onMessageChannelReady:I

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .line 289
    iget-object v0, p0, Lo/removeAuthStateListener;->extraCallback:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public setNeedsEmptyIcon(Z)V
    .locals 0

    .line 277
    iput-boolean p1, p0, Lo/removeAuthStateListener;->onNavigationEvent:Z

    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    return-void
.end method

.method public setTextAppearance(I)V
    .locals 1

    .line 269
    iget-object v0, p0, Lo/removeAuthStateListener;->extraCallback:Landroid/widget/CheckedTextView;

    invoke-static {v0, p1}, Lo/prepareFromSearch;->onNavigationEvent(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lo/removeAuthStateListener;->extraCallback:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lo/removeAuthStateListener;->extraCallback:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
