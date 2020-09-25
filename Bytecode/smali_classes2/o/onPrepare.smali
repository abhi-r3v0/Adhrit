.class public Lo/onPrepare;
.super Lo/onPrepareFromMediaId;
.source ""


# instance fields
.field private ICustomTabsCallback:[Ljava/lang/CharSequence;

.field extraCallback:I

.field private onMessageChannelReady:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/onPrepareFromMediaId;-><init>()V

    return-void
.end method

.method private asInterface()Landroidx/preference/ListPreference;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lo/onPrepareFromMediaId;->onRelationshipValidationResult()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    return-object v0
.end method


# virtual methods
.method protected ICustomTabsCallback(Lo/onTransact$onNavigationEvent;)V
    .locals 4

    .line 81
    invoke-super {p0, p1}, Lo/onPrepareFromMediaId;->ICustomTabsCallback(Lo/onTransact$onNavigationEvent;)V

    .line 83
    iget-object v0, p0, Lo/onPrepare;->onMessageChannelReady:[Ljava/lang/CharSequence;

    iget v1, p0, Lo/onPrepare;->extraCallback:I

    new-instance v2, Lo/onPrepare$4;

    invoke-direct {v2, p0}, Lo/onPrepare$4;-><init>(Lo/onPrepare;)V

    .line 2831
    iget-object v3, p1, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v0, v3, Lo/onRelationshipValidationResult$ICustomTabsCallback;->getInterfaceDescriptor:[Ljava/lang/CharSequence;

    .line 2832
    iget-object v0, p1, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v2, v0, Lo/onRelationshipValidationResult$ICustomTabsCallback;->requestPostMessageChannel:Landroid/content/DialogInterface$OnClickListener;

    .line 2833
    iget-object v0, p1, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput v1, v0, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsService$Stub$Proxy:I

    .line 2834
    iget-object v0, p1, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/onRelationshipValidationResult$ICustomTabsCallback;->updateVisuals:Z

    .line 3486
    iget-object v0, p1, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/onRelationshipValidationResult$ICustomTabsCallback;->asInterface:Ljava/lang/CharSequence;

    .line 3487
    iget-object p1, p1, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v1, p1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback$Stub:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public ICustomTabsCallback(Z)V
    .locals 2

    .line 109
    invoke-direct {p0}, Lo/onPrepare;->asInterface()Landroidx/preference/ListPreference;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 110
    iget p1, p0, Lo/onPrepare;->extraCallback:I

    if-ltz p1, :cond_0

    .line 111
    iget-object v1, p0, Lo/onPrepare;->ICustomTabsCallback:[Ljava/lang/CharSequence;

    aget-object p1, v1, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->onPostMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lo/onPrepareFromMediaId;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    .line 50
    invoke-direct {p0}, Lo/onPrepare;->asInterface()Landroidx/preference/ListPreference;

    move-result-object p1

    .line 1114
    iget-object v0, p1, Landroidx/preference/ListPreference;->ICustomTabsCallback$Stub:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p1, Landroidx/preference/ListPreference;->asInterface:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p1, Landroidx/preference/ListPreference;->onTransact:Ljava/lang/String;

    .line 57
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/onPrepare;->extraCallback:I

    .line 2114
    iget-object v0, p1, Landroidx/preference/ListPreference;->ICustomTabsCallback$Stub:[Ljava/lang/CharSequence;

    .line 58
    iput-object v0, p0, Lo/onPrepare;->onMessageChannelReady:[Ljava/lang/CharSequence;

    .line 2142
    iget-object p1, p1, Landroidx/preference/ListPreference;->asInterface:[Ljava/lang/CharSequence;

    .line 59
    iput-object p1, p0, Lo/onPrepare;->ICustomTabsCallback:[Ljava/lang/CharSequence;

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    const-string v1, "ListPreferenceDialogFragment.index"

    .line 61
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/onPrepare;->extraCallback:I

    const-string v0, "ListPreferenceDialogFragment.entries"

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/onPrepare;->onMessageChannelReady:[Ljava/lang/CharSequence;

    const-string v0, "ListPreferenceDialogFragment.entryValues"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/onPrepare;->ICustomTabsCallback:[Ljava/lang/CharSequence;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Lo/onPrepareFromMediaId;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 70
    iget v0, p0, Lo/onPrepare;->extraCallback:I

    const-string v1, "ListPreferenceDialogFragment.index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lo/onPrepare;->onMessageChannelReady:[Ljava/lang/CharSequence;

    const-string v1, "ListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lo/onPrepare;->ICustomTabsCallback:[Ljava/lang/CharSequence;

    const-string v1, "ListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method
