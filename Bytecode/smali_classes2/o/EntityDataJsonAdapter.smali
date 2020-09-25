.class final Lo/EntityDataJsonAdapter;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/EntityJsonAdapter;


# direct methods
.method constructor <init>(Lo/EntityJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/EntityDataJsonAdapter;->onMessageChannelReady:Lo/EntityJsonAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lo/EntityDataJsonAdapter;->onMessageChannelReady:Lo/EntityJsonAdapter;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lo/EntityJsonAdapter;->ICustomTabsCallback(I)V

    return-void
.end method
