.class public final Lo/setDatabaseUrl$extraCallback;
.super Lo/getTags;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDatabaseUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setDatabaseUrl$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:I

.field private asBinder:Ljava/lang/String;

.field private asInterface:I

.field private extraCallback:I

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private onPostMessage:I

.field private onTransact:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lo/FirebaseTooManyRequestsException;

    invoke-direct {v0}, Lo/FirebaseTooManyRequestsException;-><init>()V

    sput-object v0, Lo/setDatabaseUrl$extraCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 3
    iput p1, p0, Lo/setDatabaseUrl$extraCallback;->extraCallback:I

    .line 4
    iput p2, p0, Lo/setDatabaseUrl$extraCallback;->onPostMessage:I

    .line 5
    iput p3, p0, Lo/setDatabaseUrl$extraCallback;->ICustomTabsCallback:I

    .line 6
    iput p4, p0, Lo/setDatabaseUrl$extraCallback;->onNavigationEvent:I

    .line 7
    iput p5, p0, Lo/setDatabaseUrl$extraCallback;->onMessageChannelReady:I

    .line 8
    iput p6, p0, Lo/setDatabaseUrl$extraCallback;->asInterface:I

    .line 9
    iput-boolean p7, p0, Lo/setDatabaseUrl$extraCallback;->onTransact:Z

    .line 10
    iput-object p8, p0, Lo/setDatabaseUrl$extraCallback;->asBinder:Ljava/lang/String;

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

    .line 14
    iget v1, p0, Lo/setDatabaseUrl$extraCallback;->extraCallback:I

    const/4 v2, 0x4

    const/4 v3, 0x2

    .line 2039
    invoke-static {p1, v3, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2040
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget v1, p0, Lo/setDatabaseUrl$extraCallback;->onPostMessage:I

    const/4 v3, 0x3

    .line 3039
    invoke-static {p1, v3, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 3040
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget v1, p0, Lo/setDatabaseUrl$extraCallback;->ICustomTabsCallback:I

    .line 4039
    invoke-static {p1, v2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 4040
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget v1, p0, Lo/setDatabaseUrl$extraCallback;->onNavigationEvent:I

    const/4 v3, 0x5

    .line 5039
    invoke-static {p1, v3, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 5040
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget v1, p0, Lo/setDatabaseUrl$extraCallback;->onMessageChannelReady:I

    const/4 v3, 0x6

    .line 6039
    invoke-static {p1, v3, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 6040
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget v1, p0, Lo/setDatabaseUrl$extraCallback;->asInterface:I

    const/4 v3, 0x7

    .line 7039
    invoke-static {p1, v3, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 7040
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget-boolean v1, p0, Lo/setDatabaseUrl$extraCallback;->onTransact:Z

    const/16 v3, 0x8

    .line 8020
    invoke-static {p1, v3, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 8021
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x9

    .line 21
    iget-object v3, p0, Lo/setDatabaseUrl$extraCallback;->asBinder:Ljava/lang/String;

    invoke-static {p1, v1, v3, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v1, p2, v0

    sub-int/2addr v0, v2

    .line 10013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 10014
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
