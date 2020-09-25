.class public abstract Lo/CycleDetectingLockFactory$PotentialDeadlockException;
.super Lo/setCircleStyle;
.source ""

# interfaces
.implements Lo/CacheLoader$UnsupportedLoadingOperationException;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lo/setCircleStyle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public extraCallback(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x3

    if-eq p1, p4, :cond_4

    const/4 p4, 0x4

    if-eq p1, p4, :cond_3

    const/4 p4, 0x6

    if-eq p1, p4, :cond_2

    const/4 p4, 0x7

    if-eq p1, p4, :cond_1

    const/16 p4, 0x8

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 18
    :cond_0
    sget-object p1, Lo/getApps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/setCircleStrokeWidth;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/getApps;

    .line 19
    invoke-virtual {p0, p1}, Lo/CycleDetectingLockFactory$PotentialDeadlockException;->extraCallback(Lo/getApps;)V

    goto :goto_0

    .line 14
    :cond_1
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/setCircleStrokeWidth;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 15
    sget-object p4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lo/setCircleStrokeWidth;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 16
    invoke-virtual {p0, p1, p2}, Lo/CycleDetectingLockFactory$PotentialDeadlockException;->ICustomTabsCallback(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    goto :goto_0

    .line 11
    :cond_2
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/setCircleStrokeWidth;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 12
    invoke-virtual {p0, p1}, Lo/CycleDetectingLockFactory$PotentialDeadlockException;->onPostMessage(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 8
    :cond_3
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/setCircleStrokeWidth;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 9
    invoke-virtual {p0, p1}, Lo/CycleDetectingLockFactory$PotentialDeadlockException;->onNavigationEvent(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 4
    :cond_4
    sget-object p1, Lo/setReferenceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/setCircleStrokeWidth;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/setReferenceId;

    .line 5
    sget-object p4, Lo/writeReplace;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lo/setCircleStrokeWidth;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lo/writeReplace;

    .line 6
    invoke-virtual {p0, p1, p2}, Lo/CycleDetectingLockFactory$PotentialDeadlockException;->onPostMessage(Lo/setReferenceId;Lo/writeReplace;)V

    .line 22
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method
