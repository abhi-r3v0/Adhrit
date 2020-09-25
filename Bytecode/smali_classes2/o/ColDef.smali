.class public final Lo/ColDef;
.super Lo/getTags;
.source ""

# interfaces
.implements Lo/getTimestampSeconds;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getTags;",
        "Lo/getTimestampSeconds<",
        "Lo/ColDef;",
        "Lo/DefaultCsatConfig$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/ColDef;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:Lo/getLogId;

.field private asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:Z

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Z

.field private onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lo/getResponseTimeType;

    invoke-direct {v0}, Lo/getResponseTimeType;-><init>()V

    sput-object v0, Lo/ColDef;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    invoke-static {}, Lo/getLogId;->onNavigationEvent()Lo/getLogId;

    move-result-object v0

    iput-object v0, p0, Lo/ColDef;->ICustomTabsCallback:Lo/getLogId;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLo/getLogId;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Lo/getLogId;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 5
    iput-object p1, p0, Lo/ColDef;->onPostMessage:Ljava/lang/String;

    .line 6
    iput-boolean p2, p0, Lo/ColDef;->extraCallback:Z

    .line 7
    iput-object p3, p0, Lo/ColDef;->onMessageChannelReady:Ljava/lang/String;

    .line 8
    iput-boolean p4, p0, Lo/ColDef;->onNavigationEvent:Z

    if-nez p5, :cond_0

    .line 10
    invoke-static {}, Lo/getLogId;->onNavigationEvent()Lo/getLogId;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p5}, Lo/getLogId;->onMessageChannelReady(Lo/getLogId;)Lo/getLogId;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/ColDef;->ICustomTabsCallback:Lo/getLogId;

    .line 11
    iput-object p6, p0, Lo/ColDef;->asInterface:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lo/ColDef;->asInterface:Ljava/util/List;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 15
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    .line 17
    iget-object v1, p0, Lo/ColDef;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 19
    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 21
    iget-boolean v1, p0, Lo/ColDef;->extraCallback:Z

    const/4 v3, 0x3

    .line 22
    invoke-static {p1, v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    .line 24
    iget-object v1, p0, Lo/ColDef;->onMessageChannelReady:Ljava/lang/String;

    const/4 v3, 0x4

    .line 26
    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 28
    iget-boolean v1, p0, Lo/ColDef;->onNavigationEvent:Z

    const/4 v3, 0x5

    .line 29
    invoke-static {p1, v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    .line 31
    iget-object v1, p0, Lo/ColDef;->ICustomTabsCallback:Lo/getLogId;

    const/4 v3, 0x6

    .line 33
    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 35
    iget-object p2, p0, Lo/ColDef;->asInterface:Ljava/util/List;

    const/4 v1, 0x7

    .line 37
    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 38
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final synthetic zza(Lo/access$502;)Lo/getTimestampSeconds;
    .locals 4

    .line 42
    instance-of v0, p1, Lo/DefaultCsatConfig$onMessageChannelReady;

    if-eqz v0, :cond_2

    .line 44
    check-cast p1, Lo/DefaultCsatConfig$onMessageChannelReady;

    .line 45
    invoke-virtual {p1}, Lo/DefaultCsatConfig$onMessageChannelReady;->onTransact()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback$extraCallback;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ColDef;->onPostMessage:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lo/DefaultCsatConfig$onMessageChannelReady;->ICustomTabsService()Z

    move-result v0

    iput-boolean v0, p0, Lo/ColDef;->extraCallback:Z

    .line 47
    invoke-virtual {p1}, Lo/DefaultCsatConfig$onMessageChannelReady;->warmup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback$extraCallback;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ColDef;->onMessageChannelReady:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lo/DefaultCsatConfig$onMessageChannelReady;->newSession()Z

    move-result v0

    iput-boolean v0, p0, Lo/ColDef;->onNavigationEvent:Z

    .line 50
    invoke-virtual {p1}, Lo/DefaultCsatConfig$onMessageChannelReady;->asBinder()I

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lo/getLogId;->onNavigationEvent()Lo/getLogId;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Lo/getLogId;

    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lo/DefaultCsatConfig$onMessageChannelReady;->asInterface()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lo/getLogId;-><init>(ILjava/util/List;)V

    :goto_0
    iput-object v0, p0, Lo/ColDef;->ICustomTabsCallback:Lo/getLogId;

    .line 54
    invoke-virtual {p1}, Lo/DefaultCsatConfig$onMessageChannelReady;->getInterfaceDescriptor()I

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lo/DefaultCsatConfig$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy()Ljava/util/List;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lo/ColDef;->asInterface:Ljava/util/List;

    return-object p0

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The passed proto must be an instance of CreateAuthUriResponse."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza()Lo/uploadState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/uploadState<",
            "Lo/DefaultCsatConfig$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {}, Lo/DefaultCsatConfig$onMessageChannelReady;->extraCommand()Lo/uploadState;

    move-result-object v0

    return-object v0
.end method
