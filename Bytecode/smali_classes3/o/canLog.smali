.class public final Lo/canLog;
.super Ljava/lang/Object;

# interfaces
.implements Lo/notifyEventReceivers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/notifyEventReceivers<",
        "Lo/MissingNativeComponent;",
        ">;"
    }
.end annotation


# instance fields
.field private final onPostMessage:Lo/notifyEventReceivers;
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

    iput-object p1, p0, Lo/canLog;->onPostMessage:Lo/notifyEventReceivers;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/canLog;->onPostMessage:Lo/notifyEventReceivers;

    invoke-interface {v0}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    new-instance v0, Lo/MissingNativeComponent;

    invoke-direct {v0}, Lo/MissingNativeComponent;-><init>()V

    return-object v0
.end method
