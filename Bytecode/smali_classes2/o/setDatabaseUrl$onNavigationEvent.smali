.class public final Lo/setDatabaseUrl$onNavigationEvent;
.super Lo/getTags;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDatabaseUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setDatabaseUrl$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private asBinder:Lo/setDatabaseUrl$extraCallback;

.field private extraCallback:Ljava/lang/String;

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Ljava/lang/String;

.field private onTransact:Lo/setDatabaseUrl$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lo/getNanoseconds;

    invoke-direct {v0}, Lo/getNanoseconds;-><init>()V

    sput-object v0, Lo/setDatabaseUrl$onNavigationEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/setDatabaseUrl$extraCallback;Lo/setDatabaseUrl$extraCallback;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 3
    iput-object p1, p0, Lo/setDatabaseUrl$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lo/setDatabaseUrl$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lo/setDatabaseUrl$onNavigationEvent;->extraCallback:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lo/setDatabaseUrl$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lo/setDatabaseUrl$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lo/setDatabaseUrl$onNavigationEvent;->asBinder:Lo/setDatabaseUrl$extraCallback;

    .line 9
    iput-object p7, p0, Lo/setDatabaseUrl$onNavigationEvent;->onTransact:Lo/setDatabaseUrl$extraCallback;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const v0, -0xb0bb

    .line 2008
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 2009
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 13
    iget-object v2, p0, Lo/setDatabaseUrl$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {p1, v3, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 14
    iget-object v2, p0, Lo/setDatabaseUrl$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {p1, v3, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 15
    iget-object v2, p0, Lo/setDatabaseUrl$onNavigationEvent;->extraCallback:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {p1, v3, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    iget-object v2, p0, Lo/setDatabaseUrl$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-static {p1, v4, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 17
    iget-object v2, p0, Lo/setDatabaseUrl$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    const/4 v4, 0x6

    invoke-static {p1, v4, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 18
    iget-object v2, p0, Lo/setDatabaseUrl$onNavigationEvent;->asBinder:Lo/setDatabaseUrl$extraCallback;

    const/4 v4, 0x7

    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 19
    iget-object v2, p0, Lo/setDatabaseUrl$onNavigationEvent;->onTransact:Lo/setDatabaseUrl$extraCallback;

    const/16 v4, 0x8

    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 3011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v0, p2, v1

    sub-int/2addr v1, v3

    .line 3013
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3014
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method