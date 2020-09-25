.class final Lo/bq;
.super Lo/bm;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/bm<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/br;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/br<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/br;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/br<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lo/br;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lo/bm;-><init>(II)V

    .line 2
    iput-object p1, p0, Lo/bq;->onNavigationEvent:Lo/br;

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lo/bq;->onNavigationEvent:Lo/br;

    invoke-virtual {v0, p1}, Lo/br;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
