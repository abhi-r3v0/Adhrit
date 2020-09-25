.class public final Lo/setDatabaseUrl;
.super Lo/getTags;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setDatabaseUrl$ICustomTabsCallback;,
        Lo/setDatabaseUrl$onPostMessage;,
        Lo/setDatabaseUrl$onMessageChannelReady;,
        Lo/setDatabaseUrl$asInterface;,
        Lo/setDatabaseUrl$onNavigationEvent;,
        Lo/setDatabaseUrl$extraCallback;,
        Lo/setDatabaseUrl$onTransact;,
        Lo/setDatabaseUrl$newSession;,
        Lo/setDatabaseUrl$getInterfaceDescriptor;,
        Lo/setDatabaseUrl$onRelationshipValidationResult;,
        Lo/setDatabaseUrl$ICustomTabsCallback$Stub;,
        Lo/setDatabaseUrl$asBinder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setDatabaseUrl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:Lo/setDatabaseUrl$onRelationshipValidationResult;

.field private ICustomTabsCallback$Stub$Proxy:[B

.field private ICustomTabsService:Lo/setDatabaseUrl$onNavigationEvent;

.field private asBinder:Lo/setDatabaseUrl$asBinder;

.field private asInterface:Lo/setDatabaseUrl$ICustomTabsCallback$Stub;

.field private extraCallback:I

.field private getInterfaceDescriptor:Lo/setDatabaseUrl$ICustomTabsCallback;

.field private newSession:Lo/setDatabaseUrl$onPostMessage;

.field public onMessageChannelReady:Ljava/lang/String;

.field public onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:[Landroid/graphics/Point;

.field private onRelationshipValidationResult:Lo/setDatabaseUrl$getInterfaceDescriptor;

.field private onTransact:Lo/setDatabaseUrl$newSession;

.field private postMessage:Z

.field private warmup:Lo/setDatabaseUrl$onTransact;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lo/getSeconds;

    invoke-direct {v0}, Lo/getSeconds;-><init>()V

    sput-object v0, Lo/setDatabaseUrl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I[Landroid/graphics/Point;Lo/setDatabaseUrl$asBinder;Lo/setDatabaseUrl$ICustomTabsCallback$Stub;Lo/setDatabaseUrl$onRelationshipValidationResult;Lo/setDatabaseUrl$getInterfaceDescriptor;Lo/setDatabaseUrl$newSession;Lo/setDatabaseUrl$onTransact;Lo/setDatabaseUrl$onNavigationEvent;Lo/setDatabaseUrl$onPostMessage;Lo/setDatabaseUrl$ICustomTabsCallback;[BZ)V
    .locals 2

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Lo/getTags;-><init>()V

    move v1, p1

    .line 3
    iput v1, v0, Lo/setDatabaseUrl;->ICustomTabsCallback:I

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lo/setDatabaseUrl;->onNavigationEvent:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 5
    iput-object v1, v0, Lo/setDatabaseUrl;->ICustomTabsCallback$Stub$Proxy:[B

    move-object v1, p3

    .line 6
    iput-object v1, v0, Lo/setDatabaseUrl;->onMessageChannelReady:Ljava/lang/String;

    move v1, p4

    .line 7
    iput v1, v0, Lo/setDatabaseUrl;->extraCallback:I

    move-object v1, p5

    .line 8
    iput-object v1, v0, Lo/setDatabaseUrl;->onPostMessage:[Landroid/graphics/Point;

    move/from16 v1, p16

    .line 9
    iput-boolean v1, v0, Lo/setDatabaseUrl;->postMessage:Z

    move-object v1, p6

    .line 10
    iput-object v1, v0, Lo/setDatabaseUrl;->asBinder:Lo/setDatabaseUrl$asBinder;

    move-object v1, p7

    .line 11
    iput-object v1, v0, Lo/setDatabaseUrl;->asInterface:Lo/setDatabaseUrl$ICustomTabsCallback$Stub;

    move-object v1, p8

    .line 12
    iput-object v1, v0, Lo/setDatabaseUrl;->ICustomTabsCallback$Stub:Lo/setDatabaseUrl$onRelationshipValidationResult;

    move-object v1, p9

    .line 13
    iput-object v1, v0, Lo/setDatabaseUrl;->onRelationshipValidationResult:Lo/setDatabaseUrl$getInterfaceDescriptor;

    move-object v1, p10

    .line 14
    iput-object v1, v0, Lo/setDatabaseUrl;->onTransact:Lo/setDatabaseUrl$newSession;

    move-object v1, p11

    .line 15
    iput-object v1, v0, Lo/setDatabaseUrl;->warmup:Lo/setDatabaseUrl$onTransact;

    move-object v1, p12

    .line 16
    iput-object v1, v0, Lo/setDatabaseUrl;->ICustomTabsService:Lo/setDatabaseUrl$onNavigationEvent;

    move-object v1, p13

    .line 17
    iput-object v1, v0, Lo/setDatabaseUrl;->newSession:Lo/setDatabaseUrl$onPostMessage;

    move-object/from16 v1, p14

    .line 18
    iput-object v1, v0, Lo/setDatabaseUrl;->getInterfaceDescriptor:Lo/setDatabaseUrl$ICustomTabsCallback;

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

    .line 22
    iget v2, p0, Lo/setDatabaseUrl;->ICustomTabsCallback:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    .line 2039
    invoke-static {p1, v4, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2040
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget-object v2, p0, Lo/setDatabaseUrl;->onNavigationEvent:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {p1, v4, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 24
    iget-object v2, p0, Lo/setDatabaseUrl;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {p1, v3, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 25
    iget v2, p0, Lo/setDatabaseUrl;->extraCallback:I

    const/4 v4, 0x5

    .line 3039
    invoke-static {p1, v4, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 3040
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget-object v2, p0, Lo/setDatabaseUrl;->onPostMessage:[Landroid/graphics/Point;

    const/4 v4, 0x6

    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 27
    iget-object v2, p0, Lo/setDatabaseUrl;->asBinder:Lo/setDatabaseUrl$asBinder;

    const/4 v4, 0x7

    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 28
    iget-object v2, p0, Lo/setDatabaseUrl;->asInterface:Lo/setDatabaseUrl$ICustomTabsCallback$Stub;

    const/16 v4, 0x8

    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 29
    iget-object v2, p0, Lo/setDatabaseUrl;->ICustomTabsCallback$Stub:Lo/setDatabaseUrl$onRelationshipValidationResult;

    const/16 v4, 0x9

    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 30
    iget-object v2, p0, Lo/setDatabaseUrl;->onRelationshipValidationResult:Lo/setDatabaseUrl$getInterfaceDescriptor;

    const/16 v4, 0xa

    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 31
    iget-object v2, p0, Lo/setDatabaseUrl;->onTransact:Lo/setDatabaseUrl$newSession;

    const/16 v4, 0xb

    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 32
    iget-object v2, p0, Lo/setDatabaseUrl;->warmup:Lo/setDatabaseUrl$onTransact;

    const/16 v4, 0xc

    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 33
    iget-object v2, p0, Lo/setDatabaseUrl;->ICustomTabsService:Lo/setDatabaseUrl$onNavigationEvent;

    const/16 v4, 0xd

    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 34
    iget-object v2, p0, Lo/setDatabaseUrl;->newSession:Lo/setDatabaseUrl$onPostMessage;

    const/16 v4, 0xe

    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 35
    iget-object v2, p0, Lo/setDatabaseUrl;->getInterfaceDescriptor:Lo/setDatabaseUrl$ICustomTabsCallback;

    const/16 v4, 0xf

    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 36
    iget-object p2, p0, Lo/setDatabaseUrl;->ICustomTabsCallback$Stub$Proxy:[B

    const/16 v2, 0x10

    invoke-static {p1, v2, p2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;I[BZ)V

    .line 37
    iget-boolean p2, p0, Lo/setDatabaseUrl;->postMessage:Z

    const/16 v0, 0x11

    .line 4020
    invoke-static {p1, v0, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 4021
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v0, p2, v1

    sub-int/2addr v1, v3

    .line 6013
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6014
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
