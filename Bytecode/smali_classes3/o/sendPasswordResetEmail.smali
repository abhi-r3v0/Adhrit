.class public final Lo/sendPasswordResetEmail;
.super Landroidx/appcompat/widget/AppCompatRadioButton;
.source ""


# static fields
.field private static final onMessageChannelReady:I

.field private static final onPostMessage:[[I


# instance fields
.field private extraCallback:Landroid/content/res/ColorStateList;

.field private onNavigationEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    sget v0, Lo/toStringMap$onRelationshipValidationResult;->Widget_MaterialComponents_CompoundButton_RadioButton:I

    sput v0, Lo/sendPasswordResetEmail;->onMessageChannelReady:I

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 46
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lo/sendPasswordResetEmail;->onPostMessage:[[I

    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    :array_2
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_3
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lo/sendPasswordResetEmail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 61
    sget v0, Lo/toStringMap$extraCallback;->radioButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lo/sendPasswordResetEmail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 66
    sget v0, Lo/sendPasswordResetEmail;->onMessageChannelReady:I

    invoke-static {p1, p2, p3, v0}, Lo/signInWithCustomToken;->onMessageChannelReady(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 70
    sget-object v6, Lo/toStringMap$newSession;->MaterialRadioButton:[I

    sget v7, Lo/sendPasswordResetEmail;->onMessageChannelReady:I

    const/4 v8, 0x0

    new-array v5, v8, [I

    .line 1081
    invoke-static {p1, p2, p3, v7}, Lo/signInWithCustomToken;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, v6

    move v3, p3

    move v4, v7

    .line 1084
    invoke-static/range {v0 .. v5}, Lo/signInWithCustomToken;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 1087
    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    sget p2, Lo/toStringMap$newSession;->MaterialRadioButton_useMaterialThemeColors:I

    .line 75
    invoke-virtual {p1, p2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lo/sendPasswordResetEmail;->onNavigationEvent:Z

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected final onAttachedToWindow()V
    .locals 1

    .line 82
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatRadioButton;->onAttachedToWindow()V

    .line 84
    iget-boolean v0, p0, Lo/sendPasswordResetEmail;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lo/isCaptioningEnabled;->ICustomTabsCallback(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, v0}, Lo/sendPasswordResetEmail;->setUseMaterialThemeColors(Z)V

    :cond_0
    return-void
.end method

.method public final setUseMaterialThemeColors(Z)V
    .locals 6

    .line 95
    iput-boolean p1, p0, Lo/sendPasswordResetEmail;->onNavigationEvent:Z

    if-eqz p1, :cond_1

    .line 1109
    iget-object p1, p0, Lo/sendPasswordResetEmail;->extraCallback:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_0

    .line 1110
    sget p1, Lo/toStringMap$extraCallback;->colorControlActivated:I

    .line 2085
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 2084
    invoke-static {v0, p1, v1}, Lo/sendSignInLinkToEmail;->ICustomTabsCallback(Landroid/content/Context;ILjava/lang/String;)I

    move-result p1

    .line 1111
    sget v0, Lo/toStringMap$extraCallback;->colorOnSurface:I

    .line 3085
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 3084
    invoke-static {v1, v0, v2}, Lo/sendSignInLinkToEmail;->ICustomTabsCallback(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 1112
    sget v1, Lo/toStringMap$extraCallback;->colorSurface:I

    .line 4085
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 4084
    invoke-static {v2, v1, v3}, Lo/sendSignInLinkToEmail;->ICustomTabsCallback(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 1114
    sget-object v2, Lo/sendPasswordResetEmail;->onPostMessage:[[I

    array-length v2, v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 4129
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 4130
    invoke-static {p1, v4}, Lo/getString;->extraCallback(II)I

    move-result p1

    .line 4140
    invoke-static {p1, v1}, Lo/getString;->onMessageChannelReady(II)I

    move-result p1

    .line 1116
    aput p1, v2, v3

    const/4 p1, 0x1

    const v3, 0x3f0a3d71    # 0.54f

    .line 5129
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 5130
    invoke-static {v0, v3}, Lo/getString;->extraCallback(II)I

    move-result v3

    .line 5140
    invoke-static {v3, v1}, Lo/getString;->onMessageChannelReady(II)I

    move-result v3

    .line 1118
    aput v3, v2, p1

    const/4 p1, 0x2

    .line 6129
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ec28f5c    # 0.38f

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 6130
    invoke-static {v0, v3}, Lo/getString;->extraCallback(II)I

    move-result v3

    .line 6140
    invoke-static {v3, v1}, Lo/getString;->onMessageChannelReady(II)I

    move-result v3

    .line 1120
    aput v3, v2, p1

    const/4 p1, 0x3

    .line 7129
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 7130
    invoke-static {v0, v3}, Lo/getString;->extraCallback(II)I

    move-result v0

    .line 7140
    invoke-static {v0, v1}, Lo/getString;->onMessageChannelReady(II)I

    move-result v0

    .line 1122
    aput v0, v2, p1

    .line 1123
    new-instance p1, Landroid/content/res/ColorStateList;

    sget-object v0, Lo/sendPasswordResetEmail;->onPostMessage:[[I

    invoke-direct {p1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object p1, p0, Lo/sendPasswordResetEmail;->extraCallback:Landroid/content/res/ColorStateList;

    .line 1126
    :cond_0
    iget-object p1, p0, Lo/sendPasswordResetEmail;->extraCallback:Landroid/content/res/ColorStateList;

    .line 97
    invoke-static {p0, p1}, Lo/isCaptioningEnabled;->extraCallback(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 99
    invoke-static {p0, p1}, Lo/isCaptioningEnabled;->extraCallback(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method
