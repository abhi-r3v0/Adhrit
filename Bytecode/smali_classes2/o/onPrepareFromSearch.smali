.class public Lo/onPrepareFromSearch;
.super Lo/onPrepareFromMediaId;
.source ""


# instance fields
.field ICustomTabsCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field extraCallback:[Ljava/lang/CharSequence;

.field onMessageChannelReady:[Ljava/lang/CharSequence;

.field onPostMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lo/onPrepareFromMediaId;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/onPrepareFromSearch;->ICustomTabsCallback:Ljava/util/Set;

    return-void
.end method

.method private onTransact()Landroidx/preference/internal/AbstractMultiSelectListPreference;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lo/onPrepareFromMediaId;->onRelationshipValidationResult()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroidx/preference/internal/AbstractMultiSelectListPreference;

    return-object v0
.end method


# virtual methods
.method protected ICustomTabsCallback(Lo/onTransact$onNavigationEvent;)V
    .locals 5

    .line 101
    invoke-super {p0, p1}, Lo/onPrepareFromMediaId;->ICustomTabsCallback(Lo/onTransact$onNavigationEvent;)V

    .line 103
    iget-object v0, p0, Lo/onPrepareFromSearch;->extraCallback:[Ljava/lang/CharSequence;

    array-length v0, v0

    .line 104
    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 106
    iget-object v3, p0, Lo/onPrepareFromSearch;->ICustomTabsCallback:Ljava/util/Set;

    iget-object v4, p0, Lo/onPrepareFromSearch;->extraCallback:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lo/onPrepareFromSearch;->onMessageChannelReady:[Ljava/lang/CharSequence;

    new-instance v2, Lo/onPrepareFromSearch$4;

    invoke-direct {v2, p0}, Lo/onPrepareFromSearch$4;-><init>(Lo/onPrepareFromSearch;)V

    .line 1730
    iget-object v3, p1, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v0, v3, Lo/onRelationshipValidationResult$ICustomTabsCallback;->getInterfaceDescriptor:[Ljava/lang/CharSequence;

    .line 1731
    iget-object v0, p1, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v2, v0, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsService$Stub:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 1732
    iget-object v0, p1, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v1, v0, Lo/onRelationshipValidationResult$ICustomTabsCallback;->mayLaunchUrl:[Z

    .line 1733
    iget-object p1, p1, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->postMessage:Z

    return-void
.end method

.method public ICustomTabsCallback(Z)V
    .locals 2

    .line 125
    invoke-direct {p0}, Lo/onPrepareFromSearch;->onTransact()Landroidx/preference/internal/AbstractMultiSelectListPreference;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 126
    iget-boolean p1, p0, Lo/onPrepareFromSearch;->onPostMessage:Z

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lo/onPrepareFromSearch;->ICustomTabsCallback:Ljava/util/Set;

    .line 128
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->extraCallback(Ljava/util/Set;)V

    :cond_0
    const/4 p1, 0x0

    .line 132
    iput-boolean p1, p0, Lo/onPrepareFromSearch;->onPostMessage:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 61
    invoke-super {p0, p1}, Lo/onPrepareFromMediaId;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 64
    invoke-direct {p0}, Lo/onPrepareFromSearch;->onTransact()Landroidx/preference/internal/AbstractMultiSelectListPreference;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->asBinder()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->onRelationshipValidationResult()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lo/onPrepareFromSearch;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 73
    iget-object v1, p0, Lo/onPrepareFromSearch;->ICustomTabsCallback:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->asInterface()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 74
    iput-boolean v0, p0, Lo/onPrepareFromSearch;->onPostMessage:Z

    .line 75
    invoke-virtual {p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->asBinder()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/onPrepareFromSearch;->onMessageChannelReady:[Ljava/lang/CharSequence;

    .line 76
    invoke-virtual {p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->onRelationshipValidationResult()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/onPrepareFromSearch;->extraCallback:[Ljava/lang/CharSequence;

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_1
    iget-object v1, p0, Lo/onPrepareFromSearch;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 79
    iget-object v1, p0, Lo/onPrepareFromSearch;->ICustomTabsCallback:Ljava/util/Set;

    const-string v2, "MultiSelectListPreferenceDialogFragmentCompat.values"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.changed"

    .line 80
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/onPrepareFromSearch;->onPostMessage:Z

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entries"

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/onPrepareFromSearch;->onMessageChannelReady:[Ljava/lang/CharSequence;

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/onPrepareFromSearch;->extraCallback:[Ljava/lang/CharSequence;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 88
    invoke-super {p0, p1}, Lo/onPrepareFromMediaId;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/onPrepareFromSearch;->ICustomTabsCallback:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.values"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 90
    iget-boolean v0, p0, Lo/onPrepareFromSearch;->onPostMessage:Z

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.changed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    iget-object v0, p0, Lo/onPrepareFromSearch;->onMessageChannelReady:[Ljava/lang/CharSequence;

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.entries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lo/onPrepareFromSearch;->extraCallback:[Ljava/lang/CharSequence;

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method
