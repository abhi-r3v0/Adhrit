.class public Lo/getPhotoUrl;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Lo/getPhotoUrl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 81
    invoke-direct {p0, p1, p2, v0}, Lo/getPhotoUrl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3, v0}, Lo/getPhotoUrl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 5

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1130
    sget p4, Lo/toStringMap$extraCallback;->textAppearanceLineHeightEnabled:I

    const/4 v0, 0x1

    invoke-static {p1, p4, v0}, Lo/sendSignInLinkToEmail;->ICustomTabsCallback(Landroid/content/Context;IZ)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    .line 1152
    sget-object v1, Lo/toStringMap$newSession;->MaterialTextView:[I

    const/4 v2, 0x0

    .line 1153
    invoke-virtual {p4, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 1155
    sget v4, Lo/toStringMap$newSession;->MaterialTextView_android_lineHeight:I

    aput v4, v3, v2

    sget v4, Lo/toStringMap$newSession;->MaterialTextView_lineHeight:I

    aput v4, v3, v0

    .line 1156
    invoke-static {p1, v1, v3}, Lo/getPhotoUrl;->ICustomTabsCallback(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    move-result p1

    .line 1161
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1168
    sget-object p1, Lo/toStringMap$newSession;->MaterialTextView:[I

    .line 1169
    invoke-virtual {p4, p2, p1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1171
    sget p2, Lo/toStringMap$newSession;->MaterialTextView_android_textAppearance:I

    .line 1172
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 1173
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq p2, v1, :cond_1

    .line 99
    invoke-direct {p0, p4, p2}, Lo/getPhotoUrl;->ICustomTabsCallback(Landroid/content/res/Resources$Theme;I)V

    :cond_1
    return-void
.end method

.method private static varargs ICustomTabsCallback(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    if-gez v0, :cond_0

    .line 140
    aget v0, p2, v1

    invoke-static {p0, p1, v0}, Lo/fetchSignInMethodsForEmail;->ICustomTabsCallback(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private ICustomTabsCallback(Landroid/content/res/Resources$Theme;I)V
    .locals 3

    .line 115
    sget-object v0, Lo/toStringMap$newSession;->MaterialTextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lo/toStringMap$newSession;->MaterialTextAppearance_android_lineHeight:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lo/toStringMap$newSession;->MaterialTextAppearance_lineHeight:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 117
    invoke-static {p2, p1, v0}, Lo/getPhotoUrl;->ICustomTabsCallback(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    move-result p2

    .line 122
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-ltz p2, :cond_0

    .line 125
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setLineHeight(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 2

    .line 107
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2130
    sget v0, Lo/toStringMap$extraCallback;->textAppearanceLineHeightEnabled:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lo/sendSignInLinkToEmail;->ICustomTabsCallback(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lo/getPhotoUrl;->ICustomTabsCallback(Landroid/content/res/Resources$Theme;I)V

    :cond_0
    return-void
.end method
