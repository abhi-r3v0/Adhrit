.class public final Lo/getFragmentType;
.super Lo/getTags;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getFragmentType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:I

.field private asInterface:Lo/AudioFragment;

.field private extraCallback:Landroid/app/PendingIntent;

.field private onMessageChannelReady:Lo/zzcl;

.field private onNavigationEvent:Lo/getContent;

.field private onPostMessage:Lo/zzbav$zzb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/setContentType;

    invoke-direct {v0}, Lo/setContentType;-><init>()V

    sput-object v0, Lo/getFragmentType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILo/getContent;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput p1, p0, Lo/getFragmentType;->ICustomTabsCallback:I

    iput-object p2, p0, Lo/getFragmentType;->onNavigationEvent:Lo/getContent;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lo/zzbfh;->extraCallback(Landroid/os/IBinder;)Lo/zzcl;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lo/getFragmentType;->onMessageChannelReady:Lo/zzcl;

    iput-object p4, p0, Lo/getFragmentType;->extraCallback:Landroid/app/PendingIntent;

    if-nez p5, :cond_1

    move-object p2, p1

    goto :goto_1

    :cond_1
    invoke-static {p5}, Lo/zzatm;->extraCallback(Landroid/os/IBinder;)Lo/zzbav$zzb;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lo/getFragmentType;->onPostMessage:Lo/zzbav$zzb;

    if-nez p6, :cond_2

    goto :goto_2

    :cond_2
    if-nez p6, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-interface {p6, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p2, p1, Lo/AudioFragment;

    if-eqz p2, :cond_4

    check-cast p1, Lo/AudioFragment;

    goto :goto_2

    :cond_4
    new-instance p1, Lo/getLabel;

    invoke-direct {p1, p6}, Lo/getLabel;-><init>(Landroid/os/IBinder;)V

    :goto_2
    iput-object p1, p0, Lo/getFragmentType;->asInterface:Lo/AudioFragment;

    return-void
.end method

.method public static extraCallback(Lo/zzbav$zzb;Lo/AudioFragment;)Lo/getFragmentType;
    .locals 8

    new-instance v7, Lo/getFragmentType;

    invoke-interface {p0}, Lo/zzbav$zzb;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/AudioFragment;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v6, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/getFragmentType;-><init>(ILo/getContent;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v7
.end method

.method public static extraCallback(Lo/zzcl;Lo/AudioFragment;)Lo/getFragmentType;
    .locals 8

    new-instance v7, Lo/getFragmentType;

    invoke-interface {p0}, Lo/zzcl;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/AudioFragment;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v6, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/getFragmentType;-><init>(ILo/getContent;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v7
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lo/getFragmentType;->ICustomTabsCallback:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lo/getFragmentType;->onNavigationEvent:Lo/getContent;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lo/getFragmentType;->onMessageChannelReady:Lo/zzcl;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lo/zzcl;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v4, 0x3

    invoke-static {p1, v4, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x4

    iget-object v4, p0, Lo/getFragmentType;->extraCallback:Landroid/app/PendingIntent;

    invoke-static {p1, v1, v4, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x5

    iget-object v1, p0, Lo/getFragmentType;->onPostMessage:Lo/zzbav$zzb;

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lo/zzbav$zzb;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    invoke-static {p1, p2, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 p2, 0x6

    iget-object v1, p0, Lo/getFragmentType;->asInterface:Lo/AudioFragment;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Lo/AudioFragment;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_2
    invoke-static {p1, p2, v3, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
