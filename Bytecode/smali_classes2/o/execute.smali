.class final Lo/execute;
.super Lo/fe;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fe<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic onPostMessage:Lo/isCancelled;


# direct methods
.method constructor <init>(Lo/isCancelled;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lo/execute;->onPostMessage:Lo/isCancelled;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/fe;-><init>(Lo/isCancelled;Lo/onCancelled;)V

    return-void
.end method


# virtual methods
.method final synthetic ICustomTabsCallback(I)Ljava/lang/Object;
    .locals 2

    .line 3
    new-instance v0, Lo/a$c;

    iget-object v1, p0, Lo/execute;->onPostMessage:Lo/isCancelled;

    invoke-direct {v0, v1, p1}, Lo/a$c;-><init>(Lo/isCancelled;I)V

    return-object v0
.end method
