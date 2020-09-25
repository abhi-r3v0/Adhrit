.class final Lo/NBACard;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private extraCallback:Lo/setLastItem;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lo/Meta$$Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:I


# direct methods
.method constructor <init>(Lo/setLastItem;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/NBACard;->onNavigationEvent:Ljava/util/LinkedList;

    iput-object p1, p0, Lo/NBACard;->extraCallback:Lo/setLastItem;

    iput-object p2, p0, Lo/NBACard;->onMessageChannelReady:Ljava/lang/String;

    iput p3, p0, Lo/NBACard;->onPostMessage:I

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/NBACard;)Lo/setLastItem;
    .locals 0

    iget-object p0, p0, Lo/NBACard;->extraCallback:Lo/setLastItem;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/NBACard;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/NBACard;->onMessageChannelReady:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method final ICustomTabsCallback()I
    .locals 3

    iget-object v0, p0, Lo/NBACard;->onNavigationEvent:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Meta$$Parcelable;

    iget-boolean v2, v2, Lo/Meta$$Parcelable;->onPostMessage:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method final ICustomTabsCallback(Lo/setLastItem;)Lo/Meta$$Parcelable;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo/NBACard;->extraCallback:Lo/setLastItem;

    :cond_0
    iget-object p1, p0, Lo/NBACard;->onNavigationEvent:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Meta$$Parcelable;

    return-object p1
.end method

.method final ICustomTabsCallback(Lo/setHeaderImage;Lo/setLastItem;)V
    .locals 1

    new-instance v0, Lo/Meta$$Parcelable;

    invoke-direct {v0, p0, p1, p2}, Lo/Meta$$Parcelable;-><init>(Lo/NBACard;Lo/setHeaderImage;Lo/setLastItem;)V

    iget-object p1, p0, Lo/NBACard;->onNavigationEvent:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final ICustomTabsCallback$Stub()Z
    .locals 1

    iget-boolean v0, p0, Lo/NBACard;->ICustomTabsCallback:Z

    return v0
.end method

.method final asBinder()I
    .locals 3

    iget-object v0, p0, Lo/NBACard;->onNavigationEvent:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Meta$$Parcelable;

    invoke-virtual {v2}, Lo/Meta$$Parcelable;->onNavigationEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method final extraCallback()Lo/setLastItem;
    .locals 1

    iget-object v0, p0, Lo/NBACard;->extraCallback:Lo/setLastItem;

    return-object v0
.end method

.method final onMessageChannelReady()I
    .locals 1

    iget v0, p0, Lo/NBACard;->onPostMessage:I

    return v0
.end method

.method final onNavigationEvent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/NBACard;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method final onPostMessage()I
    .locals 1

    iget-object v0, p0, Lo/NBACard;->onNavigationEvent:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method final onPostMessage(Lo/setHeaderImage;)Z
    .locals 1

    new-instance v0, Lo/Meta$$Parcelable;

    invoke-direct {v0, p0, p1}, Lo/Meta$$Parcelable;-><init>(Lo/NBACard;Lo/setHeaderImage;)V

    iget-object p1, p0, Lo/NBACard;->onNavigationEvent:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lo/Meta$$Parcelable;->onNavigationEvent()Z

    move-result p1

    return p1
.end method

.method final onTransact()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/NBACard;->ICustomTabsCallback:Z

    return-void
.end method
