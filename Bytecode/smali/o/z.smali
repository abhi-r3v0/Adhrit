.class final Lo/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:I

.field private final onPostMessage:Lo/w$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/w$onMessageChannelReady;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/z;->onPostMessage:Lo/w$onMessageChannelReady;

    iput p2, p0, Lo/z;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/z;->onPostMessage:Lo/w$onMessageChannelReady;

    iget v1, p0, Lo/z;->ICustomTabsCallback:I

    .line 1000
    invoke-virtual {v0, v1}, Lo/w$onMessageChannelReady;->extraCallback(I)V

    return-void
.end method
