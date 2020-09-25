.class public final Lo/alwaysEager;
.super Ljava/lang/Object;

# interfaces
.implements Lo/notifyEventReceivers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/notifyEventReceivers<",
        "Lo/findFirstReferenceChild$extraCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/onVerificationFailed;",
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
            "Lo/onVerificationFailed;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/alwaysEager;->ICustomTabsCallback:Lo/notifyEventReceivers;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo/alwaysEager;->ICustomTabsCallback:Lo/notifyEventReceivers;

    invoke-interface {v0}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lo/findFirstReferenceChild$extraCallback;

    check-cast v0, Lo/onVerificationFailed;

    invoke-direct {v1, v0}, Lo/findFirstReferenceChild$extraCallback;-><init>(Lo/onVerificationFailed;)V

    return-object v1
.end method
