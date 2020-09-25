.class public Landroidx/preference/MultiSelectListPreference;
.super Landroidx/preference/internal/AbstractMultiSelectListPreference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/MultiSelectListPreference$extraCallback;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback$Stub:[Ljava/lang/CharSequence;

.field private asInterface:[Ljava/lang/CharSequence;

.field private onTransact:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 74
    sget v0, Lo/onFastForward$ICustomTabsCallback;->dialogPreferenceStyle:I

    .line 2354
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2355
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2356
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x1010091

    .line 74
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 1

    const/4 p4, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/internal/AbstractMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/preference/MultiSelectListPreference;->onTransact:Ljava/util/Set;

    .line 54
    sget-object v0, Lo/onFastForward$asBinder;->MultiSelectListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    sget p2, Lo/onFastForward$asBinder;->MultiSelectListPreference_entries:I

    sget p3, Lo/onFastForward$asBinder;->MultiSelectListPreference_android_entries:I

    .line 1342
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1344
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    .line 58
    :cond_0
    iput-object p2, p0, Landroidx/preference/MultiSelectListPreference;->ICustomTabsCallback$Stub:[Ljava/lang/CharSequence;

    .line 62
    sget p2, Lo/onFastForward$asBinder;->MultiSelectListPreference_entryValues:I

    sget p3, Lo/onFastForward$asBinder;->MultiSelectListPreference_android_entryValues:I

    .line 2342
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_1

    .line 2344
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    .line 62
    :cond_1
    iput-object p2, p0, Landroidx/preference/MultiSelectListPreference;->asInterface:[Ljava/lang/CharSequence;

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final asBinder()[Ljava/lang/CharSequence;
    .locals 1

    .line 112
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreference;->ICustomTabsCallback$Stub:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final asInterface()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreference;->onTransact:Ljava/util/Set;

    return-object v0
.end method

.method public final extraCallback(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreference;->onTransact:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 153
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreference;->onTransact:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 155
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onNavigationEvent(Ljava/util/Set;)Z

    return-void
.end method

.method protected onNavigationEvent(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 3

    .line 198
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 199
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 201
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 202
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method protected onNavigationEvent(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/MultiSelectListPreference$extraCallback;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    check-cast p1, Landroidx/preference/MultiSelectListPreference$extraCallback;

    .line 236
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->onNavigationEvent(Landroid/os/Parcelable;)V

    .line 237
    iget-object p1, p1, Landroidx/preference/MultiSelectListPreference$extraCallback;->onNavigationEvent:Ljava/util/Set;

    .line 4152
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreference;->onTransact:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4153
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreference;->onTransact:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4155
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onNavigationEvent(Ljava/util/Set;)Z

    return-void

    .line 231
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->onNavigationEvent(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onPostMessage()Landroid/os/Parcelable;
    .locals 2

    .line 216
    invoke-super {p0}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->onPostMessage()Landroid/os/Parcelable;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Landroidx/preference/Preference;->requestPostMessageChannel()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 222
    :cond_0
    new-instance v1, Landroidx/preference/MultiSelectListPreference$extraCallback;

    invoke-direct {v1, v0}, Landroidx/preference/MultiSelectListPreference$extraCallback;-><init>(Landroid/os/Parcelable;)V

    .line 3163
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreference;->onTransact:Ljava/util/Set;

    .line 223
    iput-object v0, v1, Landroidx/preference/MultiSelectListPreference$extraCallback;->onNavigationEvent:Ljava/util/Set;

    return-object v1
.end method

.method public final onRelationshipValidationResult()[Ljava/lang/CharSequence;
    .locals 1

    .line 141
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreference;->asInterface:[Ljava/lang/CharSequence;

    return-object v0
.end method
