.class public final Lo/setCustomResponseTimeMessage;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setCustomResponseTimeMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setMessages;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Ljava/lang/String;

.field private onPostMessage:Lo/CrashlyticsController$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lo/getCustomResponseTimeMessage;

    invoke-direct {v0}, Lo/getCustomResponseTimeMessage;-><init>()V

    sput-object v0, Lo/setCustomResponseTimeMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lo/CrashlyticsController$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/setMessages;",
            ">;",
            "Lo/CrashlyticsController$4;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p1, p0, Lo/setCustomResponseTimeMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/setCustomResponseTimeMessage;->extraCallback:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lo/setCustomResponseTimeMessage;->onPostMessage:Lo/CrashlyticsController$4;

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/createCipher;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lo/setCustomResponseTimeMessage;->extraCallback:Ljava/util/List;

    invoke-static {v0}, Lo/extraCallback;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent()Lo/CrashlyticsController$4;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/setCustomResponseTimeMessage;->onPostMessage:Lo/CrashlyticsController$4;

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/setCustomResponseTimeMessage;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 10
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    .line 12
    iget-object v1, p0, Lo/setCustomResponseTimeMessage;->onMessageChannelReady:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 14
    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    iget-object v1, p0, Lo/setCustomResponseTimeMessage;->extraCallback:Ljava/util/List;

    const/4 v3, 0x2

    .line 18
    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 20
    iget-object v1, p0, Lo/setCustomResponseTimeMessage;->onPostMessage:Lo/CrashlyticsController$4;

    const/4 v3, 0x3

    .line 22
    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 23
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
