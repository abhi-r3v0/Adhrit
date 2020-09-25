.class final Lo/ItemJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/Item;


# direct methods
.method constructor <init>(Lo/Item;)V
    .locals 0

    iput-object p1, p0, Lo/ItemJsonAdapter;->extraCallback:Lo/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/ItemJsonAdapter;->extraCallback:Lo/Item;

    invoke-static {v0}, Lo/Item;->onMessageChannelReady(Lo/Item;)Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/DeviceAttrResponse;->onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    return-void
.end method
