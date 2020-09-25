.class final Lo/cu;
.super Lo/delete;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/delete<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final onPostMessage:Lo/cu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lo/cu;

    invoke-direct {v0}, Lo/cu;-><init>()V

    sput-object v0, Lo/cu;->onPostMessage:Lo/cu;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 2
    sget-object v0, Lo/fi;->onMessageChannelReady:Lo/abort;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v0, v1, v2}, Lo/delete;-><init>(Lo/abort;ILjava/util/Comparator;)V

    return-void
.end method
