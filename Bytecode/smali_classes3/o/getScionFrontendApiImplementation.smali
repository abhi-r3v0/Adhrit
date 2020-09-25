.class public Lo/getScionFrontendApiImplementation;
.super Lo/getApp;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getScionFrontendApiImplementation$onPostMessage;,
        Lo/getScionFrontendApiImplementation$ICustomTabsCallback;,
        Lo/getScionFrontendApiImplementation$extraCallback;,
        Lo/getScionFrontendApiImplementation$onNavigationEvent;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:Lo/getScionFrontendApiImplementation$onPostMessage;

.field extraCallback:I

.field private onMessageChannelReady:I

.field final onNavigationEvent:Lo/getScionFrontendApiImplementation$ICustomTabsCallback;

.field onPostMessage:Z

.field private onRelationshipValidationResult:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0}, Lo/getScionFrontendApiImplementation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 105
    sget v0, Lo/toStringMap$extraCallback;->chipGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lo/getScionFrontendApiImplementation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lo/getApp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance v0, Lo/getScionFrontendApiImplementation$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/getScionFrontendApiImplementation$ICustomTabsCallback;-><init>(Lo/getScionFrontendApiImplementation;B)V

    iput-object v0, p0, Lo/getScionFrontendApiImplementation;->onNavigationEvent:Lo/getScionFrontendApiImplementation$ICustomTabsCallback;

    .line 93
    new-instance v0, Lo/getScionFrontendApiImplementation$onPostMessage;

    invoke-direct {v0, p0, v1}, Lo/getScionFrontendApiImplementation$onPostMessage;-><init>(Lo/getScionFrontendApiImplementation;B)V

    iput-object v0, p0, Lo/getScionFrontendApiImplementation;->ICustomTabsCallback$Stub:Lo/getScionFrontendApiImplementation$onPostMessage;

    const/4 v0, -0x1

    .line 97
    iput v0, p0, Lo/getScionFrontendApiImplementation;->extraCallback:I

    .line 98
    iput-boolean v1, p0, Lo/getScionFrontendApiImplementation;->onPostMessage:Z

    .line 111
    sget-object v8, Lo/toStringMap$newSession;->ChipGroup:[I

    sget v9, Lo/toStringMap$onRelationshipValidationResult;->Widget_MaterialComponents_ChipGroup:I

    new-array v7, v1, [I

    .line 1081
    invoke-static {p1, p2, p3, v9}, Lo/signInWithCustomToken;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, v8

    move v5, p3

    move v6, v9

    .line 1084
    invoke-static/range {v2 .. v7}, Lo/signInWithCustomToken;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 1087
    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 119
    sget p2, Lo/toStringMap$newSession;->ChipGroup_chipSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 120
    sget p3, Lo/toStringMap$newSession;->ChipGroup_chipSpacingHorizontal:I

    .line 121
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 120
    invoke-virtual {p0, p3}, Lo/getScionFrontendApiImplementation;->setChipSpacingHorizontal(I)V

    .line 122
    sget p3, Lo/toStringMap$newSession;->ChipGroup_chipSpacingVertical:I

    .line 123
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 122
    invoke-virtual {p0, p2}, Lo/getScionFrontendApiImplementation;->setChipSpacingVertical(I)V

    .line 124
    sget p2, Lo/toStringMap$newSession;->ChipGroup_singleLine:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lo/getApp;->setSingleLine(Z)V

    .line 125
    sget p2, Lo/toStringMap$newSession;->ChipGroup_singleSelection:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lo/getScionFrontendApiImplementation;->setSingleSelection(Z)V

    .line 126
    sget p2, Lo/toStringMap$newSession;->ChipGroup_checkedChip:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_0

    .line 128
    iput p2, p0, Lo/getScionFrontendApiImplementation;->extraCallback:I

    .line 131
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    iget-object p1, p0, Lo/getScionFrontendApiImplementation;->ICustomTabsCallback$Stub:Lo/getScionFrontendApiImplementation$onPostMessage;

    invoke-super {p0, p1}, Lo/getApp;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    .line 369
    invoke-super {p0}, Lo/getApp;->ICustomTabsCallback()Z

    move-result v0

    return v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 177
    instance-of v0, p1, Lo/getComponents;

    if-eqz v0, :cond_1

    .line 178
    move-object v0, p1

    check-cast v0, Lo/getComponents;

    .line 179
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget v1, p0, Lo/getScionFrontendApiImplementation;->extraCallback:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v2, p0, Lo/getScionFrontendApiImplementation;->ICustomTabsCallback:Z

    if-eqz v2, :cond_0

    .line 3306
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3307
    instance-of v2, v1, Lo/getComponents;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 3308
    iput-boolean v2, p0, Lo/getScionFrontendApiImplementation;->onPostMessage:Z

    .line 3309
    check-cast v1, Lo/getComponents;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 3310
    iput-boolean v2, p0, Lo/getScionFrontendApiImplementation;->onPostMessage:Z

    .line 183
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 4298
    iput v0, p0, Lo/getScionFrontendApiImplementation;->extraCallback:I

    .line 187
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lo/getApp;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 155
    invoke-super {p0, p1}, Lo/getApp;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lo/getScionFrontendApiImplementation$extraCallback;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 150
    new-instance v0, Lo/getScionFrontendApiImplementation$extraCallback;

    invoke-direct {v0}, Lo/getScionFrontendApiImplementation$extraCallback;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 138
    new-instance v0, Lo/getScionFrontendApiImplementation$extraCallback;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/getScionFrontendApiImplementation$extraCallback;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 144
    new-instance v0, Lo/getScionFrontendApiImplementation$extraCallback;

    invoke-direct {v0, p1}, Lo/getScionFrontendApiImplementation$extraCallback;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 166
    invoke-super {p0}, Lo/getApp;->onFinishInflate()V

    .line 169
    iget v0, p0, Lo/getScionFrontendApiImplementation;->extraCallback:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2306
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2307
    instance-of v1, v0, Lo/getComponents;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2308
    iput-boolean v1, p0, Lo/getScionFrontendApiImplementation;->onPostMessage:Z

    .line 2309
    check-cast v0, Lo/getComponents;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 v0, 0x0

    .line 2310
    iput-boolean v0, p0, Lo/getScionFrontendApiImplementation;->onPostMessage:Z

    .line 171
    :cond_0
    iget v0, p0, Lo/getScionFrontendApiImplementation;->extraCallback:I

    .line 3298
    iput v0, p0, Lo/getScionFrontendApiImplementation;->extraCallback:I

    :cond_1
    return-void
.end method

.method public setChipSpacing(I)V
    .locals 0

    .line 316
    invoke-virtual {p0, p1}, Lo/getScionFrontendApiImplementation;->setChipSpacingHorizontal(I)V

    .line 317
    invoke-virtual {p0, p1}, Lo/getScionFrontendApiImplementation;->setChipSpacingVertical(I)V

    return-void
.end method

.method public setChipSpacingHorizontal(I)V
    .locals 1

    .line 333
    iget v0, p0, Lo/getScionFrontendApiImplementation;->onMessageChannelReady:I

    if-eq v0, p1, :cond_0

    .line 334
    iput p1, p0, Lo/getScionFrontendApiImplementation;->onMessageChannelReady:I

    .line 335
    invoke-virtual {p0, p1}, Lo/getScionFrontendApiImplementation;->extraCallback(I)V

    .line 336
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
    .locals 1

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lo/getScionFrontendApiImplementation;->setChipSpacingHorizontal(I)V

    return-void
.end method

.method public setChipSpacingResource(I)V
    .locals 1

    .line 322
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lo/getScionFrontendApiImplementation;->setChipSpacing(I)V

    return-void
.end method

.method public setChipSpacingVertical(I)V
    .locals 1

    .line 353
    iget v0, p0, Lo/getScionFrontendApiImplementation;->onRelationshipValidationResult:I

    if-eq v0, p1, :cond_0

    .line 354
    iput p1, p0, Lo/getScionFrontendApiImplementation;->onRelationshipValidationResult:I

    .line 355
    invoke-virtual {p0, p1}, Lo/getScionFrontendApiImplementation;->onMessageChannelReady(I)V

    .line 356
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
    .locals 1

    .line 362
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lo/getScionFrontendApiImplementation;->setChipSpacingVertical(I)V

    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFlexWrap(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnCheckedChangeListener(Lo/getScionFrontendApiImplementation$onNavigationEvent;)V
    .locals 0

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lo/getScionFrontendApiImplementation;->ICustomTabsCallback$Stub:Lo/getScionFrontendApiImplementation$onPostMessage;

    .line 1439
    iput-object p1, v0, Lo/getScionFrontendApiImplementation$onPostMessage;->onNavigationEvent:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowDividerVertical(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSingleLine(I)V
    .locals 1

    .line 381
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lo/getApp;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    .line 376
    invoke-super {p0, p1}, Lo/getApp;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1

    .line 408
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lo/getScionFrontendApiImplementation;->setSingleSelection(Z)V

    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 3

    .line 395
    iget-boolean v0, p0, Lo/getScionFrontendApiImplementation;->ICustomTabsCallback:Z

    if-eq v0, p1, :cond_2

    .line 396
    iput-boolean p1, p0, Lo/getScionFrontendApiImplementation;->ICustomTabsCallback:Z

    const/4 p1, 0x1

    .line 5275
    iput-boolean p1, p0, Lo/getScionFrontendApiImplementation;->onPostMessage:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 5276
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5277
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5278
    instance-of v2, v1, Lo/getComponents;

    if-eqz v2, :cond_0

    .line 5279
    check-cast v1, Lo/getComponents;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5282
    :cond_1
    iput-boolean p1, p0, Lo/getScionFrontendApiImplementation;->onPostMessage:Z

    const/4 p1, -0x1

    .line 5298
    iput p1, p0, Lo/getScionFrontendApiImplementation;->extraCallback:I

    :cond_2
    return-void
.end method
