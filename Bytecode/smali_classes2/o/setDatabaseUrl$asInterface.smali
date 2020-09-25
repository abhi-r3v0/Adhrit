.class public final Lo/setDatabaseUrl$asInterface;
.super Lo/getTags;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDatabaseUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "asInterface"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setDatabaseUrl$asInterface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private extraCallback:Ljava/lang/String;

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Ljava/lang/String;

.field private onRelationshipValidationResult:Ljava/lang/String;

.field private onTransact:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lo/getExperimentId;

    invoke-direct {v0}, Lo/getExperimentId;-><init>()V

    sput-object v0, Lo/setDatabaseUrl$asInterface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 3
    iput-object p1, p0, Lo/setDatabaseUrl$asInterface;->ICustomTabsCallback:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lo/setDatabaseUrl$asInterface;->onMessageChannelReady:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lo/setDatabaseUrl$asInterface;->extraCallback:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lo/setDatabaseUrl$asInterface;->onNavigationEvent:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lo/setDatabaseUrl$asInterface;->onPostMessage:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lo/setDatabaseUrl$asInterface;->onRelationshipValidationResult:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lo/setDatabaseUrl$asInterface;->onTransact:Ljava/lang/String;

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

    .line 13
    iget-object v1, p0, Lo/setDatabaseUrl$asInterface;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 14
    iget-object v1, p0, Lo/setDatabaseUrl$asInterface;->onMessageChannelReady:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 15
    iget-object v1, p0, Lo/setDatabaseUrl$asInterface;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    iget-object v1, p0, Lo/setDatabaseUrl$asInterface;->onNavigationEvent:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 17
    iget-object v1, p0, Lo/setDatabaseUrl$asInterface;->onPostMessage:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 18
    iget-object v1, p0, Lo/setDatabaseUrl$asInterface;->onRelationshipValidationResult:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 19
    iget-object v1, p0, Lo/setDatabaseUrl$asInterface;->onTransact:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 3011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v1, p2, v0

    sub-int/2addr v0, v2

    .line 3013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3014
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
