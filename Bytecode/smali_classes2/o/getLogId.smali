.class public final Lo/getLogId;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getLogId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lo/setRequireDebugLog;

    invoke-direct {v0}, Lo/setRequireDebugLog;-><init>()V

    sput-object v0, Lo/getLogId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lo/getLogId;-><init>(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 11
    iput p1, p0, Lo/getLogId;->onPostMessage:I

    if-eqz p2, :cond_2

    .line 12
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 15
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/extraCallback$extraCallback;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/getLogId;->extraCallback:Ljava/util/List;

    return-void

    .line 13
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/getLogId;->extraCallback:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lo/getTags;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lo/getLogId;->onPostMessage:I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getLogId;->extraCallback:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lo/getLogId;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static onMessageChannelReady(Lo/getLogId;)Lo/getLogId;
    .locals 1

    if-eqz p0, :cond_0

    .line 21
    iget-object p0, p0, Lo/getLogId;->extraCallback:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    new-instance v0, Lo/getLogId;

    invoke-direct {v0, p0}, Lo/getLogId;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static onNavigationEvent()Lo/getLogId;
    .locals 2

    .line 19
    new-instance v0, Lo/getLogId;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getLogId;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 25
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    .line 26
    iget v0, p0, Lo/getLogId;->onPostMessage:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    .line 28
    iget-object v0, p0, Lo/getLogId;->extraCallback:Ljava/util/List;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 30
    invoke-static {p1, v1, v0, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 31
    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
