.class final Lo/nextRequestNumber;
.super Lo/getMaxEntry;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/nextRequestNumber$onNavigationEvent;,
        Lo/nextRequestNumber$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final asInterface:Lo/updatePriority;


# instance fields
.field final ICustomTabsCallback:Lo/nextRequestNumber$onNavigationEvent;

.field private ICustomTabsCallback$Stub:Ljava/lang/String;

.field asBinder:Z

.field extraCallback:Ljava/lang/Object;

.field private final getInterfaceDescriptor:Lo/nextRequestNumber$onMessageChannelReady;

.field volatile onMessageChannelReady:I

.field final onNavigationEvent:Lo/reverseIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/reverseIterator<",
            "**>;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:Ljava/lang/String;

.field private final onTransact:Lo/restoreAuth;

.field private final warmup:Lo/serverCacheEstimatedSizeInBytes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lo/updatePriority;

    invoke-direct {v0}, Lo/updatePriority;-><init>()V

    sput-object v0, Lo/nextRequestNumber;->asInterface:Lo/updatePriority;

    return-void
.end method

.method constructor <init>(Lo/reverseIterator;Lo/getPredecessorKey;Lo/sendListen;Lo/sendSensitive;Lo/access$1308;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Lo/restoreAuth;Lo/putInternal;Lo/deleteTrackedQuery;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/reverseIterator<",
            "**>;",
            "Lo/getPredecessorKey;",
            "Lo/sendListen;",
            "Lo/sendSensitive;",
            "Lo/access$1308;",
            "Ljava/lang/Object;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/restoreAuth;",
            "Lo/putInternal;",
            "Lo/deleteTrackedQuery;",
            "Z)V"
        }
    .end annotation

    move-object v10, p0

    move-object v7, p1

    .line 79
    new-instance v1, Lo/verifyCache$onPostMessage;

    invoke-direct {v1}, Lo/verifyCache$onPostMessage;-><init>()V

    const/4 v8, 0x0

    if-eqz p14, :cond_0

    .line 1364
    iget-boolean v0, v7, Lo/reverseIterator;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move-object v0, p0

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object v4, p2

    move-object/from16 v5, p13

    .line 79
    invoke-direct/range {v0 .. v6}, Lo/getMaxEntry;-><init>(Lo/restoreState;Lo/restoreAuth;Lo/putInternal;Lo/getPredecessorKey;Lo/deleteTrackedQuery;Z)V

    const/4 v0, -0x1

    .line 57
    iput v0, v10, Lo/nextRequestNumber;->onMessageChannelReady:I

    .line 59
    new-instance v0, Lo/nextRequestNumber$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/nextRequestNumber$onMessageChannelReady;-><init>(Lo/nextRequestNumber;)V

    iput-object v0, v10, Lo/nextRequestNumber;->getInterfaceDescriptor:Lo/nextRequestNumber$onMessageChannelReady;

    .line 62
    iput-boolean v8, v10, Lo/nextRequestNumber;->asBinder:Z

    if-eqz p11, :cond_1

    .line 86
    move-object/from16 v0, p11

    check-cast v0, Lo/restoreAuth;

    iput-object v0, v10, Lo/nextRequestNumber;->onTransact:Lo/restoreAuth;

    .line 87
    iput-object v7, v10, Lo/nextRequestNumber;->onNavigationEvent:Lo/reverseIterator;

    move-object/from16 v0, p9

    .line 88
    iput-object v0, v10, Lo/nextRequestNumber;->ICustomTabsCallback$Stub:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 89
    iput-object v0, v10, Lo/nextRequestNumber;->onRelationshipValidationResult:Ljava/lang/String;

    move-object/from16 v8, p4

    .line 2822
    iget-object v0, v8, Lo/sendSensitive;->extraCallback:Lo/serverCacheEstimatedSizeInBytes;

    .line 93
    iput-object v0, v10, Lo/nextRequestNumber;->warmup:Lo/serverCacheEstimatedSizeInBytes;

    .line 94
    new-instance v11, Lo/nextRequestNumber$onNavigationEvent;

    .line 3253
    iget-object v9, v7, Lo/reverseIterator;->extraCallback:Ljava/lang/String;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p7

    move-object/from16 v3, p11

    move-object/from16 v4, p6

    move-object v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move/from16 v8, p8

    .line 103
    invoke-direct/range {v0 .. v9}, Lo/nextRequestNumber$onNavigationEvent;-><init>(Lo/nextRequestNumber;ILo/restoreAuth;Ljava/lang/Object;Lo/sendListen;Lo/access$1308;Lo/sendSensitive;ILjava/lang/String;)V

    iput-object v11, v10, Lo/nextRequestNumber;->ICustomTabsCallback:Lo/nextRequestNumber$onNavigationEvent;

    return-void

    .line 1910
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "statsTraceCtx"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic ICustomTabsCallback(Lo/nextRequestNumber;)Lo/reverseIterator;
    .locals 0

    .line 45
    iget-object p0, p0, Lo/nextRequestNumber;->onNavigationEvent:Lo/reverseIterator;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/nextRequestNumber;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lo/nextRequestNumber;->onRelationshipValidationResult:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic asBinder(Lo/nextRequestNumber;)Lo/restoreAuth;
    .locals 0

    .line 45
    iget-object p0, p0, Lo/nextRequestNumber;->onTransact:Lo/restoreAuth;

    return-object p0
.end method

.method static synthetic asInterface(Lo/nextRequestNumber;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lo/nextRequestNumber;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/nextRequestNumber;)Lo/nextRequestNumber$onNavigationEvent;
    .locals 0

    .line 45
    iget-object p0, p0, Lo/nextRequestNumber;->ICustomTabsCallback:Lo/nextRequestNumber$onNavigationEvent;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/nextRequestNumber;I)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lo/getLeft;->onPostMessage(I)V

    return-void
.end method

.method static synthetic getInterfaceDescriptor()Lo/updatePriority;
    .locals 1

    .line 45
    sget-object v0, Lo/nextRequestNumber;->asInterface:Lo/updatePriority;

    return-object v0
.end method

.method static synthetic onMessageChannelReady(Lo/nextRequestNumber;)Lo/putInternal;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lo/getMaxEntry;->onTransact()Lo/putInternal;

    move-result-object p0

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/nextRequestNumber;I)I
    .locals 0

    .line 45
    iput p1, p0, Lo/nextRequestNumber;->onMessageChannelReady:I

    return p1
.end method

.method static synthetic onNavigationEvent(Lo/nextRequestNumber;)Lo/putInternal;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lo/getMaxEntry;->onTransact()Lo/putInternal;

    move-result-object p0

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/nextRequestNumber;)Z
    .locals 1

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lo/nextRequestNumber;->asBinder:Z

    return v0
.end method

.method static synthetic onRelationshipValidationResult(Lo/nextRequestNumber;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lo/nextRequestNumber;->asBinder:Z

    return p0
.end method

.method static synthetic onTransact(Lo/nextRequestNumber;)I
    .locals 0

    .line 45
    iget p0, p0, Lo/nextRequestNumber;->onMessageChannelReady:I

    return p0
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback()Lo/getMaxEntry$onPostMessage;
    .locals 1

    .line 5108
    iget-object v0, p0, Lo/nextRequestNumber;->ICustomTabsCallback:Lo/nextRequestNumber$onNavigationEvent;

    return-object v0
.end method

.method public final V_()Lo/serverCacheEstimatedSizeInBytes;
    .locals 1

    .line 142
    iget-object v0, p0, Lo/nextRequestNumber;->warmup:Lo/serverCacheEstimatedSizeInBytes;

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 137
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/nextRequestNumber;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-void

    .line 3910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "authority"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic onNavigationEvent()Lo/getMaxEntry$onMessageChannelReady;
    .locals 1

    .line 4113
    iget-object v0, p0, Lo/nextRequestNumber;->getInterfaceDescriptor:Lo/nextRequestNumber$onMessageChannelReady;

    return-object v0
.end method

.method public final bridge synthetic onRelationshipValidationResult()Lo/getLeft$onPostMessage;
    .locals 1

    .line 6108
    iget-object v0, p0, Lo/nextRequestNumber;->ICustomTabsCallback:Lo/nextRequestNumber$onNavigationEvent;

    return-object v0
.end method
