.class public final Lo/getConversationId;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getConversationId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lo/setParticipants;

    invoke-direct {v0}, Lo/setParticipants;-><init>()V

    sput-object v0, Lo/getConversationId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getConversationId;->ICustomTabsCallback:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Conversation;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lo/getTags;-><init>()V

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/getConversationId;->ICustomTabsCallback:Ljava/util/List;

    return-void

    .line 7
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/getConversationId;->ICustomTabsCallback:Ljava/util/List;

    return-void
.end method

.method public static onNavigationEvent(Lo/getConversationId;)Lo/getConversationId;
    .locals 2

    .line 11
    iget-object p0, p0, Lo/getConversationId;->ICustomTabsCallback:Ljava/util/List;

    .line 13
    new-instance v0, Lo/getConversationId;

    invoke-direct {v0}, Lo/getConversationId;-><init>()V

    if-eqz p0, :cond_0

    .line 16
    iget-object v1, v0, Lo/getConversationId;->ICustomTabsCallback:Ljava/util/List;

    .line 17
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/Conversation;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lo/getConversationId;->ICustomTabsCallback:Ljava/util/List;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 33
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    .line 35
    iget-object v0, p0, Lo/getConversationId;->ICustomTabsCallback:Ljava/util/List;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 37
    invoke-static {p1, v1, v0, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 38
    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
