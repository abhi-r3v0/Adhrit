.class public Landroidx/preference/ListPreference;
.super Landroidx/preference/DialogPreference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/ListPreference$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback$Stub:[Ljava/lang/CharSequence;

.field private ICustomTabsCallback$Stub$Proxy:Z

.field public asInterface:[Ljava/lang/CharSequence;

.field private onRelationshipValidationResult:Ljava/lang/String;

.field public onTransact:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 78
    sget v0, Lo/onFastForward$ICustomTabsCallback;->dialogPreferenceStyle:I

    .line 3354
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 3355
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3356
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x1010091

    .line 78
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 p4, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    sget-object v0, Lo/onFastForward$asBinder;->ListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    sget v1, Lo/onFastForward$asBinder;->ListPreference_entries:I

    sget v2, Lo/onFastForward$asBinder;->ListPreference_android_entries:I

    .line 1342
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1344
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 53
    :cond_0
    iput-object v1, p0, Landroidx/preference/ListPreference;->ICustomTabsCallback$Stub:[Ljava/lang/CharSequence;

    .line 56
    sget v1, Lo/onFastForward$asBinder;->ListPreference_entryValues:I

    sget v2, Lo/onFastForward$asBinder;->ListPreference_android_entryValues:I

    .line 2342
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2344
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 56
    :cond_1
    iput-object v1, p0, Landroidx/preference/ListPreference;->asInterface:[Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    sget-object v0, Lo/onFastForward$asBinder;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 67
    sget p2, Lo/onFastForward$asBinder;->Preference_summary:I

    sget p3, Lo/onFastForward$asBinder;->Preference_android_summary:I

    .line 3310
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 3312
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 67
    :cond_2
    iput-object p2, p0, Landroidx/preference/ListPreference;->onRelationshipValidationResult:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 239
    iget-object v0, p0, Landroidx/preference/ListPreference;->asInterface:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 240
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 241
    iget-object v1, p0, Landroidx/preference/ListPreference;->asInterface:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public extraCallback(Ljava/lang/CharSequence;)V
    .locals 1

    .line 193
    invoke-super {p0, p1}, Landroidx/preference/DialogPreference;->extraCallback(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_0

    .line 194
    iget-object v0, p0, Landroidx/preference/ListPreference;->onRelationshipValidationResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 195
    iput-object p1, p0, Landroidx/preference/ListPreference;->onRelationshipValidationResult:Ljava/lang/String;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 196
    iget-object v0, p0, Landroidx/preference/ListPreference;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/ListPreference;->onRelationshipValidationResult:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected onNavigationEvent(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 255
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onNavigationEvent(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/ListPreference$ICustomTabsCallback;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    check-cast p1, Landroidx/preference/ListPreference$ICustomTabsCallback;

    .line 285
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/DialogPreference;->onNavigationEvent(Landroid/os/Parcelable;)V

    .line 286
    iget-object p1, p1, Landroidx/preference/ListPreference$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->onPostMessage(Ljava/lang/String;)V

    return-void

    .line 280
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/DialogPreference;->onNavigationEvent(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onPostMessage()Landroid/os/Parcelable;
    .locals 2

    .line 265
    invoke-super {p0}, Landroidx/preference/DialogPreference;->onPostMessage()Landroid/os/Parcelable;

    move-result-object v0

    .line 266
    invoke-virtual {p0}, Landroidx/preference/Preference;->requestPostMessageChannel()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 271
    :cond_0
    new-instance v1, Landroidx/preference/ListPreference$ICustomTabsCallback;

    invoke-direct {v1, v0}, Landroidx/preference/ListPreference$ICustomTabsCallback;-><init>(Landroid/os/Parcelable;)V

    .line 5219
    iget-object v0, p0, Landroidx/preference/ListPreference;->onTransact:Ljava/lang/String;

    .line 272
    iput-object v0, v1, Landroidx/preference/ListPreference$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    return-object v1
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 3

    .line 153
    iget-object v0, p0, Landroidx/preference/ListPreference;->onTransact:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 154
    iget-boolean v2, p0, Landroidx/preference/ListPreference;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v2, :cond_1

    .line 155
    :cond_0
    iput-object p1, p0, Landroidx/preference/ListPreference;->onTransact:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Landroidx/preference/ListPreference;->ICustomTabsCallback$Stub$Proxy:Z

    .line 157
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->onNavigationEvent(Ljava/lang/String;)Z

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->onNavigationEvent()V

    :cond_1
    return-void
.end method

.method public onTransact()Ljava/lang/CharSequence;
    .locals 4

    .line 4250
    iget-object v0, p0, Landroidx/preference/ListPreference;->onTransact:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 4229
    iget-object v1, p0, Landroidx/preference/ListPreference;->ICustomTabsCallback$Stub:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    iget-object v1, p0, Landroidx/preference/ListPreference;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 176
    invoke-super {p0}, Landroidx/preference/DialogPreference;->onTransact()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    aput-object v0, v2, v3

    .line 178
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
