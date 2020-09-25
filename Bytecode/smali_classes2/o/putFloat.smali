.class public final Lo/putFloat;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/putFloat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final extraCallback:Ljava/lang/String;

.field private final onNavigationEvent:Lo/calculateFreeRamInBytes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lo/putStringSet;

    invoke-direct {v0}, Lo/putStringSet;-><init>()V

    sput-object v0, Lo/putFloat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/calculateFreeRamInBytes;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p1, p0, Lo/putFloat;->ICustomTabsCallback:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/putFloat;->onNavigationEvent:Lo/calculateFreeRamInBytes;

    .line 4
    iput-object p3, p0, Lo/putFloat;->extraCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/calculateFreeRamInBytes;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/putFloat;->onNavigationEvent:Lo/calculateFreeRamInBytes;

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/putFloat;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 10
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    .line 12
    iget-object v1, p0, Lo/putFloat;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 14
    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    iget-object v1, p0, Lo/putFloat;->onNavigationEvent:Lo/calculateFreeRamInBytes;

    const/4 v3, 0x2

    .line 18
    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 20
    iget-object p2, p0, Lo/putFloat;->extraCallback:Ljava/lang/String;

    const/4 v1, 0x3

    .line 22
    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 23
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
