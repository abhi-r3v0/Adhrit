.class public final Lo/PayResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/component6;
.implements Lo/getDate;


# instance fields
.field private final ICustomTabsCallback:Lo/PayRequest;

.field private ICustomTabsCallback$Stub:Landroid/graphics/SurfaceTexture;

.field private ICustomTabsCallback$Stub$Proxy:[B

.field private ICustomTabsService:I

.field private final asBinder:[F

.field private asInterface:I

.field private final extraCallback:Lo/getBonusPoints;

.field private volatile getInterfaceDescriptor:I

.field private final onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final onNavigationEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final onPostMessage:Lo/AuthRequestClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AuthRequestClass<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:[F

.field private final onTransact:Lo/AuthRequestClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AuthRequestClass<",
            "Lo/getRewardPoints;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lo/PayResponse;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/PayResponse;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v0, Lo/PayRequest;

    invoke-direct {v0}, Lo/PayRequest;-><init>()V

    iput-object v0, p0, Lo/PayResponse;->ICustomTabsCallback:Lo/PayRequest;

    .line 65
    new-instance v0, Lo/getBonusPoints;

    invoke-direct {v0}, Lo/getBonusPoints;-><init>()V

    iput-object v0, p0, Lo/PayResponse;->extraCallback:Lo/getBonusPoints;

    .line 66
    new-instance v0, Lo/AuthRequestClass;

    invoke-direct {v0}, Lo/AuthRequestClass;-><init>()V

    iput-object v0, p0, Lo/PayResponse;->onPostMessage:Lo/AuthRequestClass;

    .line 67
    new-instance v0, Lo/AuthRequestClass;

    invoke-direct {v0}, Lo/AuthRequestClass;-><init>()V

    iput-object v0, p0, Lo/PayResponse;->onTransact:Lo/AuthRequestClass;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 68
    iput-object v1, p0, Lo/PayResponse;->onRelationshipValidationResult:[F

    new-array v0, v0, [F

    .line 69
    iput-object v0, p0, Lo/PayResponse;->asBinder:[F

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lo/PayResponse;->getInterfaceDescriptor:I

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lo/PayResponse;->ICustomTabsService:I

    return-void
.end method

.method private extraCallback([BIJ)V
    .locals 2

    .line 173
    iget-object v0, p0, Lo/PayResponse;->ICustomTabsCallback$Stub$Proxy:[B

    .line 174
    iget v1, p0, Lo/PayResponse;->ICustomTabsService:I

    .line 175
    iput-object p1, p0, Lo/PayResponse;->ICustomTabsCallback$Stub$Proxy:[B

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 176
    iget p2, p0, Lo/PayResponse;->getInterfaceDescriptor:I

    :cond_0
    iput p2, p0, Lo/PayResponse;->ICustomTabsService:I

    if-ne v1, p2, :cond_1

    .line 177
    iget-object p1, p0, Lo/PayResponse;->ICustomTabsCallback$Stub$Proxy:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 182
    iget-object p2, p0, Lo/PayResponse;->ICustomTabsCallback$Stub$Proxy:[B

    if-eqz p2, :cond_2

    .line 183
    iget p1, p0, Lo/PayResponse;->ICustomTabsService:I

    invoke-static {p2, p1}, Lo/StatementResponse$RewardDetails$BonusPoints;->onMessageChannelReady([BI)Lo/getRewardPoints;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 186
    invoke-static {p1}, Lo/PayRequest;->onMessageChannelReady(Lo/getRewardPoints;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    iget p1, p0, Lo/PayResponse;->ICustomTabsService:I

    .line 188
    invoke-static {p1}, Lo/getRewardPoints;->ICustomTabsCallback(I)Lo/getRewardPoints;

    move-result-object p1

    .line 189
    :goto_0
    iget-object p2, p0, Lo/PayResponse;->onTransact:Lo/AuthRequestClass;

    invoke-virtual {p2, p3, p4, p1}, Lo/AuthRequestClass;->onNavigationEvent(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/graphics/SurfaceTexture;
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 89
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 90
    invoke-static {}, Lo/DecoderException;->onNavigationEvent()V

    .line 92
    iget-object v0, p0, Lo/PayResponse;->ICustomTabsCallback:Lo/PayRequest;

    invoke-virtual {v0}, Lo/PayRequest;->ICustomTabsCallback()V

    .line 93
    invoke-static {}, Lo/DecoderException;->onNavigationEvent()V

    .line 95
    invoke-static {}, Lo/DecoderException;->onMessageChannelReady()I

    move-result v0

    iput v0, p0, Lo/PayResponse;->asInterface:I

    .line 96
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lo/PayResponse;->asInterface:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lo/PayResponse;->ICustomTabsCallback$Stub:Landroid/graphics/SurfaceTexture;

    .line 97
    new-instance v1, Lo/PaymentCta;

    invoke-direct {v1, p0}, Lo/PaymentCta;-><init>(Lo/PayResponse;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 98
    iget-object v0, p0, Lo/PayResponse;->ICustomTabsCallback$Stub:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public final onMessageChannelReady([FZ)V
    .locals 8

    const/16 v0, 0x4000

    .line 111
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 112
    invoke-static {}, Lo/DecoderException;->onNavigationEvent()V

    .line 114
    iget-object v0, p0, Lo/PayResponse;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lo/PayResponse;->ICustomTabsCallback$Stub:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 116
    invoke-static {}, Lo/DecoderException;->onNavigationEvent()V

    .line 117
    iget-object v0, p0, Lo/PayResponse;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lo/PayResponse;->onRelationshipValidationResult:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 120
    :cond_0
    iget-object v0, p0, Lo/PayResponse;->ICustomTabsCallback$Stub:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 121
    iget-object v2, p0, Lo/PayResponse;->onPostMessage:Lo/AuthRequestClass;

    invoke-virtual {v2, v0, v1}, Lo/AuthRequestClass;->onMessageChannelReady(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 123
    iget-object v3, p0, Lo/PayResponse;->extraCallback:Lo/getBonusPoints;

    iget-object v4, p0, Lo/PayResponse;->onRelationshipValidationResult:[F

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lo/getBonusPoints;->onPostMessage([FJ)Z

    .line 125
    :cond_1
    iget-object v2, p0, Lo/PayResponse;->onTransact:Lo/AuthRequestClass;

    invoke-virtual {v2, v0, v1}, Lo/AuthRequestClass;->ICustomTabsCallback(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getRewardPoints;

    if-eqz v0, :cond_2

    .line 127
    iget-object v1, p0, Lo/PayResponse;->ICustomTabsCallback:Lo/PayRequest;

    invoke-virtual {v1, v0}, Lo/PayRequest;->onPostMessage(Lo/getRewardPoints;)V

    .line 130
    :cond_2
    iget-object v2, p0, Lo/PayResponse;->asBinder:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lo/PayResponse;->onRelationshipValidationResult:[F

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 131
    iget-object p1, p0, Lo/PayResponse;->ICustomTabsCallback:Lo/PayRequest;

    iget v0, p0, Lo/PayResponse;->asInterface:I

    iget-object v1, p0, Lo/PayResponse;->asBinder:[F

    invoke-virtual {p1, v0, v1, p2}, Lo/PayRequest;->extraCallback(I[FZ)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 159
    iget-object v0, p0, Lo/PayResponse;->onPostMessage:Lo/AuthRequestClass;

    invoke-virtual {v0}, Lo/AuthRequestClass;->extraCallback()V

    .line 160
    iget-object v0, p0, Lo/PayResponse;->extraCallback:Lo/getBonusPoints;

    invoke-virtual {v0}, Lo/getBonusPoints;->ICustomTabsCallback()V

    .line 161
    iget-object v0, p0, Lo/PayResponse;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 0

    .line 81
    iput p1, p0, Lo/PayResponse;->getInterfaceDescriptor:I

    return-void
.end method

.method public final onNavigationEvent(J[F)V
    .locals 1

    .line 154
    iget-object v0, p0, Lo/PayResponse;->extraCallback:Lo/getBonusPoints;

    invoke-virtual {v0, p1, p2, p3}, Lo/getBonusPoints;->onMessageChannelReady(J[F)V

    return-void
.end method

.method public final onPostMessage(JJLo/p$a;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lo/PayResponse;->onPostMessage:Lo/AuthRequestClass;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p3, p4, p1}, Lo/AuthRequestClass;->onNavigationEvent(JLjava/lang/Object;)V

    .line 147
    iget-object p1, p5, Lo/p$a;->mayLaunchUrl:[B

    iget p2, p5, Lo/p$a;->requestPostMessageChannel:I

    invoke-direct {p0, p1, p2, p3, p4}, Lo/PayResponse;->extraCallback([BIJ)V

    return-void
.end method

.method final synthetic onPostMessage(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lo/PayResponse;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
