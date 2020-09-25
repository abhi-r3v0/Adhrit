.class public Landroidx/core/app/RemoteActionCompatParcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/core/app/RemoteActionCompat;
    .locals 3

    .line 14
    new-instance v0, Landroidx/core/app/RemoteActionCompat;

    invoke-direct {v0}, Landroidx/core/app/RemoteActionCompat;-><init>()V

    .line 15
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->onMessageChannelReady:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->onPostMessage(Lo/setTextDelegate$onMessageChannelReady;)Lo/setTextDelegate$onMessageChannelReady;

    move-result-object v1

    check-cast v1, Landroidx/core/graphics/drawable/IconCompat;

    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->onMessageChannelReady:Landroidx/core/graphics/drawable/IconCompat;

    .line 16
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->ICustomTabsCallback:Ljava/lang/CharSequence;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->onMessageChannelReady(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->ICustomTabsCallback:Ljava/lang/CharSequence;

    .line 17
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->onNavigationEvent:Ljava/lang/CharSequence;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->onMessageChannelReady(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 18
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->extraCallback:Landroid/app/PendingIntent;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->onNavigationEvent(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->extraCallback:Landroid/app/PendingIntent;

    .line 19
    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->onPostMessage:Z

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->onNavigationEvent(ZI)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->onPostMessage:Z

    .line 20
    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->asInterface:Z

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->onNavigationEvent(ZI)Z

    move-result p0

    iput-boolean p0, v0, Landroidx/core/app/RemoteActionCompat;->asInterface:Z

    return-object v0
.end method

.method public static write(Landroidx/core/app/RemoteActionCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    .line 27
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->onMessageChannelReady:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->ICustomTabsCallback(Lo/setTextDelegate$onMessageChannelReady;)V

    .line 28
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->ICustomTabsCallback:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->onPostMessage(Ljava/lang/CharSequence;I)V

    .line 29
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->onNavigationEvent:Ljava/lang/CharSequence;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->onPostMessage(Ljava/lang/CharSequence;I)V

    .line 30
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->extraCallback:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->ICustomTabsCallback(Landroid/os/Parcelable;I)V

    .line 31
    iget-boolean v0, p0, Landroidx/core/app/RemoteActionCompat;->onPostMessage:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->onPostMessage(ZI)V

    .line 32
    iget-boolean p0, p0, Landroidx/core/app/RemoteActionCompat;->asInterface:Z

    const/4 v0, 0x6

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->onPostMessage(ZI)V

    return-void
.end method
