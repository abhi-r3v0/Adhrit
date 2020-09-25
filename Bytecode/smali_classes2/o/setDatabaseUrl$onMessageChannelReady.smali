.class public final Lo/setDatabaseUrl$onMessageChannelReady;
.super Lo/getTags;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDatabaseUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setDatabaseUrl$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private onMessageChannelReady:[Ljava/lang/String;

.field private onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lo/toDate;

    invoke-direct {v0}, Lo/toDate;-><init>()V

    sput-object v0, Lo/setDatabaseUrl$onMessageChannelReady;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 3
    iput p1, p0, Lo/setDatabaseUrl$onMessageChannelReady;->onPostMessage:I

    .line 4
    iput-object p2, p0, Lo/setDatabaseUrl$onMessageChannelReady;->onMessageChannelReady:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const p2, -0xb0bb

    .line 2008
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 2009
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 8
    iget v1, p0, Lo/setDatabaseUrl$onMessageChannelReady;->onPostMessage:I

    const/4 v2, 0x4

    const/4 v3, 0x2

    .line 2039
    invoke-static {p1, v3, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2040
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v1, p0, Lo/setDatabaseUrl$onMessageChannelReady;->onMessageChannelReady:[Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 4011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v1, p2, v0

    sub-int/2addr v0, v2

    .line 4013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4014
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
