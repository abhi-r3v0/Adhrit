.class public final Lo/zzir;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/zzir;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Lo/zzfa$zza;

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onPostMessage:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lo/zzic;

    invoke-direct {v0}, Lo/zzic;-><init>()V

    sput-object v0, Lo/zzir;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/zzfa$zza;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p1, p0, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    .line 4
    iput-object p3, p0, Lo/zzir;->extraCallback:Ljava/lang/String;

    .line 5
    iput-wide p4, p0, Lo/zzir;->onPostMessage:J

    return-void
.end method

.method constructor <init>(Lo/zzir;J)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 8
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p1, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    iput-object v0, p0, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    iput-object v0, p0, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    .line 11
    iget-object p1, p1, Lo/zzir;->extraCallback:Ljava/lang/String;

    iput-object p1, p0, Lo/zzir;->extraCallback:Ljava/lang/String;

    .line 12
    iput-wide p2, p0, Lo/zzir;->onPostMessage:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .line 14
    iget-object v0, p0, Lo/zzir;->extraCallback:Ljava/lang/String;

    iget-object v1, p0, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    iget-object v2, p0, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "origin="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",name="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",params="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 16
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    .line 17
    iget-object v1, p0, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 18
    iget-object v1, p0, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 19
    iget-object p2, p0, Lo/zzir;->extraCallback:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 20
    iget-wide v1, p0, Lo/zzir;->onPostMessage:J

    const/4 p2, 0x5

    invoke-static {p1, p2, v1, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    .line 21
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
