.class final Lo/SectionsResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/TimerDataJsonAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/StoreSlabJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lo/TimerDataJsonAdapter;

    check-cast p2, Lo/TimerDataJsonAdapter;

    iget v0, p1, Lo/TimerDataJsonAdapter;->onNavigationEvent:I

    iget v1, p2, Lo/TimerDataJsonAdapter;->onNavigationEvent:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-wide v0, p1, Lo/TimerDataJsonAdapter;->onMessageChannelReady:J

    iget-wide p1, p2, Lo/TimerDataJsonAdapter;->onMessageChannelReady:J

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method
