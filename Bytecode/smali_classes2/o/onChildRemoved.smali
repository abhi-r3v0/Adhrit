.class public final Lo/onChildRemoved;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onChildRemoved$onMessageChannelReady;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/onChildRemoved;


# instance fields
.field public final ICustomTabsCallback$Stub:Z

.field private final ICustomTabsService:I

.field public final asBinder:I

.field public final asInterface:Z

.field public final extraCallback:Z

.field private final newSession:Z

.field public final onMessageChannelReady:Z

.field public final onNavigationEvent:Z

.field public final onPostMessage:I

.field public final onRelationshipValidationResult:I

.field public final onTransact:Z

.field private warmup:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 20
    new-instance v0, Lo/onChildRemoved$onMessageChannelReady;

    invoke-direct {v0}, Lo/onChildRemoved$onMessageChannelReady;-><init>()V

    const/4 v1, 0x1

    .line 4283
    iput-boolean v1, v0, Lo/onChildRemoved$onMessageChannelReady;->onNavigationEvent:Z

    .line 4363
    new-instance v2, Lo/onChildRemoved;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lo/onChildRemoved;-><init>(Lo/onChildRemoved$onMessageChannelReady;B)V

    .line 28
    new-instance v0, Lo/onChildRemoved$onMessageChannelReady;

    invoke-direct {v0}, Lo/onChildRemoved$onMessageChannelReady;-><init>()V

    .line 5352
    iput-boolean v1, v0, Lo/onChildRemoved$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    .line 29
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v4, 0x7fffffff

    .line 6321
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    const v1, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v1, v1

    .line 6322
    :goto_0
    iput v1, v0, Lo/onChildRemoved$onMessageChannelReady;->onPostMessage:I

    .line 6363
    new-instance v1, Lo/onChildRemoved;

    invoke-direct {v1, v0, v3}, Lo/onChildRemoved;-><init>(Lo/onChildRemoved$onMessageChannelReady;B)V

    .line 31
    sput-object v1, Lo/onChildRemoved;->ICustomTabsCallback:Lo/onChildRemoved;

    return-void
.end method

.method private constructor <init>(Lo/onChildRemoved$onMessageChannelReady;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-boolean v0, p1, Lo/onChildRemoved$onMessageChannelReady;->onNavigationEvent:Z

    iput-boolean v0, p0, Lo/onChildRemoved;->onNavigationEvent:Z

    .line 66
    iget-boolean v0, p1, Lo/onChildRemoved$onMessageChannelReady;->ICustomTabsCallback:Z

    iput-boolean v0, p0, Lo/onChildRemoved;->extraCallback:Z

    .line 67
    iget v0, p1, Lo/onChildRemoved$onMessageChannelReady;->onMessageChannelReady:I

    iput v0, p0, Lo/onChildRemoved;->onPostMessage:I

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lo/onChildRemoved;->ICustomTabsService:I

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lo/onChildRemoved;->onMessageChannelReady:Z

    .line 70
    iput-boolean v0, p0, Lo/onChildRemoved;->ICustomTabsCallback$Stub:Z

    .line 71
    iput-boolean v0, p0, Lo/onChildRemoved;->asInterface:Z

    .line 72
    iget v1, p1, Lo/onChildRemoved$onMessageChannelReady;->onPostMessage:I

    iput v1, p0, Lo/onChildRemoved;->onRelationshipValidationResult:I

    .line 73
    iget v1, p1, Lo/onChildRemoved$onMessageChannelReady;->extraCallback:I

    iput v1, p0, Lo/onChildRemoved;->asBinder:I

    .line 74
    iget-boolean p1, p1, Lo/onChildRemoved$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    iput-boolean p1, p0, Lo/onChildRemoved;->onTransact:Z

    .line 75
    iput-boolean v0, p0, Lo/onChildRemoved;->newSession:Z

    return-void
.end method

.method public synthetic constructor <init>(Lo/onChildRemoved$onMessageChannelReady;B)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lo/onChildRemoved;-><init>(Lo/onChildRemoved$onMessageChannelReady;)V

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZLjava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p1, p0, Lo/onChildRemoved;->onNavigationEvent:Z

    .line 51
    iput-boolean p2, p0, Lo/onChildRemoved;->extraCallback:Z

    .line 52
    iput p3, p0, Lo/onChildRemoved;->onPostMessage:I

    .line 53
    iput p4, p0, Lo/onChildRemoved;->ICustomTabsService:I

    .line 54
    iput-boolean p5, p0, Lo/onChildRemoved;->onMessageChannelReady:Z

    .line 55
    iput-boolean p6, p0, Lo/onChildRemoved;->ICustomTabsCallback$Stub:Z

    .line 56
    iput-boolean p7, p0, Lo/onChildRemoved;->asInterface:Z

    .line 57
    iput p8, p0, Lo/onChildRemoved;->onRelationshipValidationResult:I

    .line 58
    iput p9, p0, Lo/onChildRemoved;->asBinder:I

    .line 59
    iput-boolean p10, p0, Lo/onChildRemoved;->onTransact:Z

    .line 60
    iput-boolean p11, p0, Lo/onChildRemoved;->newSession:Z

    .line 61
    iput-object p12, p0, Lo/onChildRemoved;->warmup:Ljava/lang/String;

    return-void
.end method

.method public static onNavigationEvent(Lo/getRef;)Lo/onChildRemoved;
    .locals 22

    move-object/from16 v0, p0

    .line 1076
    iget-object v1, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_0
    if-ge v6, v1, :cond_19

    shl-int/lit8 v2, v6, 0x1

    if-ltz v2, :cond_1

    .line 1082
    iget-object v4, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v4, v4

    if-lt v2, v4, :cond_0

    goto :goto_1

    .line 1085
    :cond_0
    iget-object v4, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v4, v4, v2

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    if-ltz v2, :cond_3

    .line 1091
    iget-object v5, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v5, v5

    if-lt v2, v5, :cond_2

    goto :goto_3

    .line 1094
    :cond_2
    iget-object v5, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v2, v5, v2

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v2, 0x0

    :goto_4
    const-string v5, "Cache-Control"

    .line 171
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v8, :cond_4

    goto :goto_5

    :cond_4
    move-object v8, v2

    goto :goto_6

    :cond_5
    const-string v5, "Pragma"

    .line 178
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    :goto_5
    const/4 v7, 0x0

    :goto_6
    const/4 v4, 0x0

    .line 186
    :goto_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_18

    move v5, v4

    .line 2026
    :goto_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v5, v3, :cond_6

    .line 2027
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v0, "=,;"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_8

    .line 189
    :cond_6
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v5, v3, :cond_c

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_c

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_7

    goto :goto_b

    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 197
    invoke-static {v2, v5}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/String;I)I

    move-result v3

    .line 200
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_a

    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .line 3026
    :goto_9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 3027
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v21, v1

    const-string v1, "\""

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_9

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v21

    goto :goto_9

    :cond_8
    move/from16 v21, v1

    .line 204
    :cond_9
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_a
    move/from16 v21, v1

    move v1, v3

    .line 4026
    :goto_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 4027
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, ",;"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 211
    :cond_b
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move v4, v1

    move-object v1, v3

    goto :goto_c

    :cond_c
    :goto_b
    move/from16 v21, v1

    add-int/lit8 v5, v5, 0x1

    move v4, v5

    const/4 v1, 0x0

    :goto_c
    const-string v3, "no-cache"

    .line 215
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v9, 0x1

    :cond_d
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v21

    goto/16 :goto_7

    :cond_e
    const-string v3, "no-store"

    .line 217
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v10, 0x1

    goto :goto_d

    :cond_f
    const-string v3, "max-age"

    .line 219
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, -0x1

    .line 220
    invoke-static {v1, v3}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/String;I)I

    move-result v11

    goto :goto_d

    :cond_10
    const/4 v3, -0x1

    const-string v5, "s-maxage"

    .line 221
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 222
    invoke-static {v1, v3}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/String;I)I

    move-result v12

    goto :goto_d

    :cond_11
    const-string v3, "private"

    .line 223
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v13, 0x1

    goto :goto_d

    :cond_12
    const-string v3, "public"

    .line 225
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v14, 0x1

    goto :goto_d

    :cond_13
    const-string v3, "must-revalidate"

    .line 227
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v15, 0x1

    goto :goto_d

    :cond_14
    const-string v3, "max-stale"

    .line 229
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const v0, 0x7fffffff

    .line 230
    invoke-static {v1, v0}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/String;I)I

    move-result v16

    goto :goto_d

    :cond_15
    const-string v3, "min-fresh"

    .line 231
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, -0x1

    .line 232
    invoke-static {v1, v3}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/String;I)I

    move-result v17

    goto :goto_d

    :cond_16
    const/4 v3, -0x1

    const-string v1, "only-if-cached"

    .line 233
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v18, 0x1

    goto :goto_d

    :cond_17
    const-string v1, "no-transform"

    .line 235
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v19, 0x1

    goto :goto_d

    :cond_18
    move/from16 v21, v1

    const/4 v3, -0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    goto/16 :goto_0

    :cond_19
    if-nez v7, :cond_1a

    const/16 v20, 0x0

    goto :goto_e

    :cond_1a
    move-object/from16 v20, v8

    .line 244
    :goto_e
    new-instance v0, Lo/onChildRemoved;

    move-object v8, v0

    invoke-direct/range {v8 .. v20}, Lo/onChildRemoved;-><init>(ZZIIZZZIIZZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 249
    iget-object v0, p0, Lo/onChildRemoved;->warmup:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 4254
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4255
    iget-boolean v1, p0, Lo/onChildRemoved;->onNavigationEvent:Z

    if-eqz v1, :cond_1

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4256
    :cond_1
    iget-boolean v1, p0, Lo/onChildRemoved;->extraCallback:Z

    if-eqz v1, :cond_2

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4257
    :cond_2
    iget v1, p0, Lo/onChildRemoved;->onPostMessage:I

    const-string v2, ", "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/onChildRemoved;->onPostMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4258
    :cond_3
    iget v1, p0, Lo/onChildRemoved;->ICustomTabsService:I

    if-eq v1, v3, :cond_4

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/onChildRemoved;->ICustomTabsService:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4259
    :cond_4
    iget-boolean v1, p0, Lo/onChildRemoved;->onMessageChannelReady:Z

    if-eqz v1, :cond_5

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4260
    :cond_5
    iget-boolean v1, p0, Lo/onChildRemoved;->ICustomTabsCallback$Stub:Z

    if-eqz v1, :cond_6

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4261
    :cond_6
    iget-boolean v1, p0, Lo/onChildRemoved;->asInterface:Z

    if-eqz v1, :cond_7

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4262
    :cond_7
    iget v1, p0, Lo/onChildRemoved;->onRelationshipValidationResult:I

    if-eq v1, v3, :cond_8

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/onChildRemoved;->onRelationshipValidationResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4263
    :cond_8
    iget v1, p0, Lo/onChildRemoved;->asBinder:I

    if-eq v1, v3, :cond_9

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/onChildRemoved;->asBinder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4264
    :cond_9
    iget-boolean v1, p0, Lo/onChildRemoved;->onTransact:Z

    if-eqz v1, :cond_a

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4265
    :cond_a
    iget-boolean v1, p0, Lo/onChildRemoved;->newSession:Z

    if-eqz v1, :cond_b

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4266
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_c

    const-string v0, ""

    goto :goto_0

    .line 4267
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 4268
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_0
    iput-object v0, p0, Lo/onChildRemoved;->warmup:Ljava/lang/String;

    return-object v0
.end method
