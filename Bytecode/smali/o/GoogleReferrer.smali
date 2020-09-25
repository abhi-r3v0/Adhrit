.class final Lo/GoogleReferrer;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback$Stub$Proxy:Lo/InstrumentsCompleteJsonAdapter$extraCallback;


# instance fields
.field public final ICustomTabsCallback:Lo/t;

.field public final ICustomTabsCallback$Stub:Lo/JuspaySessionToken;

.field public volatile ICustomTabsService:J

.field public final asBinder:Z

.field public final asInterface:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

.field public final extraCallback:Ljava/lang/Object;

.field public volatile getInterfaceDescriptor:J

.field public final onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

.field public final onNavigationEvent:J

.field public final onPostMessage:J

.field public final onRelationshipValidationResult:Lo/OfferJsonAdapter;

.field public final onTransact:I

.field public volatile warmup:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lo/GoogleReferrer;->ICustomTabsCallback$Stub$Proxy:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    return-void
.end method

.method public constructor <init>(Lo/t;Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJIZLo/JuspaySessionToken;Lo/OfferJsonAdapter;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)V
    .locals 3

    move-object v0, p0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 140
    iput-object v1, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    move-object v1, p2

    .line 141
    iput-object v1, v0, Lo/GoogleReferrer;->extraCallback:Ljava/lang/Object;

    move-object v1, p3

    .line 142
    iput-object v1, v0, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-wide v1, p4

    .line 143
    iput-wide v1, v0, Lo/GoogleReferrer;->onPostMessage:J

    move-wide v1, p6

    .line 144
    iput-wide v1, v0, Lo/GoogleReferrer;->onNavigationEvent:J

    move v1, p8

    .line 145
    iput v1, v0, Lo/GoogleReferrer;->onTransact:I

    move v1, p9

    .line 146
    iput-boolean v1, v0, Lo/GoogleReferrer;->asBinder:Z

    move-object v1, p10

    .line 147
    iput-object v1, v0, Lo/GoogleReferrer;->ICustomTabsCallback$Stub:Lo/JuspaySessionToken;

    move-object v1, p11

    .line 148
    iput-object v1, v0, Lo/GoogleReferrer;->onRelationshipValidationResult:Lo/OfferJsonAdapter;

    move-object v1, p12

    .line 149
    iput-object v1, v0, Lo/GoogleReferrer;->asInterface:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-wide/from16 v1, p13

    .line 150
    iput-wide v1, v0, Lo/GoogleReferrer;->warmup:J

    move-wide/from16 v1, p15

    .line 151
    iput-wide v1, v0, Lo/GoogleReferrer;->ICustomTabsService:J

    move-wide/from16 v1, p17

    .line 152
    iput-wide v1, v0, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    return-void
.end method

.method public static extraCallback(JLo/OfferJsonAdapter;)Lo/GoogleReferrer;
    .locals 20

    move-wide/from16 v4, p0

    move-wide/from16 v13, p0

    move-wide/from16 v17, p0

    move-object/from16 v11, p2

    .line 93
    new-instance v19, Lo/GoogleReferrer;

    move-object/from16 v0, v19

    sget-object v1, Lo/t;->extraCallback:Lo/t;

    sget-object v3, Lo/GoogleReferrer;->ICustomTabsCallback$Stub$Proxy:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    sget-object v10, Lo/JuspaySessionToken;->onPostMessage:Lo/JuspaySessionToken;

    sget-object v12, Lo/GoogleReferrer;->ICustomTabsCallback$Stub$Proxy:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    const/4 v2, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v15, 0x0

    invoke-direct/range {v0 .. v18}, Lo/GoogleReferrer;-><init>(Lo/t;Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJIZLo/JuspaySessionToken;Lo/OfferJsonAdapter;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)V

    return-object v19
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Lo/GoogleReferrer;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v9, p1

    .line 266
    new-instance v20, Lo/GoogleReferrer;

    move-object/from16 v1, v20

    iget-object v2, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    iget-object v3, v0, Lo/GoogleReferrer;->extraCallback:Ljava/lang/Object;

    iget-object v4, v0, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v5, v0, Lo/GoogleReferrer;->onPostMessage:J

    iget-wide v7, v0, Lo/GoogleReferrer;->onNavigationEvent:J

    iget-boolean v10, v0, Lo/GoogleReferrer;->asBinder:Z

    iget-object v11, v0, Lo/GoogleReferrer;->ICustomTabsCallback$Stub:Lo/JuspaySessionToken;

    iget-object v12, v0, Lo/GoogleReferrer;->onRelationshipValidationResult:Lo/OfferJsonAdapter;

    iget-object v13, v0, Lo/GoogleReferrer;->asInterface:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v14, v0, Lo/GoogleReferrer;->warmup:J

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lo/GoogleReferrer;->ICustomTabsService:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Lo/GoogleReferrer;-><init>(Lo/t;Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJIZLo/JuspaySessionToken;Lo/OfferJsonAdapter;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)V

    return-object v20
.end method

.method public final ICustomTabsCallback(Lo/t;Ljava/lang/Object;)Lo/GoogleReferrer;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 242
    new-instance v20, Lo/GoogleReferrer;

    move-object/from16 v1, v20

    iget-object v4, v0, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v5, v0, Lo/GoogleReferrer;->onPostMessage:J

    iget-wide v7, v0, Lo/GoogleReferrer;->onNavigationEvent:J

    iget v9, v0, Lo/GoogleReferrer;->onTransact:I

    iget-boolean v10, v0, Lo/GoogleReferrer;->asBinder:Z

    iget-object v11, v0, Lo/GoogleReferrer;->ICustomTabsCallback$Stub:Lo/JuspaySessionToken;

    iget-object v12, v0, Lo/GoogleReferrer;->onRelationshipValidationResult:Lo/OfferJsonAdapter;

    iget-object v13, v0, Lo/GoogleReferrer;->asInterface:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v14, v0, Lo/GoogleReferrer;->warmup:J

    move-object/from16 p2, v1

    iget-wide v1, v0, Lo/GoogleReferrer;->ICustomTabsService:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    move-wide/from16 v18, v1

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    invoke-direct/range {v1 .. v19}, Lo/GoogleReferrer;-><init>(Lo/t;Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJIZLo/JuspaySessionToken;Lo/OfferJsonAdapter;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)V

    return-object v20
.end method

.method public final extraCallback(Z)Lo/GoogleReferrer;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v10, p1

    .line 290
    new-instance v20, Lo/GoogleReferrer;

    move-object/from16 v1, v20

    iget-object v2, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    iget-object v3, v0, Lo/GoogleReferrer;->extraCallback:Ljava/lang/Object;

    iget-object v4, v0, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v5, v0, Lo/GoogleReferrer;->onPostMessage:J

    iget-wide v7, v0, Lo/GoogleReferrer;->onNavigationEvent:J

    iget v9, v0, Lo/GoogleReferrer;->onTransact:I

    iget-object v11, v0, Lo/GoogleReferrer;->ICustomTabsCallback$Stub:Lo/JuspaySessionToken;

    iget-object v12, v0, Lo/GoogleReferrer;->onRelationshipValidationResult:Lo/OfferJsonAdapter;

    iget-object v13, v0, Lo/GoogleReferrer;->asInterface:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v14, v0, Lo/GoogleReferrer;->warmup:J

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lo/GoogleReferrer;->ICustomTabsService:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Lo/GoogleReferrer;-><init>(Lo/t;Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJIZLo/JuspaySessionToken;Lo/OfferJsonAdapter;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)V

    return-object v20
.end method

.method public final extraCallback(ZLo/t$onMessageChannelReady;)Lo/InstrumentsCompleteJsonAdapter$extraCallback;
    .locals 1

    .line 164
    iget-object v0, p0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    invoke-virtual {v0}, Lo/t;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    sget-object p1, Lo/GoogleReferrer;->ICustomTabsCallback$Stub$Proxy:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    return-object p1

    .line 167
    :cond_0
    iget-object v0, p0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    .line 168
    invoke-virtual {v0, p1}, Lo/t;->extraCallback(Z)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    move-result-object p1

    iget p1, p1, Lo/t$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    .line 170
    new-instance p2, Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object v0, p0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    invoke-virtual {v0, p1}, Lo/t;->ICustomTabsCallback(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public final onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJ)Lo/GoogleReferrer;
    .locals 21

    move-object/from16 v0, p0

    .line 185
    new-instance v20, Lo/GoogleReferrer;

    iget-object v2, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    iget-object v3, v0, Lo/GoogleReferrer;->extraCallback:Ljava/lang/Object;

    .line 190
    invoke-virtual/range {p1 .. p1}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide/from16 v7, p4

    goto :goto_0

    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v4

    :goto_0
    iget v9, v0, Lo/GoogleReferrer;->onTransact:I

    iget-boolean v10, v0, Lo/GoogleReferrer;->asBinder:Z

    iget-object v11, v0, Lo/GoogleReferrer;->ICustomTabsCallback$Stub:Lo/JuspaySessionToken;

    iget-object v12, v0, Lo/GoogleReferrer;->onRelationshipValidationResult:Lo/OfferJsonAdapter;

    const-wide/16 v16, 0x0

    move-object/from16 v1, v20

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v13, p1

    move-wide/from16 v14, p2

    move-wide/from16 v18, p2

    invoke-direct/range {v1 .. v19}, Lo/GoogleReferrer;-><init>(Lo/t;Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJIZLo/JuspaySessionToken;Lo/OfferJsonAdapter;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)V

    return-object v20
.end method

.method public final onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)Lo/GoogleReferrer;
    .locals 21

    move-object/from16 v0, p0

    .line 217
    new-instance v20, Lo/GoogleReferrer;

    iget-object v2, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    iget-object v3, v0, Lo/GoogleReferrer;->extraCallback:Ljava/lang/Object;

    .line 222
    invoke-virtual/range {p1 .. p1}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide/from16 v7, p4

    goto :goto_0

    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v4

    :goto_0
    iget v9, v0, Lo/GoogleReferrer;->onTransact:I

    iget-boolean v10, v0, Lo/GoogleReferrer;->asBinder:Z

    iget-object v11, v0, Lo/GoogleReferrer;->ICustomTabsCallback$Stub:Lo/JuspaySessionToken;

    iget-object v12, v0, Lo/GoogleReferrer;->onRelationshipValidationResult:Lo/OfferJsonAdapter;

    iget-object v13, v0, Lo/GoogleReferrer;->asInterface:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v14, v0, Lo/GoogleReferrer;->warmup:J

    move-object/from16 v1, v20

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v16, p6

    move-wide/from16 v18, p2

    invoke-direct/range {v1 .. v19}, Lo/GoogleReferrer;-><init>(Lo/t;Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJIZLo/JuspaySessionToken;Lo/OfferJsonAdapter;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)V

    return-object v20
.end method

.method public final onMessageChannelReady(Lo/JuspaySessionToken;Lo/OfferJsonAdapter;)Lo/GoogleReferrer;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 316
    new-instance v20, Lo/GoogleReferrer;

    move-object/from16 v1, v20

    iget-object v2, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    iget-object v3, v0, Lo/GoogleReferrer;->extraCallback:Ljava/lang/Object;

    iget-object v4, v0, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v5, v0, Lo/GoogleReferrer;->onPostMessage:J

    iget-wide v7, v0, Lo/GoogleReferrer;->onNavigationEvent:J

    iget v9, v0, Lo/GoogleReferrer;->onTransact:I

    iget-boolean v10, v0, Lo/GoogleReferrer;->asBinder:Z

    iget-object v13, v0, Lo/GoogleReferrer;->asInterface:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v14, v0, Lo/GoogleReferrer;->warmup:J

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lo/GoogleReferrer;->ICustomTabsService:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v19}, Lo/GoogleReferrer;-><init>(Lo/t;Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJIZLo/JuspaySessionToken;Lo/OfferJsonAdapter;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)V

    return-object v20
.end method

.method public final onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/GoogleReferrer;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 340
    new-instance v20, Lo/GoogleReferrer;

    move-object/from16 v1, v20

    iget-object v2, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    iget-object v3, v0, Lo/GoogleReferrer;->extraCallback:Ljava/lang/Object;

    iget-object v4, v0, Lo/GoogleReferrer;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v5, v0, Lo/GoogleReferrer;->onPostMessage:J

    iget-wide v7, v0, Lo/GoogleReferrer;->onNavigationEvent:J

    iget v9, v0, Lo/GoogleReferrer;->onTransact:I

    iget-boolean v10, v0, Lo/GoogleReferrer;->asBinder:Z

    iget-object v11, v0, Lo/GoogleReferrer;->ICustomTabsCallback$Stub:Lo/JuspaySessionToken;

    iget-object v12, v0, Lo/GoogleReferrer;->onRelationshipValidationResult:Lo/OfferJsonAdapter;

    iget-wide v14, v0, Lo/GoogleReferrer;->warmup:J

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lo/GoogleReferrer;->ICustomTabsService:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lo/GoogleReferrer;->getInterfaceDescriptor:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Lo/GoogleReferrer;-><init>(Lo/t;Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJIZLo/JuspaySessionToken;Lo/OfferJsonAdapter;Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)V

    return-object v20
.end method
