.class final Lo/gp;
.super Lo/gq;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gq;"
    }
.end annotation


# instance fields
.field private final synthetic extraCallback:Lo/ex;


# direct methods
.method private constructor <init>(Lo/ex;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lo/gp;->extraCallback:Lo/ex;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/gq;-><init>(Lo/ex;Lo/eu;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/ex;Lo/eu;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lo/gp;-><init>(Lo/ex;)V

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
    new-instance v0, Lo/o$a;

    iget-object v1, p0, Lo/gp;->extraCallback:Lo/ex;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/o$a;-><init>(Lo/ex;Lo/eu;)V

    return-object v0
.end method
