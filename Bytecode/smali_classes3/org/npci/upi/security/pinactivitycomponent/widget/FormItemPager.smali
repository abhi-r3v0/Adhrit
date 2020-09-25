.class public Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lorg/npci/upi/security/pinactivitycomponent/widget/a;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:I

.field private c:I

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_0
    invoke-static {p1, v1}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;F)V

    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget p2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->c:I

    neg-int p2, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->c:I

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_1
    int-to-float p2, p2

    invoke-static {p1, p2}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;F)V

    return-void
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->setText(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->d()Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZZ)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;Lorg/npci/upi/security/pinactivitycomponent/widget/m;)V
    .locals 2

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {p1, p2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->setFormItemListener(Lorg/npci/upi/security/pinactivitycomponent/widget/m;)V

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->c:I

    const/4 p1, 0x1

    :goto_0
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {v0, p2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->setFormItemListener(Lorg/npci/upi/security/pinactivitycomponent/widget/m;)V

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->c:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;F)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 5

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->b:I

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->getInputValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    iget v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->b:I

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {v1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->getInputLength()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->b:I

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    iget v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->b:I

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {v2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->getInputValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->e()V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->getFormItemListener()Lorg/npci/upi/security/pinactivitycomponent/widget/m;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$string;->info_pins_dont_match:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lorg/npci/upi/security/pinactivitycomponent/widget/m;->a(Landroid/view/View;Ljava/lang/String;)V

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    invoke-virtual {p0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->c()Z

    move-result v0

    if-nez v0, :cond_3

    return v4

    :cond_3
    return v3

    :cond_4
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->b:I

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return v3
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->b:I

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->b()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 3

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->b:I

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->b:I

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-direct {p0, v0, v2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a(Landroid/view/View;Z)V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->b:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-direct {p0, v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a(Landroid/view/View;)V

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->b:I

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return v2
.end method

.method public d()Z
    .locals 3

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-direct {p0, v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a(Landroid/view/View;Z)V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->b:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-direct {p0, v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a(Landroid/view/View;)V

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->b:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->b:I

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return v2
.end method

.method public getFormDataTag()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->d:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->getFormDataTag()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInputValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->getInputValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFormDataTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->d:Ljava/lang/Object;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {v1, p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->setText(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
