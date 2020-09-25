.class public final Lo/getStringFlagValue;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getStringFlagValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ICustomTabsCallback:I

.field public extraCallback:J

.field public onMessageChannelReady:I

.field public onNavigationEvent:I

.field public onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lo/zzae;

    invoke-direct {v0}, Lo/zzae;-><init>()V

    sput-object v0, Lo/getStringFlagValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIJI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 3
    iput p1, p0, Lo/getStringFlagValue;->onNavigationEvent:I

    .line 4
    iput p2, p0, Lo/getStringFlagValue;->onMessageChannelReady:I

    .line 5
    iput p3, p0, Lo/getStringFlagValue;->ICustomTabsCallback:I

    .line 6
    iput-wide p4, p0, Lo/getStringFlagValue;->extraCallback:J

    .line 7
    iput p6, p0, Lo/getStringFlagValue;->onPostMessage:I

    return-void
.end method

.method public static onNavigationEvent(Lo/setStorageBucket;)Lo/getStringFlagValue;
    .locals 3

    .line 18
    new-instance v0, Lo/getStringFlagValue;

    invoke-direct {v0}, Lo/getStringFlagValue;-><init>()V

    .line 19
    invoke-virtual {p0}, Lo/setStorageBucket;->onNavigationEvent()Lo/setStorageBucket$onPostMessage;

    move-result-object v1

    invoke-virtual {v1}, Lo/setStorageBucket$onPostMessage;->extraCallback()I

    move-result v1

    iput v1, v0, Lo/getStringFlagValue;->onNavigationEvent:I

    .line 20
    invoke-virtual {p0}, Lo/setStorageBucket;->onNavigationEvent()Lo/setStorageBucket$onPostMessage;

    move-result-object v1

    invoke-virtual {v1}, Lo/setStorageBucket$onPostMessage;->onMessageChannelReady()I

    move-result v1

    iput v1, v0, Lo/getStringFlagValue;->onMessageChannelReady:I

    .line 21
    invoke-virtual {p0}, Lo/setStorageBucket;->onNavigationEvent()Lo/setStorageBucket$onPostMessage;

    move-result-object v1

    invoke-virtual {v1}, Lo/setStorageBucket$onPostMessage;->onNavigationEvent()I

    move-result v1

    iput v1, v0, Lo/getStringFlagValue;->onPostMessage:I

    .line 22
    invoke-virtual {p0}, Lo/setStorageBucket;->onNavigationEvent()Lo/setStorageBucket$onPostMessage;

    move-result-object v1

    invoke-virtual {v1}, Lo/setStorageBucket$onPostMessage;->onPostMessage()I

    move-result v1

    iput v1, v0, Lo/getStringFlagValue;->ICustomTabsCallback:I

    .line 23
    invoke-virtual {p0}, Lo/setStorageBucket;->onNavigationEvent()Lo/setStorageBucket$onPostMessage;

    move-result-object p0

    invoke-virtual {p0}, Lo/setStorageBucket$onPostMessage;->ICustomTabsCallback()J

    move-result-wide v1

    iput-wide v1, v0, Lo/getStringFlagValue;->extraCallback:J

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 10
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    .line 11
    iget v0, p0, Lo/getStringFlagValue;->onNavigationEvent:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    .line 12
    iget v0, p0, Lo/getStringFlagValue;->onMessageChannelReady:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    .line 13
    iget v0, p0, Lo/getStringFlagValue;->ICustomTabsCallback:I

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    .line 14
    iget-wide v0, p0, Lo/getStringFlagValue;->extraCallback:J

    const/4 v2, 0x5

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    .line 15
    iget v0, p0, Lo/getStringFlagValue;->onPostMessage:I

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    .line 16
    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
