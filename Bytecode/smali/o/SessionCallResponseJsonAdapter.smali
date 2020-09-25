.class public final Lo/SessionCallResponseJsonAdapter;
.super Lo/ShortCircuitInfoJsonAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final ICustomTabsCallback$Stub:I

.field public final ICustomTabsCallback$Stub$Proxy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final asBinder:J

.field public final asInterface:Z

.field public final extraCallback:J

.field public final getInterfaceDescriptor:Lo/generateLink;

.field public final newSession:J

.field public final onMessageChannelReady:J

.field public final onNavigationEvent:Z

.field public final onPostMessage:I

.field public final onRelationshipValidationResult:J

.field public final onTransact:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLo/generateLink;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJZIJIJZZZ",
            "Lo/generateLink;",
            "Ljava/util/List<",
            "Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p15

    .line 268
    invoke-direct {p0, p2, p3, v3}, Lo/ShortCircuitInfoJsonAdapter;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    move v1, p1

    .line 269
    iput v1, v0, Lo/SessionCallResponseJsonAdapter;->onPostMessage:I

    move-wide v1, p6

    .line 270
    iput-wide v1, v0, Lo/SessionCallResponseJsonAdapter;->onMessageChannelReady:J

    move/from16 v1, p8

    .line 271
    iput-boolean v1, v0, Lo/SessionCallResponseJsonAdapter;->onNavigationEvent:Z

    move/from16 v1, p9

    .line 272
    iput v1, v0, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback:I

    move-wide/from16 v1, p10

    .line 273
    iput-wide v1, v0, Lo/SessionCallResponseJsonAdapter;->asBinder:J

    move/from16 v1, p12

    .line 274
    iput v1, v0, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback$Stub:I

    move-wide/from16 v1, p13

    .line 275
    iput-wide v1, v0, Lo/SessionCallResponseJsonAdapter;->onRelationshipValidationResult:J

    move/from16 v1, p16

    .line 276
    iput-boolean v1, v0, Lo/SessionCallResponseJsonAdapter;->onTransact:Z

    move/from16 v1, p17

    .line 277
    iput-boolean v1, v0, Lo/SessionCallResponseJsonAdapter;->asInterface:Z

    move-object/from16 v1, p18

    .line 278
    iput-object v1, v0, Lo/SessionCallResponseJsonAdapter;->getInterfaceDescriptor:Lo/generateLink;

    .line 279
    invoke-static/range {p19 .. p19}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    .line 280
    invoke-interface/range {p19 .. p19}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 281
    invoke-interface/range {p19 .. p19}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v4, p19

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;

    .line 282
    iget-wide v4, v1, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onTransact:J

    iget-wide v6, v1, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onPostMessage:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Lo/SessionCallResponseJsonAdapter;->newSession:J

    goto :goto_0

    .line 284
    :cond_0
    iput-wide v2, v0, Lo/SessionCallResponseJsonAdapter;->newSession:J

    :goto_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p4, v4

    if-nez v1, :cond_1

    move-wide v1, v4

    goto :goto_1

    :cond_1
    cmp-long v1, p4, v2

    if-ltz v1, :cond_2

    move-wide v1, p4

    goto :goto_1

    .line 286
    :cond_2
    iget-wide v1, v0, Lo/SessionCallResponseJsonAdapter;->newSession:J

    add-long/2addr v1, p4

    :goto_1
    iput-wide v1, v0, Lo/SessionCallResponseJsonAdapter;->extraCallback:J

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(JI)Lo/SessionCallResponseJsonAdapter;
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move/from16 v10, p3

    .line 332
    new-instance v21, Lo/SessionCallResponseJsonAdapter;

    move-object/from16 v1, v21

    iget v2, v0, Lo/SessionCallResponseJsonAdapter;->onPostMessage:I

    iget-object v3, v0, Lo/ShortCircuitInfoJsonAdapter;->warmup:Ljava/lang/String;

    iget-object v4, v0, Lo/ShortCircuitInfoJsonAdapter;->mayLaunchUrl:Ljava/util/List;

    iget-wide v5, v0, Lo/SessionCallResponseJsonAdapter;->extraCallback:J

    iget-wide v11, v0, Lo/SessionCallResponseJsonAdapter;->asBinder:J

    iget v13, v0, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback$Stub:I

    iget-wide v14, v0, Lo/SessionCallResponseJsonAdapter;->onRelationshipValidationResult:J

    iget-boolean v9, v0, Lo/ShortCircuitInfoJsonAdapter;->updateVisuals:Z

    move/from16 v16, v9

    iget-boolean v9, v0, Lo/SessionCallResponseJsonAdapter;->onTransact:Z

    move/from16 v17, v9

    iget-boolean v9, v0, Lo/SessionCallResponseJsonAdapter;->asInterface:Z

    move/from16 v18, v9

    iget-object v9, v0, Lo/SessionCallResponseJsonAdapter;->getInterfaceDescriptor:Lo/generateLink;

    move-object/from16 v19, v9

    iget-object v9, v0, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    move-object/from16 v20, v9

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v20}, Lo/SessionCallResponseJsonAdapter;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLo/generateLink;Ljava/util/List;)V

    return-object v21
.end method

.method public final onMessageChannelReady()J
    .locals 4

    .line 319
    iget-wide v0, p0, Lo/SessionCallResponseJsonAdapter;->onMessageChannelReady:J

    iget-wide v2, p0, Lo/SessionCallResponseJsonAdapter;->newSession:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final synthetic onNavigationEvent(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/SessionCallResponseJsonAdapter;->onPostMessage(Ljava/util/List;)Lo/SessionCallResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent()Lo/SessionCallResponseJsonAdapter;
    .locals 24

    move-object/from16 v0, p0

    .line 355
    iget-boolean v1, v0, Lo/SessionCallResponseJsonAdapter;->onTransact:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 358
    :cond_0
    new-instance v1, Lo/SessionCallResponseJsonAdapter;

    move-object v2, v1

    iget v3, v0, Lo/SessionCallResponseJsonAdapter;->onPostMessage:I

    iget-object v4, v0, Lo/ShortCircuitInfoJsonAdapter;->warmup:Ljava/lang/String;

    iget-object v5, v0, Lo/ShortCircuitInfoJsonAdapter;->mayLaunchUrl:Ljava/util/List;

    iget-wide v6, v0, Lo/SessionCallResponseJsonAdapter;->extraCallback:J

    iget-wide v8, v0, Lo/SessionCallResponseJsonAdapter;->onMessageChannelReady:J

    iget-boolean v10, v0, Lo/SessionCallResponseJsonAdapter;->onNavigationEvent:Z

    iget v11, v0, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback:I

    iget-wide v12, v0, Lo/SessionCallResponseJsonAdapter;->asBinder:J

    iget v14, v0, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback$Stub:I

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    iget-wide v1, v0, Lo/SessionCallResponseJsonAdapter;->onRelationshipValidationResult:J

    move-wide v15, v1

    iget-boolean v1, v0, Lo/ShortCircuitInfoJsonAdapter;->updateVisuals:Z

    move/from16 v17, v1

    const/16 v18, 0x1

    iget-boolean v1, v0, Lo/SessionCallResponseJsonAdapter;->asInterface:Z

    move/from16 v19, v1

    iget-object v1, v0, Lo/SessionCallResponseJsonAdapter;->getInterfaceDescriptor:Lo/generateLink;

    move-object/from16 v20, v1

    iget-object v1, v0, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    move-object/from16 v21, v1

    move-object/from16 v2, v23

    invoke-direct/range {v2 .. v21}, Lo/SessionCallResponseJsonAdapter;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLo/generateLink;Ljava/util/List;)V

    return-object v22
.end method

.method public final onPostMessage(Ljava/util/List;)Lo/SessionCallResponseJsonAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getInBitmapString;",
            ">;)",
            "Lo/SessionCallResponseJsonAdapter;"
        }
    .end annotation

    return-object p0
.end method

.method public final onPostMessage(Lo/SessionCallResponseJsonAdapter;)Z
    .locals 7

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 302
    iget-wide v1, p0, Lo/SessionCallResponseJsonAdapter;->asBinder:J

    iget-wide v3, p1, Lo/SessionCallResponseJsonAdapter;->asBinder:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-gez v6, :cond_1

    return v5

    .line 309
    :cond_1
    iget-object v1, p0, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 310
    iget-object v2, p1, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_3

    if-ne v1, v2, :cond_2

    .line 311
    iget-boolean v1, p0, Lo/SessionCallResponseJsonAdapter;->onTransact:Z

    if-eqz v1, :cond_2

    iget-boolean p1, p1, Lo/SessionCallResponseJsonAdapter;->onTransact:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return v5

    :cond_3
    :goto_0
    return v0
.end method
