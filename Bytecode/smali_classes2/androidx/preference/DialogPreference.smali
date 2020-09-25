.class public abstract Landroidx/preference/DialogPreference;
.super Landroidx/preference/Preference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/DialogPreference$extraCallback;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/lang/CharSequence;

.field public asBinder:I

.field public extraCallback:Ljava/lang/CharSequence;

.field public onMessageChannelReady:Ljava/lang/CharSequence;

.field public onNavigationEvent:Ljava/lang/CharSequence;

.field public onPostMessage:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 94
    sget v0, Lo/onFastForward$ICustomTabsCallback;->dialogPreferenceStyle:I

    .line 5354
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 5355
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 5356
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x1010091

    .line 94
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    sget-object v0, Lo/onFastForward$asBinder;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    sget p2, Lo/onFastForward$asBinder;->DialogPreference_dialogTitle:I

    sget p3, Lo/onFastForward$asBinder;->DialogPreference_android_dialogTitle:I

    .line 1310
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1312
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 60
    :cond_0
    iput-object p2, p0, Landroidx/preference/DialogPreference;->extraCallback:Ljava/lang/CharSequence;

    if-nez p2, :cond_1

    .line 65
    invoke-virtual {p0}, Landroidx/preference/Preference;->getInterfaceDescriptor()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->extraCallback:Ljava/lang/CharSequence;

    .line 68
    :cond_1
    sget p2, Lo/onFastForward$asBinder;->DialogPreference_dialogMessage:I

    sget p3, Lo/onFastForward$asBinder;->DialogPreference_android_dialogMessage:I

    .line 2310
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 2312
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 68
    :cond_2
    iput-object p2, p0, Landroidx/preference/DialogPreference;->onMessageChannelReady:Ljava/lang/CharSequence;

    .line 71
    sget p2, Lo/onFastForward$asBinder;->DialogPreference_dialogIcon:I

    sget p3, Lo/onFastForward$asBinder;->DialogPreference_android_dialogIcon:I

    .line 3275
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_3

    .line 3277
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 71
    :cond_3
    iput-object p2, p0, Landroidx/preference/DialogPreference;->onPostMessage:Landroid/graphics/drawable/Drawable;

    .line 74
    sget p2, Lo/onFastForward$asBinder;->DialogPreference_positiveButtonText:I

    sget p3, Lo/onFastForward$asBinder;->DialogPreference_android_positiveButtonText:I

    .line 3310
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    .line 3312
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 74
    :cond_4
    iput-object p2, p0, Landroidx/preference/DialogPreference;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 78
    sget p2, Lo/onFastForward$asBinder;->DialogPreference_negativeButtonText:I

    sget p3, Lo/onFastForward$asBinder;->DialogPreference_android_negativeButtonText:I

    .line 4310
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    .line 4312
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 78
    :cond_5
    iput-object p2, p0, Landroidx/preference/DialogPreference;->ICustomTabsCallback:Ljava/lang/CharSequence;

    .line 82
    sget p2, Lo/onFastForward$asBinder;->DialogPreference_dialogLayout:I

    sget p3, Lo/onFastForward$asBinder;->DialogPreference_android_dialogLayout:I

    const/4 p4, 0x0

    .line 5299
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 5300
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 82
    iput p2, p0, Landroidx/preference/DialogPreference;->asBinder:I

    .line 86
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected extraCallback()V
    .locals 0

    .line 263
    invoke-virtual {p0}, Landroidx/preference/Preference;->IPostMessageService()Lo/onPlayFromUri;

    return-void
.end method
