.class public final Lo/getCsat;
.super Lo/getTags;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getTags;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getCsat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final asInterface:Ljava/lang/String;

.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Z

.field private final onPostMessage:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lo/ConversationReadStatus;

    invoke-direct {v0}, Lo/ConversationReadStatus;-><init>()V

    sput-object v0, Lo/getCsat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/getCsat;->extraCallback:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lo/getCsat;->onPostMessage:J

    .line 4
    iput-boolean p4, p0, Lo/getCsat;->onNavigationEvent:Z

    .line 5
    iput-object p5, p0, Lo/getCsat;->onMessageChannelReady:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lo/getCsat;->ICustomTabsCallback:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lo/getCsat;->asInterface:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 13
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    .line 15
    iget-object v0, p0, Lo/getCsat;->extraCallback:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 17
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 19
    iget-wide v2, p0, Lo/getCsat;->onPostMessage:J

    const/4 v0, 0x2

    .line 20
    invoke-static {p1, v0, v2, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    .line 22
    iget-boolean v0, p0, Lo/getCsat;->onNavigationEvent:Z

    const/4 v2, 0x3

    .line 23
    invoke-static {p1, v2, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    .line 25
    iget-object v0, p0, Lo/getCsat;->onMessageChannelReady:Ljava/lang/String;

    const/4 v2, 0x4

    .line 27
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 29
    iget-object v0, p0, Lo/getCsat;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x5

    .line 31
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 33
    iget-object v0, p0, Lo/getCsat;->asInterface:Ljava/lang/String;

    const/4 v2, 0x6

    .line 35
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 36
    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
