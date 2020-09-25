.class public final Lo/intoSetBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lo/notifyEventReceivers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/notifyEventReceivers<",
        "Lo/recycleViewsFromStart$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/resolveIsInfinite$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/onVerificationFailed;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/getProvidedInterfaces;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/notifyEventReceivers<",
            "Lo/resolveIsInfinite$onPostMessage;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/onVerificationFailed;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/getProvidedInterfaces;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/intoSetBuilder;->ICustomTabsCallback:Lo/notifyEventReceivers;

    iput-object p2, p0, Lo/intoSetBuilder;->extraCallback:Lo/notifyEventReceivers;

    iput-object p3, p0, Lo/intoSetBuilder;->onNavigationEvent:Lo/notifyEventReceivers;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lo/intoSetBuilder;->ICustomTabsCallback:Lo/notifyEventReceivers;

    invoke-interface {v0}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo/intoSetBuilder;->extraCallback:Lo/notifyEventReceivers;

    invoke-interface {v1}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lo/intoSetBuilder;->onNavigationEvent:Lo/notifyEventReceivers;

    invoke-interface {v2}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lo/recycleViewsFromStart$ICustomTabsCallback;

    check-cast v0, Lo/resolveIsInfinite$onPostMessage;

    check-cast v1, Lo/onVerificationFailed;

    check-cast v2, Lo/getProvidedInterfaces;

    invoke-direct {v3, v0, v1, v2}, Lo/recycleViewsFromStart$ICustomTabsCallback;-><init>(Lo/resolveIsInfinite$onPostMessage;Lo/onVerificationFailed;Lo/getProvidedInterfaces;)V

    return-object v3
.end method
