.class public Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lorg/npci/upi/security/pinactivitycomponent/widget/a;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Landroid/widget/TextView;

.field private f:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

.field private g:Lorg/npci/upi/security/pinactivitycomponent/widget/m;

.field private h:I

.field private i:Ljava/lang/Object;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/widget/ImageView;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a:Z

    const-string v1, ""

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->n:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->o:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a:Z

    const-string v1, ""

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->n:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->o:Z

    invoke-virtual {p0, p1, p2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Lorg/npci/upi/security/pinactivitycomponent/widget/m;
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->g:Lorg/npci/upi/security/pinactivitycomponent/widget/m;

    return-object p0
.end method

.method static synthetic b(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->f:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    return-object p0
.end method

.method static synthetic c(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)I
    .locals 0

    iget p0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->d:I

    return p0
.end method

.method static synthetic d(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)I
    .locals 0

    iget p0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->h:I

    return p0
.end method

.method static synthetic e(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a:Z

    return p0
.end method

.method static synthetic f(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->o:Z

    return p0
.end method

.method static synthetic g(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->n:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;Z)Lo/getLaunchPendingIntent;
    .locals 3

    invoke-static {p1}, Lo/unregisterCallbackListener;->newSession(Landroid/view/View;)Lo/getLaunchPendingIntent;

    move-result-object p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Lo/getLaunchPendingIntent;->extraCallback(F)Lo/getLaunchPendingIntent;

    move-result-object p1

    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    invoke-virtual {p1, v0}, Lo/getLaunchPendingIntent;->onPostMessage(F)Lo/getLaunchPendingIntent;

    move-result-object p1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lo/getLaunchPendingIntent;->extraCallback(Landroid/view/animation/Interpolator;)Lo/getLaunchPendingIntent;

    move-result-object p1

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/widget/l;

    invoke-direct {v0, p0, p2}, Lorg/npci/upi/security/pinactivitycomponent/widget/l;-><init>(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;Z)V

    invoke-virtual {p1, v0}, Lo/getLaunchPendingIntent;->onPostMessage(Lo/setVolumeTo;)Lo/getLaunchPendingIntent;

    move-result-object p1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {p1, v1}, Lo/getLaunchPendingIntent;->onNavigationEvent(F)Lo/getLaunchPendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->FormItemView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    sget v1, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->FormItemView_formTitle:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->b:Ljava/lang/String;

    sget v1, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->FormItemView_formValidationError:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->c:Ljava/lang/String;

    sget v1, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->FormItemView_formInputLength:I

    const/4 v2, 0x6

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->d:I

    sget v1, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->FormItemView_formActionOnTop:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->p:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    sget p2, Lorg/npci/upi/security/pinactivitycomponent/R$layout;->layout_form_item:I

    invoke-static {p1, p2, p0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lorg/npci/upi/security/pinactivitycomponent/R$id;->form_item_root:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->r:Landroid/widget/RelativeLayout;

    sget p1, Lorg/npci/upi/security/pinactivitycomponent/R$id;->form_item_action_bar:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->j:Landroid/widget/LinearLayout;

    sget p1, Lorg/npci/upi/security/pinactivitycomponent/R$id;->form_item_title:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->e:Landroid/widget/TextView;

    sget p1, Lorg/npci/upi/security/pinactivitycomponent/R$id;->form_item_input:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->f:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    sget p1, Lorg/npci/upi/security/pinactivitycomponent/R$id;->form_item_button:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->k:Landroid/widget/Button;

    sget p1, Lorg/npci/upi/security/pinactivitycomponent/R$id;->form_item_progress:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->l:Landroid/widget/ProgressBar;

    sget p1, Lorg/npci/upi/security/pinactivitycomponent/R$id;->form_item_image:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->m:Landroid/widget/ImageView;

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->f:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->setTitle(Ljava/lang/String;)V

    iget p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->d:I

    invoke-virtual {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->setInputLength(I)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->f:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    new-instance p2, Lorg/npci/upi/security/pinactivitycomponent/widget/j;

    invoke-direct {p2, p0}, Lorg/npci/upi/security/pinactivitycomponent/widget/j;-><init>(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->f:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    new-instance p2, Lorg/npci/upi/security/pinactivitycomponent/widget/k;

    invoke-direct {p2, p0}, Lorg/npci/upi/security/pinactivitycomponent/widget/k;-><init>(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->p:Z

    invoke-virtual {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->setActionBarPositionTop(Z)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Landroid/view/View;Z)Lo/getLaunchPendingIntent;

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZZ)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->k:Landroid/widget/Button;

    const/4 v0, 0x0

    if-nez p4, :cond_1

    move-object v1, p2

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ne p4, v2, :cond_2

    move-object v2, p2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    const/4 v3, 0x2

    if-ne p4, v3, :cond_3

    move-object v3, p2

    goto :goto_2

    :cond_3
    move-object v3, v0

    :goto_2
    const/4 v4, 0x3

    if-ne p4, v4, :cond_4

    goto :goto_3

    :cond_4
    move-object p2, v0

    :goto_3
    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->k:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->k:Landroid/widget/Button;

    invoke-virtual {p1, p6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->k:Landroid/widget/Button;

    invoke-virtual {p0, p1, p5}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Landroid/view/View;Z)Lo/getLaunchPendingIntent;

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View$OnClickListener;ZZ)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->k:Landroid/widget/Button;

    invoke-virtual {p0, p1, p3}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Landroid/view/View;Z)Lo/getLaunchPendingIntent;

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->k:Landroid/widget/Button;

    invoke-virtual {p1, p4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->k:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Landroid/view/View;Z)Lo/getLaunchPendingIntent;

    move-result-object p1

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lo/getLaunchPendingIntent;->extraCallback(Landroid/view/animation/Interpolator;)Lo/getLaunchPendingIntent;

    invoke-virtual {p1}, Lo/getLaunchPendingIntent;->onPostMessage()V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->f:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 3

    iget-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->o:Z

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->o:Z

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->n:Ljava/lang/String;

    const-string v1, "."

    const-string v2, "\u25cf"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->f:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->o:Z

    return v0
.end method

.method public getFormDataTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public getFormInputView()Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->f:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    return-object v0
.end method

.method public getFormItemListener()Lorg/npci/upi/security/pinactivitycomponent/widget/m;
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->g:Lorg/npci/upi/security/pinactivitycomponent/widget/m;

    return-object v0
.end method

.method public getInputLength()I
    .locals 1

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->d:I

    return v0
.end method

.method public getInputValue()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->n:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->f:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setActionBarPositionTop(Z)V
    .locals 4

    iput-boolean p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->q:Z

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->q:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$id;->form_item_input:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setFormDataTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->i:Ljava/lang/Object;

    return-void
.end method

.method public setFormItemListener(Lorg/npci/upi/security/pinactivitycomponent/widget/m;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->g:Lorg/npci/upi/security/pinactivitycomponent/widget/m;

    return-void
.end method

.method public setFormItemTag(I)V
    .locals 0

    iput p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->h:I

    return-void
.end method

.method public setInputLength(I)V
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->f:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    invoke-virtual {v0, p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->setMaxLength(I)V

    iput p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->d:I

    return-void
.end method

.method public setNonMaskedField()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->f:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->f:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->b:Ljava/lang/String;

    return-void
.end method
