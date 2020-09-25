.class public final Lo/getEnrollmentTimestamp;
.super Ljava/lang/Object;


# instance fields
.field private final extraCallback:J

.field final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/getSignInProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(JLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/getSignInProvider;",
            ">;)V"
        }
    .end annotation

    .line 3000
    invoke-direct {p0}, Lo/getEnrollmentTimestamp;-><init>()V

    iput-wide p1, p0, Lo/getEnrollmentTimestamp;->extraCallback:J

    iput-object p3, p0, Lo/getEnrollmentTimestamp;->onMessageChannelReady:Ljava/util/Map;

    return-void
.end method

.method static onMessageChannelReady(Landroid/os/Bundle;Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;Ljava/util/List;Lo/setMultiFactorSession;)Lo/getEnrollmentTimestamp;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/setMultiFactorSession;",
            ")",
            "Lo/getEnrollmentTimestamp;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "pack_names"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-static {v0, v6, v7, v8}, Lo/getSignInProvider;->ICustomTabsCallback(Landroid/os/Bundle;Ljava/lang/String;Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;Lo/setMultiFactorSession;)Lo/getSignInProvider;

    move-result-object v9

    invoke-interface {v2, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v4, v1, :cond_1

    move-object/from16 v3, p2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1000
    new-instance v15, Lo/onCodeSent;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->rint(D)D

    move-result-wide v6

    double-to-int v14, v6

    move-object v6, v15

    move-object v7, v5

    invoke-direct/range {v6 .. v14}, Lo/onCodeSent;-><init>(Ljava/lang/String;IIJJI)V

    invoke-interface {v2, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "total_bytes_to_download"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2000
    new-instance v3, Lo/getEnrollmentTimestamp;

    invoke-direct {v3, v0, v1, v2}, Lo/getEnrollmentTimestamp;-><init>(JLjava/util/Map;)V

    return-object v3
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 5000
    :cond_0
    instance-of v1, p1, Lo/getEnrollmentTimestamp;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lo/getEnrollmentTimestamp;

    iget-wide v3, p0, Lo/getEnrollmentTimestamp;->extraCallback:J

    .line 6000
    iget-wide v5, p1, Lo/getEnrollmentTimestamp;->extraCallback:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 5000
    iget-object v1, p0, Lo/getEnrollmentTimestamp;->onMessageChannelReady:Ljava/util/Map;

    .line 7000
    iget-object p1, p1, Lo/getEnrollmentTimestamp;->onMessageChannelReady:Ljava/util/Map;

    .line 5000
    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 8000
    iget-wide v0, p0, Lo/getEnrollmentTimestamp;->extraCallback:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    iget-object v0, p0, Lo/getEnrollmentTimestamp;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 4000
    iget-wide v0, p0, Lo/getEnrollmentTimestamp;->extraCallback:J

    iget-object v2, p0, Lo/getEnrollmentTimestamp;->onMessageChannelReady:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x3d

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "AssetPackStates{totalBytes="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", packStates="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
