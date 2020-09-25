.class public final Lo/gm;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/gm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final extraCallback:Lo/flushOrLog;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lo/isJwtAuthEnabled;

    invoke-direct {v0}, Lo/isJwtAuthEnabled;-><init>()V

    sput-object v0, Lo/gm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lo/flushOrLog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p1, p0, Lo/gm;->extraCallback:Lo/flushOrLog;

    .line 3
    iput-object p2, p0, Lo/gm;->onPostMessage:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lo/gm;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 7
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    .line 9
    iget-object v1, p0, Lo/gm;->extraCallback:Lo/flushOrLog;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 11
    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 13
    iget-object p2, p0, Lo/gm;->onPostMessage:Ljava/lang/String;

    const/4 v1, 0x2

    .line 15
    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 17
    iget-object p2, p0, Lo/gm;->onMessageChannelReady:Ljava/lang/String;

    const/4 v1, 0x3

    .line 19
    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 20
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
