.class final Lo/ay;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onMessageChannelReady:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lo/onScrollChanged;

    invoke-direct {v0}, Lo/onScrollChanged;-><init>()V

    sput-object v0, Lo/ay;->onPostMessage:Ljava/util/Iterator;

    .line 4
    new-instance v0, Lo/gs;

    invoke-direct {v0}, Lo/gs;-><init>()V

    sput-object v0, Lo/ay;->onMessageChannelReady:Ljava/lang/Iterable;

    return-void
.end method

.method static extraCallback()Ljava/lang/Iterable;
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
    sget-object v0, Lo/ay;->onMessageChannelReady:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic onNavigationEvent()Ljava/util/Iterator;
    .locals 1

    .line 2
    sget-object v0, Lo/ay;->onPostMessage:Ljava/util/Iterator;

    return-object v0
.end method
