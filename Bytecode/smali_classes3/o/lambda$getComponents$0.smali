.class public final Lo/lambda$getComponents$0;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source ""


# static fields
.field private static final extraCallback:[[I

.field private static final onMessageChannelReady:I


# instance fields
.field private ICustomTabsCallback:Z

.field private onNavigationEvent:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    sget v0, Lo/toStringMap$onRelationshipValidationResult;->Widget_MaterialComponents_CompoundButton_CheckBox:I

    sput v0, Lo/lambda$getComponents$0;->onMessageChannelReady:I

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

    sput-object v0, Lo/lambda$getComponents$0;->extraCallback:[[I

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
    invoke-direct {p0, p1, v0}, Lo/lambda$getComponents$0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 61
    sget v0, Lo/toStringMap$extraCallback;->checkboxStyle:I

    invoke-direct {p0, p1, p2, v0}, Lo/lambda$getComponents$0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 65
    sget v0, Lo/lambda$getComponents$0;->onMessageChannelReady:I

    invoke-static {p1, p2, p3, v0}, Lo/signInWithCustomToken;->onMessageChannelReady(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 69
    sget-object v6, Lo/toStringMap$newSession;->MaterialCheckBox:[I

    sget v7, Lo/lambda$getComponents$0;->onMessageChannelReady:I

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

    move-result-object p2

    .line 75
    sget p3, Lo/toStringMap$newSession;->MaterialCheckBox_buttonTint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 76
    sget p3, Lo/toStringMap$newSession;->MaterialCheckBox_buttonTint:I

    .line 78
    invoke-static {p1, p2, p3}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 76
    invoke-static {p0, p1}, Lo/isCaptioningEnabled;->extraCallback(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 82
    :cond_0
    sget p1, Lo/toStringMap$newSession;->MaterialCheckBox_useMaterialThemeColors:I

    .line 83
    invoke-virtual {p2, p1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lo/lambda$getComponents$0;->ICustomTabsCallback:Z

    .line 85
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected final onAttachedToWindow()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onAttachedToWindow()V

    .line 92
    iget-boolean v0, p0, Lo/lambda$getComponents$0;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lo/isCaptioningEnabled;->ICustomTabsCallback(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, v0}, Lo/lambda$getComponents$0;->setUseMaterialThemeColors(Z)V

    :cond_0
    return-void
.end method

.method public final setUseMaterialThemeColors(Z)V
    .locals 6

    .line 103
    iput-boolean p1, p0, Lo/lambda$getComponents$0;->ICustomTabsCallback:Z

    if-eqz p1, :cond_1

    .line 1117
    iget-object p1, p0, Lo/lambda$getComponents$0;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_0

    .line 1118
    sget-object p1, Lo/lambda$getComponents$0;->extraCallback:[[I

    array-length p1, p1

    new-array p1, p1, [I

    .line 1119
    sget v0, Lo/toStringMap$extraCallback;->colorControlActivated:I

    .line 2085
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 2084
    invoke-static {v1, v0, v2}, Lo/sendSignInLinkToEmail;->ICustomTabsCallback(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 1120
    sget v1, Lo/toStringMap$extraCallback;->colorSurface:I

    .line 3085
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 3084
    invoke-static {v2, v1, v3}, Lo/sendSignInLinkToEmail;->ICustomTabsCallback(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 1121
    sget v2, Lo/toStringMap$extraCallback;->colorOnSurface:I

    .line 4085
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    .line 4084
    invoke-static {v3, v2, v4}, Lo/sendSignInLinkToEmail;->ICustomTabsCallback(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 4129
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 4130
    invoke-static {v0, v4}, Lo/getString;->extraCallback(II)I

    move-result v0

    .line 4140
    invoke-static {v0, v1}, Lo/getString;->onMessageChannelReady(II)I

    move-result v0

    .line 1124
    aput v0, p1, v3

    const/4 v0, 0x1

    const v3, 0x3f0a3d71    # 0.54f

    .line 5129
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 5130
    invoke-static {v2, v3}, Lo/getString;->extraCallback(II)I

    move-result v3

    .line 5140
    invoke-static {v3, v1}, Lo/getString;->onMessageChannelReady(II)I

    move-result v3

    .line 1126
    aput v3, p1, v0

    const/4 v0, 0x2

    .line 6129
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ec28f5c    # 0.38f

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 6130
    invoke-static {v2, v3}, Lo/getString;->extraCallback(II)I

    move-result v3

    .line 6140
    invoke-static {v3, v1}, Lo/getString;->onMessageChannelReady(II)I

    move-result v3

    .line 1128
    aput v3, p1, v0

    const/4 v0, 0x3

    .line 7129
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 7130
    invoke-static {v2, v3}, Lo/getString;->extraCallback(II)I

    move-result v2

    .line 7140
    invoke-static {v2, v1}, Lo/getString;->onMessageChannelReady(II)I

    move-result v1

    .line 1130
    aput v1, p1, v0

    .line 1132
    new-instance v0, Landroid/content/res/ColorStateList;

    sget-object v1, Lo/lambda$getComponents$0;->extraCallback:[[I

    invoke-direct {v0, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lo/lambda$getComponents$0;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 1134
    :cond_0
    iget-object p1, p0, Lo/lambda$getComponents$0;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 105
    invoke-static {p0, p1}, Lo/isCaptioningEnabled;->extraCallback(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 107
    invoke-static {p0, p1}, Lo/isCaptioningEnabled;->extraCallback(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method
