.class public Landroid/support/design/internal/BottomNavigationItemView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationItemView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView$ItemView;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field public static final INVALID_ITEM_POSITION:I = -0x1


# instance fields
.field private final mDefaultMargin:I

.field private mIcon:Landroid/widget/ImageView;

.field private mIconTint:Landroid/content/res/ColorStateList;

.field private mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

.field private mItemPosition:I

.field private final mLargeLabel:Landroid/widget/TextView;

.field private final mScaleDownFactor:F

.field private final mScaleUpFactor:F

.field private final mShiftAmount:I

.field private mShiftingMode:Z

.field private final mSmallLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 49
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/internal/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 61
    iput p2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemPosition:I

    .line 77
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 78
    sget p3, Landroid/support/design/R$dimen;->design_bottom_navigation_text_size:I

    .line 79
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 80
    sget v0, Landroid/support/design/R$dimen;->design_bottom_navigation_active_text_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 82
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_margin:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    sub-int p2, p3, v0

    .line 83
    iput p2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mShiftAmount:I

    int-to-float p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, v0, p2

    int-to-float p3, p3

    div-float/2addr v1, p3

    .line 84
    iput v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleUpFactor:F

    mul-float/2addr v0, p3

    div-float/2addr v0, p2

    .line 85
    iput v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleDownFactor:F

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Landroid/support/design/R$layout;->design_bottom_navigation_item:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 88
    sget p1, Landroid/support/design/R$drawable;->design_bottom_navigation_item_background:I

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setBackgroundResource(I)V

    .line 89
    sget p1, Landroid/support/design/R$id;->icon:I

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    .line 90
    sget p1, Landroid/support/design/R$id;->smallLabel:I

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    .line 91
    sget p1, Landroid/support/design/R$id;->largeLabel:I

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 1

    .line 121
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getItemPosition()I
    .locals 1

    .line 112
    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemPosition:I

    return v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
    .locals 0

    .line 96
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 97
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setCheckable(Z)V

    .line 98
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setChecked(Z)V

    .line 99
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setEnabled(Z)V

    .line 100
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setId(I)V

    .line 103
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 209
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 210
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Landroid/support/design/internal/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/support/design/internal/BottomNavigationItemView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 132
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 5

    .line 137
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 138
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 139
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 140
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 141
    iget-boolean v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mShiftingMode:Z

    const/4 v1, 0x0

    const/16 v2, 0x31

    const/4 v3, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 144
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 145
    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 146
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 149
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    .line 152
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 153
    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 154
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 157
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    .line 159
    :goto_0
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 162
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 163
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 164
    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    iget v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mShiftAmount:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 165
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 170
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 171
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleUpFactor:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 172
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleUpFactor:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    goto :goto_1

    .line 174
    :cond_2
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 175
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 176
    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 177
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleDownFactor:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 182
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleDownFactor:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    .line 183
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 184
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 188
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->refreshDrawableState()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 193
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-static {p1, v0}, Landroid/support/v4/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroid/support/v4/view/PointerIconCompat;

    move-result-object p1

    .line 199
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 202
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 223
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 225
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIconTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 227
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 241
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIconTint:Landroid/content/res/ColorStateList;

    .line 242
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    .line 244
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 256
    :goto_0
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    .line 108
    iput p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemPosition:I

    return-void
.end method

.method public setShiftingMode(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mShiftingMode:Z

    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 249
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 250
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 126
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showsIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
