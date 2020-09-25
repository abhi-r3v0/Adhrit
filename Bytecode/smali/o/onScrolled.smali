.class public final Lo/onScrolled;
.super Lo/MediaControllerCompat$TransportControlsApi24;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onScrolled$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 (2\u00020\u0001:\u0001(B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020\"J\"\u0010$\u001a\u00020\"2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u000e\u0010\'\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\u0007H\u0002R\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006)"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/RaffleTicketViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "app",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "_raffleTicketData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineViewModel$TicketMachineData;",
        "id",
        "",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "isFetchingTickets",
        "",
        "nextPage",
        "pageNumber",
        "",
        "perPage",
        "raffleTicketData",
        "Landroidx/lifecycle/LiveData;",
        "getRaffleTicketData",
        "()Landroidx/lifecycle/LiveData;",
        "tickets",
        "",
        "winService",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinService;",
        "getWinService",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinService;",
        "winService$delegate",
        "Lkotlin/Lazy;",
        "fetchTickets",
        "",
        "reset",
        "updateList",
        "header",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "result",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Z

.field private final ICustomTabsCallback$Stub:Lo/isSameListener;

.field private asInterface:Z

.field final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/findNestedRecyclerView$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field onMessageChannelReady:I

.field onNavigationEvent:Ljava/lang/String;

.field final onRelationshipValidationResult:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/util/List<",
            "Lo/findNestedRecyclerView$ICustomTabsCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private onTransact:I


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/app/Application;)V

    const/4 p1, 0x1

    .line 23
    iput p1, p0, Lo/onScrolled;->onMessageChannelReady:I

    const/16 v0, 0xa

    .line 24
    iput v0, p0, Lo/onScrolled;->onTransact:I

    .line 25
    iput-boolean p1, p0, Lo/onScrolled;->ICustomTabsCallback:Z

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/onScrolled;->extraCallback:Ljava/util/List;

    .line 28
    sget-object p1, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 84
    sget-object p1, Lo/onScrolled$ICustomTabsCallback;->extraCallback:Lo/onScrolled$ICustomTabsCallback;

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 84
    iput-object v0, p0, Lo/onScrolled;->ICustomTabsCallback$Stub:Lo/isSameListener;

    .line 33
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/onScrolled;->onRelationshipValidationResult:Lo/setActive;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/onScrolled;)Lo/setActive;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/onScrolled;->onRelationshipValidationResult:Lo/setActive;

    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/onScrolled;I)V
    .locals 0

    .line 20
    iput p1, p0, Lo/onScrolled;->onMessageChannelReady:I

    return-void
.end method

.method public static final synthetic extraCallback(Lo/onScrolled;Lo/getTargetScrollPosition;Ljava/util/List;)V
    .locals 5

    .line 1065
    iget-object v0, p0, Lo/onScrolled;->extraCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p2, :cond_0

    .line 1066
    check-cast p2, Ljava/lang/Iterable;

    .line 1082
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getTargetScrollPosition;

    .line 1067
    iget-object v2, p0, Lo/onScrolled;->extraCallback:Ljava/util/List;

    new-instance v3, Lo/findNestedRecyclerView$ICustomTabsCallback;

    sget-object v4, Lo/dispatchOnScrollStateChanged;->onPostMessage:Lo/dispatchOnScrollStateChanged$onMessageChannelReady;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v0}, Lo/dispatchOnScrollStateChanged$onMessageChannelReady;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1, p1}, Lo/findNestedRecyclerView$ICustomTabsCallback;-><init>(Ljava/lang/String;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_0

    .line 1069
    :cond_0
    iget-object p1, p0, Lo/onScrolled;->onRelationshipValidationResult:Lo/setActive;

    iget-object p0, p0, Lo/onScrolled;->extraCallback:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/onScrolled;Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lo/onScrolled;->ICustomTabsCallback:Z

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/onScrolled;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lo/onScrolled;->asInterface:Z

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/onScrolled;)I
    .locals 0

    .line 20
    iget p0, p0, Lo/onScrolled;->onMessageChannelReady:I

    return p0
.end method


# virtual methods
.method public final extraCallback()V
    .locals 4

    .line 36
    iget-boolean v0, p0, Lo/onScrolled;->asInterface:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/onScrolled;->ICustomTabsCallback:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/onScrolled;->onNavigationEvent:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 37
    sget-object v0, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fetchTickets :: REQUEST: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/onScrolled;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RaffleTicketViewModel"

    invoke-static {v1, v0}, Lo/replaceAll;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lo/onScrolled;->asInterface:Z

    .line 1000
    iget-object v0, p0, Lo/onScrolled;->ICustomTabsCallback$Stub:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/findViewHolderForPosition;

    .line 39
    iget-object v1, p0, Lo/onScrolled;->onNavigationEvent:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    iget v2, p0, Lo/onScrolled;->onTransact:I

    iget v3, p0, Lo/onScrolled;->onMessageChannelReady:I

    invoke-interface {v0, v1, v2, v3}, Lo/findViewHolderForPosition;->ICustomTabsCallback(Ljava/lang/String;II)Lo/clearScrap;

    move-result-object v0

    .line 40
    new-instance v1, Lo/onScrolled$onMessageChannelReady;

    invoke-direct {v1, p0}, Lo/onScrolled$onMessageChannelReady;-><init>(Lo/onScrolled;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_1
    return-void
.end method
