.class public Lo/delete;
.super Lo/b$a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/b$a$a<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient onMessageChannelReady:Lo/fj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fj<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/abort;ILjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/abort<",
            "TK;",
            "Lo/fj<",
            "TV;>;>;I",
            "Ljava/util/Comparator<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lo/b$a$a;-><init>(Lo/abort;I)V

    .line 3
    sget-object p1, Lo/fy;->ICustomTabsCallback:Lo/fy;

    .line 4
    iput-object p1, p0, Lo/delete;->onMessageChannelReady:Lo/fj;

    return-void
.end method
