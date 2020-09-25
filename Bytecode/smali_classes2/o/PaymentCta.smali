.class final Lo/PaymentCta;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private final onMessageChannelReady:Lo/PayResponse;


# direct methods
.method public constructor <init>(Lo/PayResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/PaymentCta;->onMessageChannelReady:Lo/PayResponse;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lo/PaymentCta;->onMessageChannelReady:Lo/PayResponse;

    .line 1000
    invoke-virtual {v0, p1}, Lo/PayResponse;->onPostMessage(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
