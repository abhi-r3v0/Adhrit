.class final Lo/Email;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onNavigationEvent:Lo/EmailJsonAdapter;


# direct methods
.method constructor <init>(Lo/EmailJsonAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/Email;->onNavigationEvent:Lo/EmailJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lo/Email;->onNavigationEvent:Lo/EmailJsonAdapter;

    iget-object v0, v0, Lo/EmailJsonAdapter;->ICustomTabsCallback:Lo/getAmount_refunded$onMessageChannelReady;

    invoke-static {v0}, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback(Lo/getAmount_refunded$onMessageChannelReady;)Lo/setCustomAmount$ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-interface {v0}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->disconnect()V

    return-void
.end method
