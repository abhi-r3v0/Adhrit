.class public final Lo/setResponseTime;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setResponseTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Lo/calculateFreeRamInBytes;

.field private final onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lo/getChannelId;

    invoke-direct {v0}, Lo/getChannelId;-><init>()V

    sput-object v0, Lo/setResponseTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/calculateFreeRamInBytes;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p1, p0, Lo/setResponseTime;->extraCallback:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/setResponseTime;->onNavigationEvent:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lo/setResponseTime;->onMessageChannelReady:Lo/calculateFreeRamInBytes;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 10
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    .line 12
    iget-object v1, p0, Lo/setResponseTime;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 14
    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    iget-object v1, p0, Lo/setResponseTime;->onNavigationEvent:Ljava/lang/String;

    const/4 v3, 0x2

    .line 18
    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 20
    iget-object v1, p0, Lo/setResponseTime;->onMessageChannelReady:Lo/calculateFreeRamInBytes;

    const/4 v3, 0x3

    .line 22
    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 23
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
