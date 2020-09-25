.class public final Lo/Conversation;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/Conversation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private asBinder:Ljava/lang/String;

.field private asInterface:Ljava/lang/String;

.field private extraCallback:Ljava/lang/String;

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lo/setHasPendingCsat;

    invoke-direct {v0}, Lo/setHasPendingCsat;-><init>()V

    sput-object v0, Lo/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 3
    iput-object p1, p0, Lo/Conversation;->ICustomTabsCallback:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lo/Conversation;->extraCallback:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lo/Conversation;->onMessageChannelReady:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lo/Conversation;->onPostMessage:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lo/Conversation;->onNavigationEvent:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lo/Conversation;->asBinder:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lo/Conversation;->asInterface:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/Conversation;->asBinder:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/Conversation;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method

.method public final asBinder()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/Conversation;->asInterface:Ljava/lang/String;

    return-object v0
.end method

.method public final extraCallback()Landroid/net/Uri;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/Conversation;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lo/Conversation;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/Conversation;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/Conversation;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/Conversation;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 23
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    .line 25
    iget-object v0, p0, Lo/Conversation;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 27
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 29
    iget-object v0, p0, Lo/Conversation;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x3

    .line 31
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 33
    iget-object v0, p0, Lo/Conversation;->onMessageChannelReady:Ljava/lang/String;

    const/4 v2, 0x4

    .line 35
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 37
    iget-object v0, p0, Lo/Conversation;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x5

    .line 39
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 41
    iget-object v0, p0, Lo/Conversation;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x6

    .line 43
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 45
    iget-object v0, p0, Lo/Conversation;->asBinder:Ljava/lang/String;

    const/4 v2, 0x7

    .line 47
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 49
    iget-object v0, p0, Lo/Conversation;->asInterface:Ljava/lang/String;

    const/16 v2, 0x8

    .line 51
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 52
    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
