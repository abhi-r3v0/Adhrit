.class Lcom/freshchat/consumer/sdk/j/ac$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field public final iu:J

.field public final iv:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    iput-wide v0, p0, Lcom/freshchat/consumer/sdk/j/ac$d;->iu:J

    const-wide/16 p1, 0x1

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/j/ac$d;->iv:J

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/j/ac$d;->iu:J

    iput-wide p3, p0, Lcom/freshchat/consumer/sdk/j/ac$d;->iv:J

    return-void
.end method

.method synthetic constructor <init>(JJLcom/freshchat/consumer/sdk/j/ac$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/freshchat/consumer/sdk/j/ac$d;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public eL()D
    .locals 4

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/j/ac$d;->iu:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/j/ac$d;->iv:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/j/ac$d;->iu:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/j/ac$d;->iv:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
