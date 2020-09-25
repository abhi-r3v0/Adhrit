.class public final Lo/setResponseTimeType;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setResponseTimeType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lcom/google/android/gms/common/api/Status;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Lo/CrashlyticsController$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lo/ChannelResponseTime$ResponseTimeType;

    invoke-direct {v0}, Lo/ChannelResponseTime$ResponseTimeType;-><init>()V

    sput-object v0, Lo/setResponseTimeType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lo/CrashlyticsController$4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p1, p0, Lo/setResponseTimeType;->ICustomTabsCallback:Lcom/google/android/gms/common/api/Status;

    .line 3
    iput-object p2, p0, Lo/setResponseTimeType;->onPostMessage:Lo/CrashlyticsController$4;

    .line 4
    iput-object p3, p0, Lo/setResponseTimeType;->onMessageChannelReady:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lo/setResponseTimeType;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/CrashlyticsController$4;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/setResponseTimeType;->onPostMessage:Lo/CrashlyticsController$4;

    return-object v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/setResponseTimeType;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/setResponseTimeType;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/setResponseTimeType;->ICustomTabsCallback:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 12
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    .line 14
    iget-object v1, p0, Lo/setResponseTimeType;->ICustomTabsCallback:Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 16
    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 18
    iget-object v1, p0, Lo/setResponseTimeType;->onPostMessage:Lo/CrashlyticsController$4;

    const/4 v3, 0x2

    .line 20
    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 22
    iget-object p2, p0, Lo/setResponseTimeType;->onMessageChannelReady:Ljava/lang/String;

    const/4 v1, 0x3

    .line 24
    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 26
    iget-object p2, p0, Lo/setResponseTimeType;->onNavigationEvent:Ljava/lang/String;

    const/4 v1, 0x4

    .line 28
    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 29
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
