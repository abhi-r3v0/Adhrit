.class final Lo/r$1;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lo/ew;

    invoke-direct {v0}, Lo/ew;-><init>()V

    sput-object v0, Lo/r$1;->extraCallback:Ljava/util/Iterator;

    .line 4
    new-instance v0, Lo/transform;

    invoke-direct {v0}, Lo/transform;-><init>()V

    sput-object v0, Lo/r$1;->onPostMessage:Ljava/lang/Iterable;

    return-void
.end method

.method static onNavigationEvent()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lo/r$1;->onPostMessage:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic onPostMessage()Ljava/util/Iterator;
    .locals 1

    .line 2
    sget-object v0, Lo/r$1;->extraCallback:Ljava/util/Iterator;

    return-object v0
.end method
