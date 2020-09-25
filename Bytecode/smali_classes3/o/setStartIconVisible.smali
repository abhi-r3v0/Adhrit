.class public final Lo/setStartIconVisible;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setStartIconVisible;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ICustomTabsCallback:Ljava/lang/String;

.field public ICustomTabsCallback$Stub:J

.field public ICustomTabsCallback$Stub$Proxy:Lo/zzir;

.field public asBinder:Lo/zzir;

.field public asInterface:Lo/zzir;

.field public extraCallback:J

.field public onMessageChannelReady:Lo/setError;

.field public onNavigationEvent:Ljava/lang/String;

.field public onPostMessage:Z

.field public onRelationshipValidationResult:J

.field public onTransact:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lo/setStartIconOnLongClickListener;

    invoke-direct {v0}, Lo/setStartIconOnLongClickListener;-><init>()V

    sput-object v0, Lo/setStartIconVisible;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/setError;JZLjava/lang/String;Lo/zzir;JLo/zzir;JLo/zzir;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 16
    iput-object p1, p0, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lo/setStartIconVisible;->onNavigationEvent:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    .line 19
    iput-wide p4, p0, Lo/setStartIconVisible;->extraCallback:J

    .line 20
    iput-boolean p6, p0, Lo/setStartIconVisible;->onPostMessage:Z

    .line 21
    iput-object p7, p0, Lo/setStartIconVisible;->onTransact:Ljava/lang/String;

    .line 22
    iput-object p8, p0, Lo/setStartIconVisible;->asInterface:Lo/zzir;

    .line 23
    iput-wide p9, p0, Lo/setStartIconVisible;->onRelationshipValidationResult:J

    .line 24
    iput-object p11, p0, Lo/setStartIconVisible;->asBinder:Lo/zzir;

    .line 25
    iput-wide p12, p0, Lo/setStartIconVisible;->ICustomTabsCallback$Stub:J

    .line 26
    iput-object p14, p0, Lo/setStartIconVisible;->ICustomTabsCallback$Stub$Proxy:Lo/zzir;

    return-void
.end method

.method constructor <init>(Lo/setStartIconVisible;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    iput-object v0, p0, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lo/setStartIconVisible;->onNavigationEvent:Ljava/lang/String;

    iput-object v0, p0, Lo/setStartIconVisible;->onNavigationEvent:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iput-object v0, p0, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    .line 6
    iget-wide v0, p1, Lo/setStartIconVisible;->extraCallback:J

    iput-wide v0, p0, Lo/setStartIconVisible;->extraCallback:J

    .line 7
    iget-boolean v0, p1, Lo/setStartIconVisible;->onPostMessage:Z

    iput-boolean v0, p0, Lo/setStartIconVisible;->onPostMessage:Z

    .line 8
    iget-object v0, p1, Lo/setStartIconVisible;->onTransact:Ljava/lang/String;

    iput-object v0, p0, Lo/setStartIconVisible;->onTransact:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lo/setStartIconVisible;->asInterface:Lo/zzir;

    iput-object v0, p0, Lo/setStartIconVisible;->asInterface:Lo/zzir;

    .line 10
    iget-wide v0, p1, Lo/setStartIconVisible;->onRelationshipValidationResult:J

    iput-wide v0, p0, Lo/setStartIconVisible;->onRelationshipValidationResult:J

    .line 11
    iget-object v0, p1, Lo/setStartIconVisible;->asBinder:Lo/zzir;

    iput-object v0, p0, Lo/setStartIconVisible;->asBinder:Lo/zzir;

    .line 12
    iget-wide v0, p1, Lo/setStartIconVisible;->ICustomTabsCallback$Stub:J

    iput-wide v0, p0, Lo/setStartIconVisible;->ICustomTabsCallback$Stub:J

    .line 13
    iget-object p1, p1, Lo/setStartIconVisible;->ICustomTabsCallback$Stub$Proxy:Lo/zzir;

    iput-object p1, p0, Lo/setStartIconVisible;->ICustomTabsCallback$Stub$Proxy:Lo/zzir;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 29
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    .line 30
    iget-object v1, p0, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 31
    iget-object v1, p0, Lo/setStartIconVisible;->onNavigationEvent:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 32
    iget-object v1, p0, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 33
    iget-wide v3, p0, Lo/setStartIconVisible;->extraCallback:J

    const/4 v1, 0x5

    invoke-static {p1, v1, v3, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    .line 34
    iget-boolean v1, p0, Lo/setStartIconVisible;->onPostMessage:Z

    const/4 v3, 0x6

    invoke-static {p1, v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    .line 35
    iget-object v1, p0, Lo/setStartIconVisible;->onTransact:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 36
    iget-object v1, p0, Lo/setStartIconVisible;->asInterface:Lo/zzir;

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 37
    iget-wide v3, p0, Lo/setStartIconVisible;->onRelationshipValidationResult:J

    const/16 v1, 0x9

    invoke-static {p1, v1, v3, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    .line 38
    iget-object v1, p0, Lo/setStartIconVisible;->asBinder:Lo/zzir;

    const/16 v3, 0xa

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 39
    iget-wide v3, p0, Lo/setStartIconVisible;->ICustomTabsCallback$Stub:J

    const/16 v1, 0xb

    invoke-static {p1, v1, v3, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    .line 40
    iget-object v1, p0, Lo/setStartIconVisible;->ICustomTabsCallback$Stub$Proxy:Lo/zzir;

    const/16 v3, 0xc

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 41
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
