.class public final Lo/getChannelsCustomResponseTimeMessage;
.super Lo/getTags;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getChannelsCustomResponseTimeMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:I

.field private extraCallback:Lo/getChannelResponseTimesFor7Days;

.field private onNavigationEvent:Lo/AudioFragment;

.field private onPostMessage:Lo/zzatl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ChannelsResponseTimeResponse;

    invoke-direct {v0}, Lo/ChannelsResponseTimeResponse;-><init>()V

    sput-object v0, Lo/getChannelsCustomResponseTimeMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILo/getChannelResponseTimesFor7Days;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput p1, p0, Lo/getChannelsCustomResponseTimeMessage;->ICustomTabsCallback:I

    iput-object p2, p0, Lo/getChannelsCustomResponseTimeMessage;->extraCallback:Lo/getChannelResponseTimesFor7Days;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lo/zzbbv;->onMessageChannelReady(Landroid/os/IBinder;)Lo/zzatl;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lo/getChannelsCustomResponseTimeMessage;->onPostMessage:Lo/zzatl;

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-interface {p4, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p2, p1, Lo/AudioFragment;

    if-eqz p2, :cond_3

    check-cast p1, Lo/AudioFragment;

    goto :goto_1

    :cond_3
    new-instance p1, Lo/getLabel;

    invoke-direct {p1, p4}, Lo/getLabel;-><init>(Landroid/os/IBinder;)V

    :goto_1
    iput-object p1, p0, Lo/getChannelsCustomResponseTimeMessage;->onNavigationEvent:Lo/AudioFragment;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lo/getChannelsCustomResponseTimeMessage;->ICustomTabsCallback:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lo/getChannelsCustomResponseTimeMessage;->extraCallback:Lo/getChannelResponseTimesFor7Days;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lo/getChannelsCustomResponseTimeMessage;->onPostMessage:Lo/zzatl;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lo/zzatl;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    const/4 v3, 0x3

    invoke-static {p1, v3, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 p2, 0x4

    iget-object v3, p0, Lo/getChannelsCustomResponseTimeMessage;->onNavigationEvent:Lo/AudioFragment;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lo/AudioFragment;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    invoke-static {p1, p2, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
