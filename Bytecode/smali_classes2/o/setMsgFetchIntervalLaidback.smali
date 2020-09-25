.class public final Lo/setMsgFetchIntervalLaidback;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setMsgFetchIntervalLaidback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/setMsgFetchIntervalNormal;

    invoke-direct {v0}, Lo/setMsgFetchIntervalNormal;-><init>()V

    sput-object v0, Lo/setMsgFetchIntervalLaidback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p1, p0, Lo/setMsgFetchIntervalLaidback;->ICustomTabsCallback:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/setMsgFetchIntervalLaidback;->onPostMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lo/setMsgFetchIntervalLaidback;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 8
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    .line 10
    iget-object v0, p0, Lo/setMsgFetchIntervalLaidback;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 12
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 14
    iget-object v0, p0, Lo/setMsgFetchIntervalLaidback;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x2

    .line 16
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 17
    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
