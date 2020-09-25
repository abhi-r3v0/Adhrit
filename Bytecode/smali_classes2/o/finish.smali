.class final Lo/finish;
.super Lo/aA;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aA;"
    }
.end annotation


# instance fields
.field private final synthetic onNavigationEvent:Lo/B;


# direct methods
.method private constructor <init>(Lo/B;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lo/finish;->onNavigationEvent:Lo/B;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/aA;-><init>(Lo/B;Lo/freshchatOnClickProxy;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/B;Lo/freshchatOnClickProxy;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lo/finish;-><init>(Lo/B;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lo/aL;

    iget-object v1, p0, Lo/finish;->onNavigationEvent:Lo/B;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/aL;-><init>(Lo/B;Lo/freshchatOnClickProxy;)V

    return-object v0
.end method
