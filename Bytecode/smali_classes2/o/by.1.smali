.class final Lo/by;
.super Lo/bx;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lo/bx<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient extraCallback:Lo/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/bs<",
            "TK;*>;"
        }
    .end annotation
.end field

.field private final transient onNavigationEvent:Lo/br;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/br<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/bs;Lo/br;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/bs<",
            "TK;*>;",
            "Lo/br<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/bx;-><init>()V

    .line 2
    iput-object p1, p0, Lo/by;->extraCallback:Lo/bs;

    .line 3
    iput-object p2, p0, Lo/by;->onNavigationEvent:Lo/br;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback([Ljava/lang/Object;I)I
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/bn;->onRelationshipValidationResult()Lo/br;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/bn;->ICustomTabsCallback([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 8
    iget-object v0, p0, Lo/by;->extraCallback:Lo/bs;

    invoke-virtual {v0, p1}, Lo/bs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lo/bn;->onMessageChannelReady()Lo/setNotificationInterceptionEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/setNotificationInterceptionEnabled;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setNotificationInterceptionEnabled<",
            "TK;>;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lo/bn;->onRelationshipValidationResult()Lo/br;

    move-result-object v0

    invoke-virtual {v0}, Lo/bn;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lo/setNotificationInterceptionEnabled;

    return-object v0
.end method

.method final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onRelationshipValidationResult()Lo/br;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/br<",
            "TK;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lo/by;->onNavigationEvent:Lo/br;

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 10
    iget-object v0, p0, Lo/by;->extraCallback:Lo/bs;

    invoke-virtual {v0}, Lo/bs;->size()I

    move-result v0

    return v0
.end method
