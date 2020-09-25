.class public final Lo/recycleViewHolderInternal;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onNavigationEvent:Lcom/dreamplug/network/internals/LiveCallbackWrapper;

.field private final onPostMessage:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/dreamplug/network/internals/LiveCallbackWrapper;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/recycleViewHolderInternal;->onNavigationEvent:Lcom/dreamplug/network/internals/LiveCallbackWrapper;

    iput-object p2, p0, Lo/recycleViewHolderInternal;->onPostMessage:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/recycleViewHolderInternal;->onNavigationEvent:Lcom/dreamplug/network/internals/LiveCallbackWrapper;

    iget-object v1, p0, Lo/recycleViewHolderInternal;->onPostMessage:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/dreamplug/network/internals/LiveCallbackWrapper;->onNavigationEvent(Lcom/dreamplug/network/internals/LiveCallbackWrapper;Ljava/lang/Object;)V

    return-void
.end method
