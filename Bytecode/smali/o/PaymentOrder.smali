.class final Lo/PaymentOrder;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onPostMessage:Lo/PayCallResponseJsonAdapter$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/PayCallResponseJsonAdapter$onMessageChannelReady;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/PaymentOrder;->onPostMessage:Lo/PayCallResponseJsonAdapter$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/PaymentOrder;->onPostMessage:Lo/PayCallResponseJsonAdapter$onMessageChannelReady;

    invoke-interface {v0}, Lo/PayCallResponseJsonAdapter$onMessageChannelReady;->asBinder()V

    return-void
.end method
