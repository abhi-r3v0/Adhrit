.class public final Lo/getCreationTimestamp;
.super Ljava/lang/Object;

# interfaces
.implements Lo/notifyEventReceivers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/notifyEventReceivers<",
        "Lo/getAuthTimestamp;",
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

.field private final onPostMessage:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/findReferenceChild$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/notifyEventReceivers;Lo/notifyEventReceivers;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/notifyEventReceivers<",
            "Landroid/content/Context;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/findReferenceChild$onMessageChannelReady;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getCreationTimestamp;->onMessageChannelReady:Lo/notifyEventReceivers;

    iput-object p2, p0, Lo/getCreationTimestamp;->onPostMessage:Lo/notifyEventReceivers;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lo/getCreationTimestamp;->onMessageChannelReady:Lo/notifyEventReceivers;

    check-cast v0, Lo/sendEmailVerification;

    .line 1000
    iget-object v0, v0, Lo/sendEmailVerification;->extraCallback:Lo/getMultiFactor;

    .line 2000
    iget-object v0, v0, Lo/getMultiFactor;->extraCallback:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3000
    iget-object v1, p0, Lo/getCreationTimestamp;->onPostMessage:Lo/notifyEventReceivers;

    invoke-interface {v1}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lo/getAuthTimestamp;

    check-cast v1, Lo/findReferenceChild$onMessageChannelReady;

    invoke-direct {v2, v0, v1}, Lo/getAuthTimestamp;-><init>(Landroid/content/Context;Lo/findReferenceChild$onMessageChannelReady;)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
