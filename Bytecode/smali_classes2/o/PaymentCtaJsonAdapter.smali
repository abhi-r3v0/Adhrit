.class final Lo/PaymentCtaJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lo/Payment;

.field private final onPostMessage:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Lo/Payment;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/PaymentCtaJsonAdapter;->ICustomTabsCallback:Lo/Payment;

    iput-object p2, p0, Lo/PaymentCtaJsonAdapter;->onPostMessage:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/PaymentCtaJsonAdapter;->ICustomTabsCallback:Lo/Payment;

    iget-object v1, p0, Lo/PaymentCtaJsonAdapter;->onPostMessage:Landroid/graphics/SurfaceTexture;

    .line 1000
    invoke-virtual {v0, v1}, Lo/Payment;->onMessageChannelReady(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
