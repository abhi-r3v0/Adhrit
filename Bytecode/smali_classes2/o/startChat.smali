.class final Lo/startChat;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/refundAccountDataUpdated;

.field private final synthetic onPostMessage:Lo/hideNavigationBar;


# direct methods
.method constructor <init>(Lo/refundAccountDataUpdated;Lo/hideNavigationBar;)V
    .locals 0

    iput-object p1, p0, Lo/startChat;->onMessageChannelReady:Lo/refundAccountDataUpdated;

    iput-object p2, p0, Lo/startChat;->onPostMessage:Lo/hideNavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/startChat;->onMessageChannelReady:Lo/refundAccountDataUpdated;

    iget-object v1, p0, Lo/startChat;->onPostMessage:Lo/hideNavigationBar;

    invoke-static {v0, v1}, Lo/refundAccountDataUpdated;->ICustomTabsCallback(Lo/refundAccountDataUpdated;Lo/hideNavigationBar;)V

    return-void
.end method
