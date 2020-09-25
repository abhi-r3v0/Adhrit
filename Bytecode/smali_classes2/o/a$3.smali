.class final Lo/a$3;
.super Lo/fe;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fe<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final synthetic extraCallback:Lo/isCancelled;


# direct methods
.method constructor <init>(Lo/isCancelled;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lo/a$3;->extraCallback:Lo/isCancelled;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/fe;-><init>(Lo/isCancelled;Lo/onCancelled;)V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lo/a$3;->extraCallback:Lo/isCancelled;

    iget-object v0, v0, Lo/isCancelled;->onMessageChannelReady:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
