.class public Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;
.super Landroid/widget/EditText;


# instance fields
.field private A:[[I

.field private B:[I

.field private C:Landroid/content/res/ColorStateList;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/StringBuilder;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:I

.field private j:[Landroid/graphics/RectF;

.field private k:[F

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/Rect;

.field private q:Z

.field private r:Landroid/view/View$OnClickListener;

.field private s:Lorg/npci/upi/security/pinactivitycomponent/widget/i;

.field private t:Z

.field private u:F

.field private v:F

.field private w:Landroid/graphics/Paint;

.field private x:Z

.field private y:Z

.field private z:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a:Ljava/lang/String;

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->b:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->d:I

    const/high16 v1, 0x41c00000    # 24.0f

    iput v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->e:F

    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->g:F

    const/high16 v1, 0x41000000    # 8.0f

    iput v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->h:F

    const/4 v1, 0x4

    iput v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->i:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->p:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->q:Z

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->s:Lorg/npci/upi/security/pinactivitycomponent/widget/i;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->u:F

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->v:F

    iput-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->x:Z

    iput-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->y:Z

    new-array p1, v1, [[I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x10100a1

    aput v4, v3, v0

    aput-object v3, p1, v0

    new-array v3, v2, [I

    const v4, 0x10100a2

    aput v4, v3, v0

    aput-object v3, p1, v2

    new-array v3, v2, [I

    const v4, 0x101009c

    aput v4, v3, v0

    const/4 v4, 0x2

    aput-object v3, p1, v4

    new-array v2, v2, [I

    const v3, -0x101009c

    aput v3, v2, v0

    const/4 v0, 0x3

    aput-object v2, p1, v0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->A:[[I

    new-array p1, v1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->B:[I

    new-instance p1, Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->A:[[I

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->B:[I

    invoke-direct {p1, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->C:Landroid/content/res/ColorStateList;

    return-void

    nop

    :array_0
    .array-data 4
        -0xff0100
        -0x10000
        -0x1000000
        -0x777778
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a:Ljava/lang/String;

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->b:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->d:I

    const/high16 v2, 0x41c00000    # 24.0f

    iput v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->e:F

    const/high16 v2, 0x40800000    # 4.0f

    iput v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->g:F

    const/high16 v2, 0x41000000    # 8.0f

    iput v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->h:F

    const/4 v2, 0x4

    iput v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->i:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->p:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->q:Z

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->s:Lorg/npci/upi/security/pinactivitycomponent/widget/i;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->u:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->v:F

    iput-boolean v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->x:Z

    iput-boolean v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->y:Z

    new-array v0, v2, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x10100a1

    aput v5, v4, v1

    aput-object v4, v0, v1

    new-array v4, v3, [I

    const v5, 0x10100a2

    aput v5, v4, v1

    aput-object v4, v0, v3

    new-array v4, v3, [I

    const v5, 0x101009c

    aput v5, v4, v1

    const/4 v5, 0x2

    aput-object v4, v0, v5

    new-array v3, v3, [I

    const v4, -0x101009c

    aput v4, v3, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->A:[[I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->B:[I

    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->A:[[I

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->B:[I

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->C:Landroid/content/res/ColorStateList;

    invoke-direct {p0, p1, p2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        -0xff0100
        -0x10000
        -0x1000000
        -0x777778
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->b:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->d:I

    const/high16 v1, 0x41c00000    # 24.0f

    iput v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->e:F

    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->g:F

    const/high16 v1, 0x41000000    # 8.0f

    iput v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->h:F

    const/4 v1, 0x4

    iput v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->i:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->p:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->q:Z

    iput-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->s:Lorg/npci/upi/security/pinactivitycomponent/widget/i;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->u:F

    const/high16 p3, 0x40000000    # 2.0f

    iput p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->v:F

    iput-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->x:Z

    iput-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->y:Z

    new-array p3, v1, [[I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x10100a1

    aput v4, v3, v0

    aput-object v3, p3, v0

    new-array v3, v2, [I

    const v4, 0x10100a2

    aput v4, v3, v0

    aput-object v3, p3, v2

    new-array v3, v2, [I

    const v4, 0x101009c

    aput v4, v3, v0

    const/4 v4, 0x2

    aput-object v3, p3, v4

    new-array v2, v2, [I

    const v3, -0x101009c

    aput v3, v2, v0

    const/4 v0, 0x3

    aput-object v2, p3, v0

    iput-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->A:[[I

    new-array p3, v1, [I

    fill-array-data p3, :array_0

    iput-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->B:[I

    new-instance p3, Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->A:[[I

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->B:[I

    invoke-direct {p3, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->C:Landroid/content/res/ColorStateList;

    invoke-direct {p0, p1, p2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        -0xff0100
        -0x10000
        -0x1000000
        -0x777778
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    iput-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->b:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->c:Ljava/lang/String;

    const/4 p4, 0x0

    iput p4, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->d:I

    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->e:F

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->g:F

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->h:F

    const/4 v0, 0x4

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->i:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->p:Landroid/graphics/Rect;

    iput-boolean p4, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->q:Z

    iput-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->s:Lorg/npci/upi/security/pinactivitycomponent/widget/i;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->u:F

    const/high16 p3, 0x40000000    # 2.0f

    iput p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->v:F

    iput-boolean p4, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->x:Z

    iput-boolean p4, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->y:Z

    new-array p3, v0, [[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100a1

    aput v3, v2, p4

    aput-object v2, p3, p4

    new-array v2, v1, [I

    const v3, 0x10100a2

    aput v3, v2, p4

    aput-object v2, p3, v1

    new-array v2, v1, [I

    const v3, 0x101009c

    aput v3, v2, p4

    const/4 v3, 0x2

    aput-object v2, p3, v3

    new-array v1, v1, [I

    const v2, -0x101009c

    aput v2, v1, p4

    const/4 p4, 0x3

    aput-object v1, p3, p4

    iput-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->A:[[I

    new-array p3, v0, [I

    fill-array-data p3, :array_0

    iput-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->B:[I

    new-instance p3, Landroid/content/res/ColorStateList;

    iget-object p4, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->A:[[I

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->B:[I

    invoke-direct {p3, p4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->C:Landroid/content/res/ColorStateList;

    invoke-direct {p0, p1, p2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        -0xff0100
        -0x10000
        -0x1000000
        -0x777778
    .end array-data
.end method

.method private varargs a([I)I
    .locals 2

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->C:Landroid/content/res/ColorStateList;

    const v1, -0x777778

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1
.end method

.method static synthetic a(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->r:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->u:F

    invoke-virtual {p0, v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->u:F

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->v:F

    invoke-virtual {p0, v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->v:F

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->e:F

    invoke-virtual {p0, v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->e:F

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->h:F

    invoke-virtual {p0, v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->h:F

    sget-object v0, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->FormItemEditText:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    sget v3, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->FormItemEditText_pinAnimationType:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v2, v2, Landroid/util/TypedValue;->data:I

    iput v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->d:I

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->FormItemEditText_pinCharacterMask:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a:Ljava/lang/String;

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->FormItemEditText_pinRepeatedHint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->c:Ljava/lang/String;

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->FormItemEditText_pinLineStroke:I

    iget v3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->u:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->u:F

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->FormItemEditText_pinLineStrokeSelected:I

    iget v3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->v:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->v:F

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->FormItemEditText_pinLineStrokeCentered:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->t:Z

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->FormItemEditText_pinCharacterSize:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->f:F

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->FormItemEditText_pinCharacterSpacing:I

    iget v3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->e:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->e:F

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->FormItemEditText_pinTextBottomPadding:I

    iget v3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->h:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->h:F

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->FormItemEditText_pinBackgroundIsSquare:I

    iget-boolean v3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->q:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->q:Z

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->FormItemEditText_pinBackgroundDrawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->o:Landroid/graphics/drawable/Drawable;

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$styleable;->FormItemEditText_pinLineColors:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->C:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->l:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->m:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->n:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->w:Landroid/graphics/Paint;

    iget v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->u:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->f:F

    invoke-virtual {p0, v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->setFontSize(F)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$attr;->colorControlActivated:I

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->data:I

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->B:[I

    aput p1, v0, v1

    const p1, -0x777778

    aput p1, v0, v3

    const/4 v2, 0x2

    aput p1, v0, v2

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p1, 0x4

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v2, "maxLength"

    invoke-interface {p2, v0, v2, p1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->i:I

    int-to-float p1, p1

    iput p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->g:F

    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/widget/b;

    invoke-direct {p1, p0}, Lorg/npci/upi/security/pinactivitycomponent/widget/b;-><init>(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;)V

    invoke-super {p0, p1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/widget/c;

    invoke-direct {p1, p0}, Lorg/npci/upi/security/pinactivitycomponent/widget/c;-><init>(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;)V

    invoke-super {p0, p1}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result p1

    const/16 p2, 0x80

    and-int/2addr p1, p2

    const-string v0, "\u25cf"

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result p1

    const/16 p2, 0x10

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->getMaskChars()Ljava/lang/StringBuilder;

    move-result-object p1

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->b:Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->p:Landroid/graphics/Rect;

    const-string v0, "|"

    invoke-virtual {p1, v0, v1, v3, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->d:I

    if-ltz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->x:Z

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->m:Landroid/graphics/Paint;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/npci/upi/security/pinactivitycomponent/widget/d;

    invoke-direct {v1, p0}, Lorg/npci/upi/security/pinactivitycomponent/widget/d;-><init>(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iget v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->i:I

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->s:Lorg/npci/upi/security/pinactivitycomponent/widget/i;

    if-eqz p1, :cond_0

    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/widget/e;

    invoke-direct {p1, p0}, Lorg/npci/upi/security/pinactivitycomponent/widget/e;-><init>(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;)V

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x7d
        0xff
    .end array-data
.end method

.method private a(Ljava/lang/CharSequence;I)V
    .locals 7

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->k:[F

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    aget-object v1, v1, p2

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->h:F

    sub-float/2addr v1, v2

    aput v1, v0, p2

    const/4 v0, 0x2

    new-array v1, v0, [F

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->k:[F

    aget v2, v2, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->k:[F

    aget v2, v2, p2

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v5, 0x12c

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lorg/npci/upi/security/pinactivitycomponent/widget/f;

    invoke-direct {v2, p0, p2}, Lorg/npci/upi/security/pinactivitycomponent/widget/f;-><init>(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->m:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-array p2, v0, [I

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/npci/upi/security/pinactivitycomponent/widget/g;

    invoke-direct {v2, p0}, Lorg/npci/upi/security/pinactivitycomponent/widget/g;-><init>(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iget v5, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->i:I

    if-ne p1, v5, :cond_0

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->s:Lorg/npci/upi/security/pinactivitycomponent/widget/i;

    if-eqz p1, :cond_0

    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/widget/h;

    invoke-direct {p1, p0}, Lorg/npci/upi/security/pinactivitycomponent/widget/h;-><init>(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;)V

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    new-array p1, v0, [Landroid/animation/Animator;

    aput-object v1, p1, v3

    aput-object p2, p1, v4

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private a(ZZ)V
    .locals 4

    iget-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->y:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->w:Landroid/graphics/Paint;

    new-array p2, v2, [I

    const v0, 0x10100a2

    aput v0, p2, v1

    invoke-direct {p0, p2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a([I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->w:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->v:F

    goto :goto_0

    :cond_1
    iget v3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->u:F

    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->w:Landroid/graphics/Paint;

    new-array p2, v2, [I

    const v0, 0x10100a1

    aput v0, p2, v1

    invoke-direct {p0, p2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a([I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    new-array p1, v2, [I

    const p2, 0x10100a6

    aput p2, p1, v1

    invoke-direct {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a([I)I

    move-result p1

    goto :goto_1

    :cond_3
    new-array p1, v2, [I

    const p2, -0x10100a6

    aput p2, p1, v1

    invoke-direct {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a([I)I

    move-result p1

    :goto_1
    iget-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->w:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_4
    if-eqz p1, :cond_5

    new-array p1, v2, [I

    const p2, 0x101009c

    aput p2, p1, v1

    invoke-direct {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a([I)I

    move-result p1

    goto :goto_2

    :cond_5
    new-array p1, v2, [I

    const p2, -0x101009c

    aput p2, p1, v1

    invoke-direct {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a([I)I

    move-result p1

    :goto_2
    iget-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->w:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic b(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->m:Landroid/graphics/Paint;

    return-object p0
.end method

.method private b(ZZ)V
    .locals 4

    iget-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->y:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->o:Landroid/graphics/drawable/Drawable;

    new-array p2, v2, [I

    const v0, 0x10100a2

    aput v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->o:Landroid/graphics/drawable/Drawable;

    new-array v2, v2, [I

    const v3, 0x101009c

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/4 v0, 0x2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->o:Landroid/graphics/drawable/Drawable;

    new-array p2, v0, [I

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->o:Landroid/graphics/drawable/Drawable;

    new-array p2, v0, [I

    fill-array-data p2, :array_1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    :cond_2
    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->o:Landroid/graphics/drawable/Drawable;

    new-array p2, v2, [I

    const v0, -0x101009c

    aput v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x101009c
        0x10100a1
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x10100a0
    .end array-data
.end method

.method static synthetic c(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;)Lorg/npci/upi/security/pinactivitycomponent/widget/i;
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->s:Lorg/npci/upi/security/pinactivitycomponent/widget/i;

    return-object p0
.end method

.method static synthetic d(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;)[F
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->k:[F

    return-object p0
.end method

.method private getFullText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->getMaskChars()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private getMaskChars()Ljava/lang/StringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->b:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->b:Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->b:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->b:Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method a(F)I
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

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->getFullText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    new-array v9, v8, [F

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v10, v8, v9}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [F

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget v4, v2, v3

    add-float/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v11, v1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    const/4 v12, 0x0

    :goto_2
    int-to-float v0, v12

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->g:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->o:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x1

    if-eqz v0, :cond_4

    if-ge v12, v8, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ne v12, v8, :cond_3

    const/4 v1, 0x1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_4
    invoke-direct {p0, v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->b(ZZ)V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->o:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    aget-object v2, v2, v12

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    aget-object v3, v3, v12

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    aget-object v4, v4, v12

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    aget-object v0, v0, v12

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->f:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    if-le v8, v12, :cond_7

    iget-boolean v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->x:Z

    if-eqz v1, :cond_6

    add-int/lit8 v1, v8, -0x1

    if-eq v12, v1, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v12, 0x1

    aget v1, v9, v12

    div-float/2addr v1, v2

    sub-float v4, v0, v1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->k:[F

    aget v5, v0, v12

    iget-object v6, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->m:Landroid/graphics/Paint;

    goto :goto_6

    :cond_6
    :goto_5
    add-int/lit8 v3, v12, 0x1

    aget v1, v9, v12

    div-float/2addr v1, v2

    sub-float v4, v0, v1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->k:[F

    aget v5, v0, v12

    iget-object v6, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->l:Landroid/graphics/Paint;

    :goto_6
    move-object v0, p1

    move-object v1, v7

    move v2, v12

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_7
    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->c:Ljava/lang/String;

    if-eqz v1, :cond_8

    div-float v2, v11, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->k:[F

    aget v2, v2, v12

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_8
    :goto_7
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->o:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_b

    if-ge v12, v8, :cond_9

    const/4 v0, 0x1

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    :goto_8
    if-ne v12, v8, :cond_a

    goto :goto_9

    :cond_a
    const/4 v13, 0x0

    :goto_9
    invoke-direct {p0, v0, v13}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a(ZZ)V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    aget-object v0, v0, v12

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    aget-object v0, v0, v12

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    aget-object v0, v0, v12

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    aget-object v0, v0, v12

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->w:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_c
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->z:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->m:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->l:Landroid/graphics/Paint;

    iget-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->z:Landroid/content/res/ColorStateList;

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->n:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentHintTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub$Proxy(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p0}, Lo/unregisterCallbackListener;->asInterface(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->e:F

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v1, p2, p4

    if-gez v1, :cond_1

    int-to-float p1, p1

    iget p2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->g:F

    mul-float p2, p2, v0

    sub-float/2addr p2, p3

    div-float/2addr p1, p2

    :goto_0
    iput p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->f:F

    goto :goto_1

    :cond_1
    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->f:F

    cmpl-float v1, v1, p4

    if-nez v1, :cond_2

    int-to-float p1, p1

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->g:F

    sub-float p3, v1, p3

    mul-float p2, p2, p3

    sub-float/2addr p1, p2

    div-float/2addr p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    iget p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->g:F

    float-to-int p2, p1

    new-array p2, p2, [Landroid/graphics/RectF;

    iput-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    float-to-int p1, p1

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->k:[F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Lo/fromRating;->onPostMessage(Ljava/util/Locale;)I

    move-result p2

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_4

    const/4 v1, -0x1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-static {p0}, Lo/unregisterCallbackListener;->asInterface(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    iget v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->f:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    goto :goto_3

    :cond_4
    invoke-static {p0}, Lo/unregisterCallbackListener;->asInterface(Landroid/view/View;)I

    move-result p2

    :goto_3
    int-to-float v2, p3

    iget v3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->g:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    int-to-float p2, p2

    int-to-float v4, p1

    iget v5, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->f:F

    add-float/2addr v5, p2

    invoke-direct {v3, p2, v4, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v3, v2, p3

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->q:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    aget-object v2, v2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    aget-object v3, v2, p3

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v2, p2

    iput v2, v3, Landroid/graphics/RectF;->right:F

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    aget-object v2, v2, p3

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->p:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->h:F

    mul-float v5, v5, v0

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    :cond_6
    :goto_4
    iget v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->e:F

    cmpg-float v3, v2, p4

    if-gez v3, :cond_7

    int-to-float v2, v1

    iget v3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->f:F

    mul-float v2, v2, v3

    mul-float v2, v2, v0

    add-float/2addr p2, v2

    goto :goto_5

    :cond_7
    int-to-float v3, v1

    iget v4, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->f:F

    add-float/2addr v4, v2

    mul-float v3, v3, v4

    add-float/2addr p2, v3

    :goto_5
    float-to-int p2, p2

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->k:[F

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    aget-object v3, v3, p3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->h:F

    sub-float/2addr v3, v4

    aput v3, v2, p3

    iget-boolean v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->t:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    aget-object v3, v2, p3

    aget-object v2, v2, p3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    div-float/2addr v2, v0

    iput v2, v3, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    aget-object v3, v2, p3

    aget-object v2, v2, p3

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v2, v0

    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    :cond_8
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_3

    :cond_9
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->setError(Z)V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->j:[Landroid/graphics/RectF;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->x:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    if-le p4, p3, :cond_3

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->a(Ljava/lang/CharSequence;I)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    iget-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->s:Lorg/npci/upi/security/pinactivitycomponent/widget/i;

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    iget p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->i:I

    if-ne p2, p3, :cond_5

    iget-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->s:Lorg/npci/upi/security/pinactivitycomponent/widget/i;

    invoke-interface {p2, p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/i;->a(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public setAnimateText(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->x:Z

    return-void
.end method

.method public setCharSize(F)V
    .locals 0

    iput p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->f:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setColorStates(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->C:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "setCustomSelectionActionModeCallback() not supported."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setError(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->y:Z

    return-void
.end method

.method public setFontSize(F)V
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setLineStroke(F)V
    .locals 0

    iput p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->u:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLineStrokeCentered(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->t:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLineStrokeSelected(F)V
    .locals 0

    iput p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->v:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMargin([I)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMaxLength(I)V
    .locals 2

    iput p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->i:I

    int-to-float v0, p1

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->g:F

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->r:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnPinEnteredListener(Lorg/npci/upi/security/pinactivitycomponent/widget/i;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->s:Lorg/npci/upi/security/pinactivitycomponent/widget/i;

    return-void
.end method

.method public setSpace(F)V
    .locals 0

    iput p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->e:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
