.class public final Lo/updateEmail;
.super Ljava/lang/Object;

# interfaces
.implements Lo/notifyEventReceivers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/notifyEventReceivers<",
        "Lo/unlink;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/getAuthTimestamp;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/startActivityForLinkWithProvider;",
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
            "Lo/getAuthTimestamp;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/startActivityForLinkWithProvider;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/updateEmail;->ICustomTabsCallback:Lo/notifyEventReceivers;

    iput-object p2, p0, Lo/updateEmail;->onNavigationEvent:Lo/notifyEventReceivers;

    iput-object p3, p0, Lo/updateEmail;->extraCallback:Lo/notifyEventReceivers;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lo/updateEmail;->ICustomTabsCallback:Lo/notifyEventReceivers;

    invoke-interface {v0}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo/updateEmail;->onNavigationEvent:Lo/notifyEventReceivers;

    invoke-interface {v1}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/startActivityForLinkWithProvider;

    iget-object v2, p0, Lo/updateEmail;->extraCallback:Lo/notifyEventReceivers;

    check-cast v2, Lo/sendEmailVerification;

    .line 1000
    iget-object v2, v2, Lo/sendEmailVerification;->extraCallback:Lo/getMultiFactor;

    .line 2000
    iget-object v2, v2, Lo/getMultiFactor;->extraCallback:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 1000
    new-instance v3, Lo/unlink;

    check-cast v0, Lo/getAuthTimestamp;

    invoke-direct {v3, v0, v1, v2}, Lo/unlink;-><init>(Lo/getAuthTimestamp;Lo/startActivityForLinkWithProvider;Landroid/content/Context;)V

    return-object v3

    .line 3000
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
