.class public final Lo/setChannelType;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setChannelType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final asInterface:Z

.field private final extraCallback:Z

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lo/getChannelType;

    invoke-direct {v0}, Lo/getChannelType;-><init>()V

    sput-object v0, Lo/setChannelType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p1, p0, Lo/setChannelType;->ICustomTabsCallback:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/setChannelType;->onNavigationEvent:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lo/setChannelType;->onMessageChannelReady:Ljava/lang/String;

    .line 5
    iput-wide p4, p0, Lo/setChannelType;->onPostMessage:J

    .line 6
    iput-boolean p6, p0, Lo/setChannelType;->extraCallback:Z

    .line 7
    iput-boolean p7, p0, Lo/setChannelType;->asInterface:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 10
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    .line 12
    iget-object v0, p0, Lo/setChannelType;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 14
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    iget-object v0, p0, Lo/setChannelType;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x2

    .line 18
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 20
    iget-object v0, p0, Lo/setChannelType;->onMessageChannelReady:Ljava/lang/String;

    const/4 v2, 0x3

    .line 22
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 24
    iget-wide v0, p0, Lo/setChannelType;->onPostMessage:J

    const/4 v2, 0x4

    .line 25
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    .line 27
    iget-boolean v0, p0, Lo/setChannelType;->extraCallback:Z

    const/4 v1, 0x5

    .line 28
    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    .line 30
    iget-boolean v0, p0, Lo/setChannelType;->asInterface:Z

    const/4 v1, 0x6

    .line 31
    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    .line 32
    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
