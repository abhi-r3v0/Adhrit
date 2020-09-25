.class final Lo/fv;
.super Lo/a$c$1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/a$c$1<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic extraCallback:Lo/fp;


# direct methods
.method constructor <init>(Lo/fp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/fv;->extraCallback:Lo/fp;

    invoke-direct {p0}, Lo/a$c$1;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    .line 5
    iget-object v0, p0, Lo/fv;->extraCallback:Lo/fp;

    invoke-static {v0}, Lo/fp;->ICustomTabsCallback(Lo/fp;)I

    move-result v0

    invoke-static {p1, v0}, Lo/dq;->onMessageChannelReady(II)I

    .line 6
    iget-object v0, p0, Lo/fv;->extraCallback:Lo/fp;

    invoke-static {v0}, Lo/fp;->onNavigationEvent(Lo/fp;)[Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    .line 7
    aget-object v0, v0, p1

    .line 8
    iget-object v1, p0, Lo/fv;->extraCallback:Lo/fp;

    invoke-static {v1}, Lo/fp;->onNavigationEvent(Lo/fp;)[Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    .line 9
    aget-object p1, v1, p1

    .line 10
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final onRelationshipValidationResult()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    .line 2
    iget-object v0, p0, Lo/fv;->extraCallback:Lo/fp;

    invoke-static {v0}, Lo/fp;->ICustomTabsCallback(Lo/fp;)I

    move-result v0

    return v0
.end method
