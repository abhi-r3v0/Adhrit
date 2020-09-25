.class public final Lo/writeBoolNoTag;
.super Lo/writeEnumNoTag;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/writeEnumNoTag;",
        "Ljava/lang/Iterable<",
        "Lo/writeEnumNoTag;",
        ">;"
    }
.end annotation


# instance fields
.field public final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/writeEnumNoTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lo/writeEnumNoTag;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/writeBoolNoTag;->onNavigationEvent:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lo/writeEnumNoTag;-><init>()V

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/writeBoolNoTag;->onNavigationEvent:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/Number;
    .locals 2

    .line 207
    iget-object v0, p0, Lo/writeBoolNoTag;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lo/writeBoolNoTag;->onNavigationEvent:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeEnumNoTag;

    invoke-virtual {v0}, Lo/writeEnumNoTag;->ICustomTabsCallback()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 377
    instance-of v0, p1, Lo/writeBoolNoTag;

    if-eqz v0, :cond_0

    check-cast p1, Lo/writeBoolNoTag;

    iget-object p1, p1, Lo/writeBoolNoTag;->onNavigationEvent:Ljava/util/List;

    iget-object v0, p0, Lo/writeBoolNoTag;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 382
    iget-object v0, p0, Lo/writeBoolNoTag;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/writeEnumNoTag;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lo/writeBoolNoTag;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 2

    .line 223
    iget-object v0, p0, Lo/writeBoolNoTag;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lo/writeBoolNoTag;->onNavigationEvent:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeEnumNoTag;

    invoke-virtual {v0}, Lo/writeEnumNoTag;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
