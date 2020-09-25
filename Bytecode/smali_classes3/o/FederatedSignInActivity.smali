.class public final Lo/FederatedSignInActivity;
.super Ljava/lang/Object;

# interfaces
.implements Lo/notifyEventReceivers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/notifyEventReceivers<",
        "Lo/getProvidedInterfaces;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/toGraph;",
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
            "Lo/toGraph;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/FederatedSignInActivity;->ICustomTabsCallback:Lo/notifyEventReceivers;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo/FederatedSignInActivity;->ICustomTabsCallback:Lo/notifyEventReceivers;

    .line 1000
    instance-of v1, v0, Lo/setBreadcrumbEventReceiver;

    if-eqz v1, :cond_0

    check-cast v0, Lo/setBreadcrumbEventReceiver;

    goto :goto_0

    :cond_0
    new-instance v1, Lo/setCrashlyticsOriginEventReceiver;

    invoke-direct {v1, v0}, Lo/setCrashlyticsOriginEventReceiver;-><init>(Lo/notifyEventReceivers;)V

    move-object v0, v1

    :goto_0
    new-instance v1, Lo/getProvidedInterfaces;

    invoke-direct {v1, v0}, Lo/getProvidedInterfaces;-><init>(Lo/setBreadcrumbEventReceiver;)V

    return-object v1
.end method
