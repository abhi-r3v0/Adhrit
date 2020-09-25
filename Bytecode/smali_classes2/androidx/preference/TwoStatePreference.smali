.class public abstract Landroidx/preference/TwoStatePreference;
.super Landroidx/preference/Preference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/TwoStatePreference$extraCallback;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private extraCallback:Ljava/lang/CharSequence;

.field protected onMessageChannelReady:Z

.field private onNavigationEvent:Ljava/lang/CharSequence;

.field private onPostMessage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected ICustomTabsCallback(Landroid/view/View;)V
    .locals 4

    .line 211
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 216
    iget-boolean v1, p0, Landroidx/preference/TwoStatePreference;->onMessageChannelReady:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/preference/TwoStatePreference;->extraCallback:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    iget-object v0, p0, Landroidx/preference/TwoStatePreference;->extraCallback:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 219
    :cond_1
    iget-boolean v1, p0, Landroidx/preference/TwoStatePreference;->onMessageChannelReady:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/preference/TwoStatePreference;->onNavigationEvent:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 220
    iget-object v0, p0, Landroidx/preference/TwoStatePreference;->onNavigationEvent:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 224
    invoke-virtual {p0}, Landroidx/preference/Preference;->onTransact()Ljava/lang/CharSequence;

    move-result-object v1

    .line 225
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 226
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :cond_3
    const/16 v1, 0x8

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0x8

    .line 235
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v2, v0, :cond_5

    .line 236
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public ICustomTabsCallback()Z
    .locals 3

    .line 102
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->ICustomTabsCallback:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->onMessageChannelReady:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->onMessageChannelReady:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 103
    invoke-super {p0}, Landroidx/preference/Preference;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public ICustomTabsCallback$Stub(Ljava/lang/CharSequence;)V
    .locals 0

    .line 140
    iput-object p1, p0, Landroidx/preference/TwoStatePreference;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 141
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->asBinder()Z

    move-result p1

    if-nez p1, :cond_0

    .line 142
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public asBinder()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->onMessageChannelReady:Z

    return v0
.end method

.method protected extraCallback()V
    .locals 2

    .line 64
    invoke-super {p0}, Landroidx/preference/Preference;->extraCallback()V

    .line 66
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->asBinder()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->extraCallback(Z)V

    :cond_0
    return-void
.end method

.method public extraCallback(Z)V
    .locals 3

    .line 79
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->onMessageChannelReady:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 80
    iget-boolean v2, p0, Landroidx/preference/TwoStatePreference;->onPostMessage:Z

    if-nez v2, :cond_2

    .line 81
    :cond_1
    iput-boolean p1, p0, Landroidx/preference/TwoStatePreference;->onMessageChannelReady:Z

    .line 82
    iput-boolean v1, p0, Landroidx/preference/TwoStatePreference;->onPostMessage:Z

    .line 83
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->onNavigationEvent(Z)Z

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsCallback()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onPostMessage(Z)V

    .line 86
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->onNavigationEvent()V

    :cond_2
    return-void
.end method

.method public onMessageChannelReady(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Landroidx/preference/TwoStatePreference;->ICustomTabsCallback:Z

    return-void
.end method

.method protected onNavigationEvent(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onNavigationEvent(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/TwoStatePreference$extraCallback;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    check-cast p1, Landroidx/preference/TwoStatePreference$extraCallback;

    .line 262
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onNavigationEvent(Landroid/os/Parcelable;)V

    .line 263
    iget-boolean p1, p1, Landroidx/preference/TwoStatePreference$extraCallback;->ICustomTabsCallback:Z

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->extraCallback(Z)V

    return-void

    .line 257
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onNavigationEvent(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onNavigationEvent(Ljava/lang/CharSequence;)V
    .locals 0

    .line 112
    iput-object p1, p0, Landroidx/preference/TwoStatePreference;->extraCallback:Ljava/lang/CharSequence;

    .line 113
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->asBinder()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method protected onNavigationEvent(Lo/onPlayFromMediaId;)V
    .locals 1

    const v0, 0x1020010

    .line 202
    invoke-virtual {p1, v0}, Lo/onPlayFromMediaId;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    .line 203
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->ICustomTabsCallback(Landroid/view/View;)V

    return-void
.end method

.method protected onPostMessage()Landroid/os/Parcelable;
    .locals 2

    .line 242
    invoke-super {p0}, Landroidx/preference/Preference;->onPostMessage()Landroid/os/Parcelable;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Landroidx/preference/Preference;->requestPostMessageChannel()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 248
    :cond_0
    new-instance v1, Landroidx/preference/TwoStatePreference$extraCallback;

    invoke-direct {v1, v0}, Landroidx/preference/TwoStatePreference$extraCallback;-><init>(Landroid/os/Parcelable;)V

    .line 249
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->asBinder()Z

    move-result v0

    iput-boolean v0, v1, Landroidx/preference/TwoStatePreference$extraCallback;->ICustomTabsCallback:Z

    return-object v1
.end method
