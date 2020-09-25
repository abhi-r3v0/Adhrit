.class Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/hypersdk/core/LogPusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueueFileIterableJsonWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private originalIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper;->originalIterable:Ljava/lang/Iterable;

    return-void
.end method

.method static synthetic access$200(Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper;)Ljava/lang/Iterable;
    .locals 0

    iget-object p0, p0, Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper;->originalIterable:Ljava/lang/Iterable;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper$1;

    invoke-direct {v0, p0}, Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper$1;-><init>(Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper;)V

    return-object v0
.end method
