.class public final Lo/getDefault_value;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/EmiScreenResponse;

.field private final extraCallback:Lo/EmiScreenResponse_ItemDetailsJsonAdapter;

.field private final onMessageChannelReady:[B

.field private final onNavigationEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;[BLo/EmiScreenResponse;Lo/EmiScreenResponse_ItemDetailsJsonAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;[B",
            "Lo/EmiScreenResponse;",
            "Lo/EmiScreenResponse_ItemDetailsJsonAdapter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getDefault_value;->onNavigationEvent:Ljava/lang/Object;

    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lo/getDefault_value;->onMessageChannelReady:[B

    iput-object p3, p0, Lo/getDefault_value;->ICustomTabsCallback:Lo/EmiScreenResponse;

    iput-object p4, p0, Lo/getDefault_value;->extraCallback:Lo/EmiScreenResponse_ItemDetailsJsonAdapter;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()[B
    .locals 2

    iget-object v0, p0, Lo/getDefault_value;->onMessageChannelReady:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    iget-object v0, p0, Lo/getDefault_value;->onNavigationEvent:Ljava/lang/Object;

    return-object v0
.end method
