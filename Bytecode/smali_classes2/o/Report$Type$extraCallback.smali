.class final Lo/Report$Type$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Report$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/Report$Type;

.field private onNavigationEvent:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private onPostMessage:I


# direct methods
.method private constructor <init>(Lo/Report$Type;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lo/Report$Type$extraCallback;->onMessageChannelReady:Lo/Report$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iget-object p1, p0, Lo/Report$Type$extraCallback;->onMessageChannelReady:Lo/Report$Type;

    .line 1083
    iget-object p1, p1, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    .line 591
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lo/Report$Type$extraCallback;->onPostMessage:I

    return-void
.end method

.method synthetic constructor <init>(Lo/Report$Type;B)V
    .locals 0

    .line 589
    invoke-direct {p0, p1}, Lo/Report$Type$extraCallback;-><init>(Lo/Report$Type;)V

    return-void
.end method

.method private ICustomTabsCallback()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lo/Report$Type$extraCallback;->onNavigationEvent:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lo/Report$Type$extraCallback;->onMessageChannelReady:Lo/Report$Type;

    .line 3083
    iget-object v0, v0, Lo/Report$Type;->extraCallback:Ljava/util/Map;

    .line 619
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lo/Report$Type$extraCallback;->onNavigationEvent:Ljava/util/Iterator;

    .line 621
    :cond_0
    iget-object v0, p0, Lo/Report$Type$extraCallback;->onNavigationEvent:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 596
    iget v0, p0, Lo/Report$Type$extraCallback;->onPostMessage:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lo/Report$Type$extraCallback;->onMessageChannelReady:Lo/Report$Type;

    .line 2083
    iget-object v1, v1, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    .line 596
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lo/Report$Type$extraCallback;->ICustomTabsCallback()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .line 3601
    invoke-direct {p0}, Lo/Report$Type$extraCallback;->ICustomTabsCallback()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3602
    invoke-direct {p0}, Lo/Report$Type$extraCallback;->ICustomTabsCallback()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 3604
    :cond_0
    iget-object v0, p0, Lo/Report$Type$extraCallback;->onMessageChannelReady:Lo/Report$Type;

    .line 4083
    iget-object v0, v0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    .line 3604
    iget v1, p0, Lo/Report$Type$extraCallback;->onPostMessage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lo/Report$Type$extraCallback;->onPostMessage:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 609
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
