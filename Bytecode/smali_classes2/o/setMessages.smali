.class public final Lo/setMessages;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setMessages;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:J

.field private extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lo/getColumnDefForQuery;

    invoke-direct {v0}, Lo/getColumnDefForQuery;-><init>()V

    sput-object v0, Lo/setMessages;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p1, p0, Lo/setMessages;->onPostMessage:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/setMessages;->onMessageChannelReady:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lo/setMessages;->onNavigationEvent:Ljava/lang/String;

    .line 5
    iput-wide p4, p0, Lo/setMessages;->ICustomTabsCallback:J

    return-void
.end method

.method public static ICustomTabsCallback(Lo/DefaultRefreshIntervals;)Lo/setMessages;
    .locals 7

    .line 11
    new-instance v6, Lo/setMessages;

    .line 12
    invoke-virtual {p0}, Lo/DefaultRefreshIntervals;->onTransact()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lo/DefaultRefreshIntervals;->asInterface()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {p0}, Lo/DefaultRefreshIntervals;->asBinder()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {p0}, Lo/DefaultRefreshIntervals;->ICustomTabsService()Lo/setTaggedItemType;

    move-result-object v0

    invoke-virtual {v0}, Lo/setTaggedItemType;->asInterface()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/setMessages;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 16
    invoke-virtual {p0}, Lo/DefaultRefreshIntervals;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object p0

    .line 17
    iput-object p0, v6, Lo/setMessages;->extraCallback:Ljava/lang/String;

    return-object v6
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/setMessages;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/setMessages;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/setMessages;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lo/setMessages;->ICustomTabsCallback:J

    return-wide v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 28
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    .line 30
    iget-object v0, p0, Lo/setMessages;->onPostMessage:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 32
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 34
    iget-object v0, p0, Lo/setMessages;->onMessageChannelReady:Ljava/lang/String;

    const/4 v2, 0x2

    .line 36
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 38
    iget-object v0, p0, Lo/setMessages;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x3

    .line 40
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 42
    iget-wide v0, p0, Lo/setMessages;->ICustomTabsCallback:J

    const/4 v2, 0x4

    .line 43
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    .line 44
    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
