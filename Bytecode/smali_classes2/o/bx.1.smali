.class public abstract Lo/bx;
.super Lo/bn;
.source ""

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/bn<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient onMessageChannelReady:Lo/br;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/br<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/bn;-><init>()V

    return-void
.end method


# virtual methods
.method asInterface()Lo/br;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/br<",
            "TE;>;"
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lo/bn;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lo/br;->onNavigationEvent([Ljava/lang/Object;)Lo/br;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lo/bz;->onMessageChannelReady(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 5
    invoke-static {p0}, Lo/bz;->onMessageChannelReady(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lo/bn;->onMessageChannelReady()Lo/setNotificationInterceptionEnabled;

    move-result-object v0

    return-object v0
.end method

.method public onRelationshipValidationResult()Lo/br;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/br<",
            "TE;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lo/bx;->onMessageChannelReady:Lo/br;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lo/bx;->asInterface()Lo/br;

    move-result-object v0

    iput-object v0, p0, Lo/bx;->onMessageChannelReady:Lo/br;

    :cond_0
    return-object v0
.end method
