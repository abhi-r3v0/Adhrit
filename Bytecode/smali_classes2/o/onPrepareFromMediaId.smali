.class public abstract Lo/onPrepareFromMediaId;
.super Lo/onAudioInfoChanged;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private ICustomTabsCallback:Ljava/lang/CharSequence;

.field private ICustomTabsCallback$Stub:Landroid/graphics/drawable/BitmapDrawable;

.field private asInterface:I

.field private extraCallback:Ljava/lang/CharSequence;

.field private onMessageChannelReady:Ljava/lang/CharSequence;

.field private onNavigationEvent:Landroidx/preference/DialogPreference;

.field private onPostMessage:Ljava/lang/CharSequence;

.field private onTransact:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lo/onAudioInfoChanged;-><init>()V

    return-void
.end method

.method private extraCallback(Landroid/app/Dialog;)V
    .locals 1

    .line 212
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x5

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    const/4 v0, -0x2

    .line 139
    iput v0, p0, Lo/onPrepareFromMediaId;->onTransact:I

    .line 141
    new-instance v0, Lo/onTransact$onNavigationEvent;

    invoke-direct {v0, p1}, Lo/onTransact$onNavigationEvent;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lo/onPrepareFromMediaId;->ICustomTabsCallback:Ljava/lang/CharSequence;

    .line 3377
    iget-object v2, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v1, v2, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 142
    iget-object v1, p0, Lo/onPrepareFromMediaId;->ICustomTabsCallback$Stub:Landroid/graphics/drawable/BitmapDrawable;

    .line 3445
    iget-object v2, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v1, v2, Lo/onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object v1, p0, Lo/onPrepareFromMediaId;->onMessageChannelReady:Ljava/lang/CharSequence;

    .line 3486
    iget-object v2, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v1, v2, Lo/onRelationshipValidationResult$ICustomTabsCallback;->asInterface:Ljava/lang/CharSequence;

    .line 3487
    iget-object v1, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object p0, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback$Stub:Landroid/content/DialogInterface$OnClickListener;

    .line 144
    iget-object v1, p0, Lo/onPrepareFromMediaId;->onPostMessage:Ljava/lang/CharSequence;

    .line 3522
    iget-object v2, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v1, v2, Lo/onRelationshipValidationResult$ICustomTabsCallback;->asBinder:Ljava/lang/CharSequence;

    .line 3523
    iget-object v1, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object p0, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onRelationshipValidationResult:Landroid/content/DialogInterface$OnClickListener;

    .line 147
    invoke-virtual {p0, p1}, Lo/onPrepareFromMediaId;->onNavigationEvent(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p0, p1}, Lo/onPrepareFromMediaId;->ICustomTabsCallback(Landroid/view/View;)V

    .line 3902
    iget-object v1, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object p1, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->extraCommand:Landroid/view/View;

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lo/onPrepareFromMediaId;->extraCallback:Ljava/lang/CharSequence;

    .line 4418
    iget-object v1, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object p1, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onTransact:Ljava/lang/CharSequence;

    .line 155
    :goto_0
    invoke-virtual {p0, v0}, Lo/onPrepareFromMediaId;->ICustomTabsCallback(Lo/onTransact$onNavigationEvent;)V

    .line 158
    invoke-virtual {v0}, Lo/onTransact$onNavigationEvent;->onNavigationEvent()Lo/onTransact;

    move-result-object p1

    .line 159
    invoke-virtual {p0}, Lo/onPrepareFromMediaId;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-direct {p0, p1}, Lo/onPrepareFromMediaId;->extraCallback(Landroid/app/Dialog;)V

    :cond_1
    return-object p1
.end method

.method protected ICustomTabsCallback(Landroid/view/View;)V
    .locals 3

    const v0, 0x102000b

    .line 242
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 245
    iget-object v0, p0, Lo/onPrepareFromMediaId;->extraCallback:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    .line 248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 249
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 250
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x0

    .line 256
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 257
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected ICustomTabsCallback(Lo/onTransact$onNavigationEvent;)V
    .locals 0

    return-void
.end method

.method public abstract ICustomTabsCallback(Z)V
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 264
    iput p2, p0, Lo/onPrepareFromMediaId;->onTransact:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 77
    invoke-super {p0, p1}, Lo/onAudioInfoChanged;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 80
    instance-of v1, v0, Landroidx/preference/DialogPreference$extraCallback;

    if-eqz v1, :cond_4

    .line 85
    check-cast v0, Landroidx/preference/DialogPreference$extraCallback;

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 90
    invoke-interface {v0}, Landroidx/preference/DialogPreference$extraCallback;->e_()Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DialogPreference;

    iput-object p1, p0, Lo/onPrepareFromMediaId;->onNavigationEvent:Landroidx/preference/DialogPreference;

    .line 1124
    iget-object p1, p1, Landroidx/preference/DialogPreference;->extraCallback:Ljava/lang/CharSequence;

    .line 91
    iput-object p1, p0, Lo/onPrepareFromMediaId;->ICustomTabsCallback:Ljava/lang/CharSequence;

    .line 92
    iget-object p1, p0, Lo/onPrepareFromMediaId;->onNavigationEvent:Landroidx/preference/DialogPreference;

    .line 1209
    iget-object p1, p1, Landroidx/preference/DialogPreference;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 92
    iput-object p1, p0, Lo/onPrepareFromMediaId;->onMessageChannelReady:Ljava/lang/CharSequence;

    .line 93
    iget-object p1, p0, Lo/onPrepareFromMediaId;->onNavigationEvent:Landroidx/preference/DialogPreference;

    .line 1237
    iget-object p1, p1, Landroidx/preference/DialogPreference;->ICustomTabsCallback:Ljava/lang/CharSequence;

    .line 93
    iput-object p1, p0, Lo/onPrepareFromMediaId;->onPostMessage:Ljava/lang/CharSequence;

    .line 94
    iget-object p1, p0, Lo/onPrepareFromMediaId;->onNavigationEvent:Landroidx/preference/DialogPreference;

    .line 2154
    iget-object p1, p1, Landroidx/preference/DialogPreference;->onMessageChannelReady:Ljava/lang/CharSequence;

    .line 94
    iput-object p1, p0, Lo/onPrepareFromMediaId;->extraCallback:Ljava/lang/CharSequence;

    .line 95
    iget-object p1, p0, Lo/onPrepareFromMediaId;->onNavigationEvent:Landroidx/preference/DialogPreference;

    .line 2258
    iget p1, p1, Landroidx/preference/DialogPreference;->asBinder:I

    .line 95
    iput p1, p0, Lo/onPrepareFromMediaId;->asInterface:I

    .line 97
    iget-object p1, p0, Lo/onPrepareFromMediaId;->onNavigationEvent:Landroidx/preference/DialogPreference;

    .line 3181
    iget-object p1, p1, Landroidx/preference/DialogPreference;->onPostMessage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 98
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 102
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 101
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lo/onPrepareFromMediaId;->ICustomTabsCallback$Stub:Landroid/graphics/drawable/BitmapDrawable;

    return-void

    .line 99
    :cond_1
    :goto_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lo/onPrepareFromMediaId;->ICustomTabsCallback$Stub:Landroid/graphics/drawable/BitmapDrawable;

    return-void

    :cond_2
    const-string v0, "PreferenceDialogFragment.title"

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/onPrepareFromMediaId;->ICustomTabsCallback:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.positiveText"

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/onPrepareFromMediaId;->onMessageChannelReady:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.negativeText"

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/onPrepareFromMediaId;->onPostMessage:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.message"

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/onPrepareFromMediaId;->extraCallback:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.layout"

    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/onPrepareFromMediaId;->asInterface:I

    const-string v0, "PreferenceDialogFragment.icon"

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 116
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lo/onPrepareFromMediaId;->ICustomTabsCallback$Stub:Landroid/graphics/drawable/BitmapDrawable;

    :cond_3
    return-void

    .line 81
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Target fragment must implement TargetFragment interface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 269
    invoke-super {p0, p1}, Lo/onAudioInfoChanged;->onDismiss(Landroid/content/DialogInterface;)V

    .line 270
    iget p1, p0, Lo/onPrepareFromMediaId;->onTransact:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lo/onPrepareFromMediaId;->ICustomTabsCallback(Z)V

    return-void
.end method

.method protected onNavigationEvent(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 225
    iget v0, p0, Lo/onPrepareFromMediaId;->asInterface:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 230
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 231
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onPostMessage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRelationshipValidationResult()Landroidx/preference/DialogPreference;
    .locals 2

    .line 174
    iget-object v0, p0, Lo/onPrepareFromMediaId;->onNavigationEvent:Landroidx/preference/DialogPreference;

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/preference/DialogPreference$extraCallback;

    .line 178
    invoke-interface {v0}, Landroidx/preference/DialogPreference$extraCallback;->e_()Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DialogPreference;

    iput-object v0, p0, Lo/onPrepareFromMediaId;->onNavigationEvent:Landroidx/preference/DialogPreference;

    .line 180
    :cond_0
    iget-object v0, p0, Lo/onPrepareFromMediaId;->onNavigationEvent:Landroidx/preference/DialogPreference;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 123
    invoke-super {p0, p1}, Lo/onAudioInfoChanged;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Lo/onPrepareFromMediaId;->ICustomTabsCallback:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lo/onPrepareFromMediaId;->onMessageChannelReady:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lo/onPrepareFromMediaId;->onPostMessage:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lo/onPrepareFromMediaId;->extraCallback:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.message"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 129
    iget v0, p0, Lo/onPrepareFromMediaId;->asInterface:I

    const-string v1, "PreferenceDialogFragment.layout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    iget-object v0, p0, Lo/onPrepareFromMediaId;->ICustomTabsCallback$Stub:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "PreferenceDialogFragment.icon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
