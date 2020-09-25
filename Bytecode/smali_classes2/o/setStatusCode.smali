.class public final Lo/setStatusCode;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setStatusCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final ICustomTabsCallback$Stub:Ljava/lang/String;

.field public final extraCallback:J

.field public final onMessageChannelReady:J

.field public final onNavigationEvent:Z

.field public final onPostMessage:Ljava/lang/String;

.field public final onTransact:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lo/CsatResponseRequest;

    invoke-direct {v0}, Lo/CsatResponseRequest;-><init>()V

    sput-object v0, Lo/setStatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-wide p1, p0, Lo/setStatusCode;->extraCallback:J

    .line 3
    iput-wide p3, p0, Lo/setStatusCode;->onMessageChannelReady:J

    .line 4
    iput-boolean p5, p0, Lo/setStatusCode;->onNavigationEvent:Z

    .line 5
    iput-object p6, p0, Lo/setStatusCode;->onPostMessage:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lo/setStatusCode;->ICustomTabsCallback:Ljava/lang/String;

    .line 7
    iput-object p8, p0, Lo/setStatusCode;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 8
    iput-object p9, p0, Lo/setStatusCode;->onTransact:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 11
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    .line 12
    iget-wide v0, p0, Lo/setStatusCode;->extraCallback:J

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    .line 13
    iget-wide v0, p0, Lo/setStatusCode;->onMessageChannelReady:J

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    .line 14
    iget-boolean v0, p0, Lo/setStatusCode;->onNavigationEvent:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    .line 15
    iget-object v0, p0, Lo/setStatusCode;->onPostMessage:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    iget-object v0, p0, Lo/setStatusCode;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 17
    iget-object v0, p0, Lo/setStatusCode;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 18
    iget-object v0, p0, Lo/setStatusCode;->onTransact:Landroid/os/Bundle;

    const/4 v2, 0x7

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 19
    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
