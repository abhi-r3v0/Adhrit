.class final Lo/ff;
.super Lo/c$2;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/c$2<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/a$c$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a$c$1<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/a$c$1;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a$c$1<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lo/a$c$1;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lo/c$2;-><init>(II)V

    .line 2
    iput-object p1, p0, Lo/ff;->onMessageChannelReady:Lo/a$c$1;

    return-void
.end method


# virtual methods
.method protected final onPostMessage(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lo/ff;->onMessageChannelReady:Lo/a$c$1;

    invoke-virtual {v0, p1}, Lo/a$c$1;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
