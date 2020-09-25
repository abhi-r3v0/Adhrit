.class public final Lo/publishes;
.super Ljava/lang/Object;

# interfaces
.implements Lo/notifyEventReceivers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/notifyEventReceivers<",
        "Lo/lambda$of$1;",
        ">;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/notifyEventReceivers;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/notifyEventReceivers<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/publishes;->onMessageChannelReady:Lo/notifyEventReceivers;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo/publishes;->onMessageChannelReady:Lo/notifyEventReceivers;

    check-cast v0, Lo/validateDependencies;

    .line 1000
    iget-object v0, v0, Lo/validateDependencies;->extraCallback:Lo/setOfProvider;

    .line 3000
    iget-object v0, v0, Lo/setOfProvider;->onMessageChannelReady:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2000
    new-instance v1, Lo/lambda$of$1;

    invoke-direct {v1, v0}, Lo/lambda$of$1;-><init>(Landroid/content/Context;)V

    return-object v1

    .line 4000
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
