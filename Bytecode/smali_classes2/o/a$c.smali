.class final Lo/a$c;
.super Lo/c$4;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/c$4<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private extraCallback:I

.field private final onMessageChannelReady:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final synthetic onNavigationEvent:Lo/isCancelled;


# direct methods
.method constructor <init>(Lo/isCancelled;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/a$c;->onNavigationEvent:Lo/isCancelled;

    invoke-direct {p0}, Lo/c$4;-><init>()V

    .line 2
    iget-object p1, p1, Lo/isCancelled;->onPostMessage:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lo/a$c;->onMessageChannelReady:Ljava/lang/Object;

    .line 3
    iput p2, p0, Lo/a$c;->extraCallback:I

    return-void
.end method

.method private final ICustomTabsCallback()V
    .locals 3

    .line 6
    iget v0, p0, Lo/a$c;->extraCallback:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lo/a$c;->onNavigationEvent:Lo/isCancelled;

    .line 7
    invoke-virtual {v1}, Lo/isCancelled;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lo/a$c;->onMessageChannelReady:Ljava/lang/Object;

    iget-object v1, p0, Lo/a$c;->onNavigationEvent:Lo/isCancelled;

    iget-object v1, v1, Lo/isCancelled;->onPostMessage:[Ljava/lang/Object;

    iget v2, p0, Lo/a$c;->extraCallback:I

    aget-object v1, v1, v2

    .line 8
    invoke-static {v0, v1}, Lo/fu;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    :cond_0
    iget-object v0, p0, Lo/a$c;->onNavigationEvent:Lo/isCancelled;

    iget-object v1, p0, Lo/a$c;->onMessageChannelReady:Ljava/lang/Object;

    invoke-static {v0, v1}, Lo/isCancelled;->onMessageChannelReady(Lo/isCancelled;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lo/a$c;->extraCallback:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lo/a$c;->onMessageChannelReady:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lo/a$c;->onNavigationEvent:Lo/isCancelled;

    invoke-virtual {v0}, Lo/isCancelled;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    iget-object v1, p0, Lo/a$c;->onMessageChannelReady:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 14
    :cond_0
    invoke-direct {p0}, Lo/a$c;->ICustomTabsCallback()V

    .line 15
    iget v0, p0, Lo/a$c;->extraCallback:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lo/a$c;->onNavigationEvent:Lo/isCancelled;

    iget-object v0, v0, Lo/isCancelled;->onMessageChannelReady:[Ljava/lang/Object;

    iget v1, p0, Lo/a$c;->extraCallback:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lo/a$c;->onNavigationEvent:Lo/isCancelled;

    invoke-virtual {v0}, Lo/isCancelled;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v1, p0, Lo/a$c;->onMessageChannelReady:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :cond_0
    invoke-direct {p0}, Lo/a$c;->ICustomTabsCallback()V

    .line 20
    iget v0, p0, Lo/a$c;->extraCallback:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 21
    iget-object v0, p0, Lo/a$c;->onNavigationEvent:Lo/isCancelled;

    iget-object v1, p0, Lo/a$c;->onMessageChannelReady:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lo/isCancelled;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    .line 23
    :cond_1
    iget-object v0, p0, Lo/a$c;->onNavigationEvent:Lo/isCancelled;

    iget-object v0, v0, Lo/isCancelled;->onMessageChannelReady:[Ljava/lang/Object;

    iget v1, p0, Lo/a$c;->extraCallback:I

    aget-object v0, v0, v1

    .line 24
    iget-object v1, p0, Lo/a$c;->onNavigationEvent:Lo/isCancelled;

    iget-object v1, v1, Lo/isCancelled;->onMessageChannelReady:[Ljava/lang/Object;

    iget v2, p0, Lo/a$c;->extraCallback:I

    aput-object p1, v1, v2

    return-object v0
.end method
