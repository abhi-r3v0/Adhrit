.class public Lorg/npci/upi/security/pinactivitycomponent/Keypad;
.super Landroid/widget/TableLayout;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:Lorg/npci/upi/security/pinactivitycomponent/ac;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/npci/upi/security/pinactivitycomponent/Keypad;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x3d

    iput p1, p0, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->a:I

    invoke-direct {p0, p2}, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->a(Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->a()V

    return-void
.end method

.method private a(F)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v0, v0, 0xa0

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method static synthetic a(Lorg/npci/upi/security/pinactivitycomponent/Keypad;)Lorg/npci/upi/security/pinactivitycomponent/ac;
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->e:Lorg/npci/upi/security/pinactivitycomponent/ac;

    return-object p0
.end method

.method private a()V
    .locals 12

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->b:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/TableLayout$LayoutParams;-><init>(IIF)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    const/high16 v5, 0x40400000    # 3.0f

    const/4 v6, 0x2

    const/16 v7, 0x11

    const/4 v8, 0x3

    if-ge v3, v8, :cond_1

    new-instance v9, Landroid/widget/TableRow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_0

    new-instance v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->getItemParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v11, p0, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->c:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget v11, p0, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->d:F

    invoke-virtual {v10, v6, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0, v10}, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->setClickFeedback(Landroid/view/View;)V

    new-instance v11, Lorg/npci/upi/security/pinactivitycomponent/y;

    invoke-direct {v11, p0, v4}, Lorg/npci/upi/security/pinactivitycomponent/y;-><init>(Lorg/npci/upi/security/pinactivitycomponent/Keypad;I)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/npci/upi/security/pinactivitycomponent/R$drawable;->ic_action_backspace:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->getItemParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0, v1}, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->setClickFeedback(Landroid/view/View;)V

    new-instance v3, Lorg/npci/upi/security/pinactivitycomponent/z;

    invoke-direct {v3, p0}, Lorg/npci/upi/security/pinactivitycomponent/z;-><init>(Lorg/npci/upi/security/pinactivitycomponent/Keypad;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->getItemParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->c:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget v4, p0, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->d:F

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0, v3}, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->setClickFeedback(Landroid/view/View;)V

    new-instance v4, Lorg/npci/upi/security/pinactivitycomponent/aa;

    invoke-direct {v4, p0}, Lorg/npci/upi/security/pinactivitycomponent/aa;-><init>(Lorg/npci/upi/security/pinactivitycomponent/Keypad;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v6, Lorg/npci/upi/security/pinactivitycomponent/R$drawable;->ic_action_submit:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->getItemParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v6

    iget v7, p0, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->a:I

    int-to-float v7, v7

    invoke-direct {p0, v7}, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->a(F)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3fa00000    # 1.25f

    mul-float v7, v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0, v4}, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->setClickFeedback(Landroid/view/View;)V

    new-instance v2, Lorg/npci/upi/security/pinactivitycomponent/ab;

    invoke-direct {v2, p0}, Lorg/npci/upi/security/pinactivitycomponent/ab;-><init>(Lorg/npci/upi/security/pinactivitycomponent/Keypad;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/TableRow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->Keypad:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->Keypad_keypad_bg_color:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$color;->npci_keypad_bg_color:I

    invoke-static {v1, v2}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->b:I

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->Keypad_key_digit_color:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$color;->npci_key_digit_color:I

    invoke-static {v1, v2}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->c:I

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->Keypad_key_digit_size:I

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->d:F

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->Keypad_key_digit_height:I

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->a:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getItemParams()Landroid/widget/TableRow$LayoutParams;
    .locals 4

    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->a:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->a(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    return-object v0
.end method

.method private setClickFeedback(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$attr;->selectableItemBackground:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public setOnKeyPressCallback(Lorg/npci/upi/security/pinactivitycomponent/ac;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->e:Lorg/npci/upi/security/pinactivitycomponent/ac;

    return-void
.end method
